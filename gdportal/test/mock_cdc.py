# Mock CDC portal server: emulates detect page + ZSM plugin push + ticket/auth/keep/term.
# Validates the gdportal CdcClient re-implementation end-to-end (bootstrap placeholder mode).
import hashlib, json, time, re
from http.server import BaseHTTPRequestHandler, HTTPServer

STATE = {"ticket": "T-%d" % int(time.time()), "authed": False, "keep_count": 0,
         "plugin_sent": False, "last_auth_body": None}

def cfg_block(port):
    base = f"http://127.0.0.1:{port}"
    return ("<config>"
            f"<ticket-url><![CDATA[{base}/ticket?wlanacip=1.2.3.4&wlanuserip=172.17.1.2]]></ticket-url>"
            f"<auth-url><![CDATA[{base}/auth]]></auth-url>"
            f"<state-url><![CDATA[{base}/state]]></state-url>"
            f"<query-url><![CDATA[{base}/query]]></query-url>"
            "<schoolID>1092</schoolID><domain>gd.gd</domain><area>GD-GZ</area>"
            "<account>" + json.dumps({"modify": [{"type": "add-domain", "value": "gd.gd"}]}) + "</account>"
            "<funcfg>"
            "<Vpn enable=\"0\"/>"
            "<CheckNetRegularly enable=\"1\" periodTime=\"5000\" maxCount=\"3\"/>"
            "</funcfg>"
            "</config>")

# fake ZSM plugin container: [3 tag][1 keylen][key][1 aidlen][aid][5 props][u32 size|type<<28][payload]
import struct
def fake_plugin():
    key = b"mockkey"; aid = b"11111111-2222-3333-4444-555555555555"
    return b"ZSM" + bytes([len(key)]) + key + bytes([len(aid)]) + aid + b"\x00" * 5 + struct.pack("<I", 1 << 28) + b"\x00" * 4

class H(BaseHTTPRequestHandler):
    def log_message(self, *a): pass

    def _send(self, code, body=b"", headers=None, ctype="text/plain; charset=utf-8"):
        self.send_response(code)
        self.send_header("Content-Type", ctype)
        for k, v in (headers or {}).items(): self.send_header(k, v)
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        if self.detect_page(): return
        self._send(404)

    def detect_page(self):
        if self.path.startswith("/detect"):
            port = self.server.server_address[1]
            html = ("<html><head></head><body>" + cfg_block(port) + "</body></html>")
            # original format: raw <config> between comment markers, & escaped
            cfg = cfg_block(port).replace("&", "&amp;")
            html = ("<!--//config.campus.js.chinatelecom.com" + cfg
                    + "//config.campus.js.chinatelecom.com-->"
                    + "<html>campus</html>")
            self._send(200, html.encode(), {"schoolID": "1092", "domain": "gd.gd", "area": "GD-GZ"},
                       "text/html")
            return True
        return False

    def do_POST(self):
        n = int(self.headers.get("Content-Length", 0))
        body = self.rfile.read(n)
        algo = self.headers.get("Algo-ID", "")
        cdc = self.headers.get("CDC-Checksum", "")
        # verify checksum header matches md5(body) like the real client sends
        assert cdc == hashlib.md5(body).hexdigest(), "bad CDC-Checksum"
        port = self.server.server_address[1]

        if self.path == "/auth" and not STATE["plugin_sent"]:
            # first auth attempt: demand ZSM plugin (Error-Code:200, body=plugin blob)
            STATE["plugin_sent"] = True
            self._send(200, fake_plugin(), {"Error-Code": "200"})
            return

        if self.path == "/ticket":
            self._send(200, ("<response><ticket>" + STATE["ticket"] +
                             "</ticket><expire>3600</expire></response>").encode(),
                       {"Error-Code": "0"})
            return
        if self.path == "/auth":
            STATE["last_auth_body"] = body
            STATE["authed"] = True
            self._send(200, ("<response><userid>testuser@gd.gd</userid>"
                             f"<keep-url>http://127.0.0.1:{port}/keep</keep-url>"
                             f"<term-url>http://127.0.0.1:{port}/term</term-url>"
                             "<keep-interval>60</keep-interval>"
                             "<portal-state>2</portal-state></response>").encode(),
                       {"Error-Code": "0"})
            return
        if self.path == "/keep":
            STATE["keep_count"] += 1
            self._send(200, "<response><interval>60</interval></response>".encode(),
                       {"Error-Code": "0"})
            return
        if self.path == "/state":
            self._send(200, "<response><portal-state>2</portal-state></response>".encode(),
                       {"Error-Code": "0"})
            return
        if self.path == "/query":
            self._send(200, ("<response><client><ticket>" + STATE["ticket"] +
                             "</ticket><ip>10.0.0.5</ip></client>"
                             "<client><ticket>OTHER</ticket><ip>10.0.0.9</ip></client>"
                             "</response>").encode(), {"Error-Code": "0"})
            return
        if self.path == "/term":
            STATE["authed"] = False
            self._send(200, "<response></response>".encode(), {"Error-Code": "0"})
            return
        self._send(404)

if __name__ == "__main__":
    import sys
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 8099
    srv = HTTPServer(("127.0.0.1", port), H)
    print(f"mock cdc on {port}", flush=True)
    srv.serve_forever()
