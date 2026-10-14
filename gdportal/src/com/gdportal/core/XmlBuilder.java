package com.gdportal.core;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Builds the CDC portal request XML, mirroring CdcProtocol.CdcRequest:
 *   <?xml version="1.0" encoding="UTF-8"?><request><k>v</k>...</request>
 * Field order matters only for fidelity; the server is a tolerant XML parser.
 */
public final class XmlBuilder {
    private final StringBuilder sb = new StringBuilder(1024);

    public XmlBuilder() {
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?><request>");
    }

    public XmlBuilder item(String key, String value) {
        sb.append('<').append(key).append('>')
          .append(value == null ? "" : value)
          .append("</").append(key).append('>');
        return this;
    }

    /** Common header block: user-agent / client-id / local-time (CdcRequest ctor). */
    public static XmlBuilder base(CdcClient.Env env) {
        return new XmlBuilder()
                .item("user-agent", env.userAgent)
                .item("client-id", env.clientId)
                .item("local-time", env.nowString());
    }

    public String xml() {
        return sb + "</request>";
    }

    public byte[] bytes() {
        try { return xml().getBytes("UTF-8"); }
        catch (Exception e) { throw new RuntimeException(e); }
    }

    /** Convenience: build from an ordered map appended after base(). */
    public static byte[] of(CdcClient.Env env, Map<String, String> items) {
        XmlBuilder b = base(env);
        for (Map.Entry<String, String> e : items.entrySet()) b.item(e.getKey(), e.getValue());
        return b.bytes();
    }

    public static Map<String, String> map(String... kv) {
        LinkedHashMap<String, String> m = new LinkedHashMap<>();
        for (int i = 0; i + 1 < kv.length; i += 2) m.put(kv[i], kv[i + 1]);
        return m;
    }
}
