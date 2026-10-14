(window["webpackJsonp"] = window["webpackJsonp"] || []).push([
  ["pages-aboutMessage-aboutMessage~pages-appMore-appMore~pages-customerService-customerService~pages-in~34df5070"], {
    "078a": function(t, e, n) {
      var i = n("96c1"),
        r = n("844f");
      t.exports = function(t, e) {
        var n, o, a, s;
        return n = function(t) {
          var e = i.copyOptions(t);
          return i.ensureSpacesExists(e), e
        }(e), o = r(t, n), s = "compact" in n && n.compact ? "_parent" : "parent", a = "addParent" in n && n.addParent ? JSON.stringify(o, (function(t, e) {
          return t === s ? "_" : e
        }), n.spaces) : JSON.stringify(o, null, n.spaces), a.replace(/\u2028/g, "\\u2028").replace(/\u2029/g, "\\u2029")
      }
    },
    "0960": function(t, e, n) {
      t.exports = n("b19a")
    },
    1: function(t, e) {},
    1698: function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.PluginApi = void 0, n("c975");
      var i = uni.requireNativePlugin("PortalMananger"),
        r = e.PluginApi = {
          coolMethod: function(t, e, n) {
            (void 0 == n || void 0 != n && "function" != typeof n) && (n = function() {});
            var r = {
              action: t,
              args: e
            };
            i.coolMethod(r, n)
          }
        };

      function o() {
        uni.addInterceptor("showModal", {
          invoke: function(t) {
            var e = null,
              n = {};
            for (var i in t) {
              var o = t[i];
              void 0 != o && ("function" == typeof o ? e = o : n[i] = o)
            }
            return r.coolMethod("showModal", [n], (function(t) {
              e && e(t)
            })), !1
          }
        }), uni.addInterceptor("showToast", {
          invoke: function(t) {
            return r.coolMethod("showToast", [t]), !1
          }
        }), uni.addInterceptor("showLoading", {
          invoke: function(t) {
            return r.coolMethod("showLoading", [t]), !1
          }
        }), uni.addInterceptor("hideLoading", {
          invoke: function(t) {
            return r.coolMethod("hideLoading", []), !1
          }
        })
      }
      uni.addInterceptor("request", {
        invoke: function(t) {
          return !0
        }
      }), getApp().globalData.phoneType ? "android" === getApp().globalData.phoneType.toLowerCase() ? o() : uni.addInterceptor("showToast", {
        invoke: function(t) {
          t.position = "bottom"
        }
      }) : uni.getSystemInfo({
        success: function(t) {
          "android" == t.osName ? o() : uni.addInterceptor("showToast", {
            invoke: function(t) {
              t.position = "bottom"
            }
          })
        }
      })
    },
    1852: function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.$code = void 0;
      e.$code = {
        200105: "正在检测网络...",
        200107: "正在检查wifi开关...",
        200108: "正在检查是否连接了wifi...",
        200109: "正在检查wifi信号...",
        200110: "正在获取ip地址...",
        200111: "正在获取网络配置...",
        200112: "网络不通，请检查本机ip、网关、DNS是否正确。（错误码：200112）",
        200113: "加密失败。（错误码：200113）",
        200114: "解密失败。（错误码：200114）",
        200115: "解析配置信息出错。（错误码：200115）",
        200117: "网络已断开。可能原因：网络超时，请重新登录。（错误码：200117）",
        200118: "网络已断开，可能的原因：网络状态异常或账号已在别处登录。（错误码：200118）",
        200119: "网络已断开，可能的原因：检测到USB、模拟器或蓝牙网络共享冲突，请关闭对应的网络共享后重新登录。（错误码：200119）",
        200120: "因安卓9.0及以上系统限制，需将手机“位置服务”设置为开启状态，才能使用拨号服务。（错误码：200120）",
        200121: "网络已断开，可能的原因：VPN服务被杀，请重新登录。（错误码：200121）",
        200122: "网络已断开，可能的原因：检测到其它VPN应用与客户端冲突，请关闭其它VPN应用，然后重新登录。（错误码：200122）",
        200123: "请将VPN连接设置为允许。（错误码：200123）",
        200124: "网络已断开，VPN创建失败，请重新登录。（错误码：200124）",
        200125: "VPN服务正忙，请稍后重试。（错误码：200125）",
        200126: "请在设置中勾选正确VPN连接设置。（错误码：200126）",
        200127: "检测到与%s共享软件冲突，受软件干扰网络已断开，请卸载共享软件后再重新连接。（错误码：200127）",
        200104: {
          btnText: "点我登录",
          infoMessage: "已连接校园WiFi"
        },
        200100: {
          name: "unOpenWifi",
          btnText: "打开校园WiFi",
          infoTitle: "请先打开WiFi开关"
        },
        200101: {
          name: "unConnectWifi",
          btnText: "打开校园WiFi",
          infoTitle: "未连接校园WiFi"
        },
        200102: {
          name: "failConnectWifi",
          btnText: "切换校园WiFi",
          infoMessage: "当前网络已经可以上网，如需连接校园网，可尝试关闭手机数据或重新连接校园WiFi再打开客户端拨号。"
        },
        200103: {
          name: "weakWifi",
          btnText: "切换校园WiFi",
          infoMessage: "WiFi信号弱，可能会影响上网速度"
        },
        200128: {
          name: "failConnectWifi",
          btnText: "切换校园WiFi",
          infoMessage: "当前网络已经可以上网。"
        },
        300108: "网络不稳定，获取配置失败，请重新检测或重新连接WiFi。（错误码：错误码：300108）",
        300308: "无法连接客户端服务器，请检查您的网络连接，并稍后重新连接。（错误码：300308）",
        300309: "配置文件被损坏，请卸载后重新安装客户端。（错误码：300309）",
        200203: "正在登录中...",
        200201: "断开网络",
        "140XXX": "=================================前置portal返回的错误码================================================",
        14e4: "无错误。（错误码：140000）",
        140001: "无效的请求。（错误码：140001）",
        140002: "客户端版本不正确，请到官网下载最新版本试试吧。（错误码：140002）",
        140003: "您使用的客户端版本已被停用，请到官网下载最新版本。（错误码：403）",
        140010: "客户端IP地址不正确，请检查接入的网络是否正确，如使用了路由器请关闭DHCP后接入。（错误码：140010）",
        140011: "无效的客户端MAC地址。（错误码：140011）",
        140012: "客户端ID已失效，请到官网下载最新版本。（错误码：140012）",
        140013: "算法ID已失效，请到官网下载最新版本。（错误码：140013）",
        140014: "登录校验失败，请稍后重试。（错误码：140014）",
        140014.1: "正在发送认证请求（错误码：1）",
        140014.2: "认证成功（错误码：2）",
        140014.3: "请求认证失败，请稍后再试。（错误码：3）",
        140014.5: "网络已断开，可能原因：网络状态异常，请稍后再试。（错误码：5）",
        140014.6: "账号已下线。（错误码：6）",
        140014.7: "账号已下线。（错误码：7）",
        140014.8: "用户账号受限。（错误码：8）",
        140014.9: "校验值错误。（错误码：9）",
        "140014.10": "检测到共享冲突，受此干扰网络已断开，请关闭共享后重启客户端再连接。（错误码：10）",
        140014.99: "客户端服务异常，请检查您的网络连接，并尝试重新连接。（错误码：99）",
        140015: "校验值错误。（错误码：140015）",
        140100: "账号或密码错误，请重新输入。（错误码：140100）",
        140101: "无效的挑战值。（错误码：140101）",
        140102: "认证请求被拒绝，请稍后再试。（错误码：201）",
        140103: "网关可容纳的接入数已满。（错误码：140103）",
        140104: "对应的用户不存在。（错误码：140104）",
        140105: "用户账号受限。（错误码：140105）",
        140200: "客户端密钥已过期，请到官网下载最新版本。（错误码：140200）",
        140300: "正在等待终端发起认证。（错误码：140300）",
        140301: "正在等待服务端进行验证。（错误码：140301）",
        140901: "连接数据库服务器失败，请检查您的网络连接，并尝试重新连接。（错误码：301）",
        140902: "连接前置服务器失败，请检查您的网络连接，并尝试重新连接。（错误码：302）",
        140990: "连接客户端服务器失败，请检查您的网络连接，并尝试重新连接。（错误码：303）",
        "140102.XX": "=================================3A返回的错误码提示================================================",
        140102.1: "认证请求被拒绝（错误码：1）",
        140102.2: "您已在客户端登录了此账号，不能重复登录（错误码：2）",
        140102.3: "认证服务器忙，请稍后再试（错误码：3）",
        140102.4: "认证失败，请检查网络后重试（错误码：4）",
        "140102.11010000": "找不到SDX信息，请咨询校园网络端口是否已开通。（错误码：11010000）",
        "140102.13001000": "认证请求被拒绝。（错误码：13001000）",
        "140102.13003000": "认证服务器忙，请稍后再试。（错误码：13003000）",
        "140102.13004000": "登录失败，可能的原因：1、账号或密码错误；2、账号欠费；3、账号状态异常。（错误码：13004000）",
        "140102.13005000": "请求认证超时，请检查网络后重试。（错误码：13005000）",
        "140102.13012000": "账号或密码错误。（错误码：13012000）",
        "140102.13016000": "输入的帐号不存在，帐号无需加@后缀。（错误码：13016000）",
        "140102.13017000": "账号欠费，请及时充值。（错误码：13017000）",
        "140102.13014000": "终端数超出限制，请先退出其他已登录终端。（错误码：13014000）",
        "140102.13015000": "账户余额不足。（错误码：13015000）",
        "140102.13018000": "拨号类型错误，该账号不支持portal认证。（错误码：13018000）",
        "140102.13019000": "终端类型错误，该账号不支持此终端类型拨号。（错误码：13019000）",
        "140102.13020000": "体验活动已结束。（错误码：13020000）",
        "140102.13021000": "体验账号已过期。（错误码：13021000）",
        "140102.13022000": "今日体验时长已用完，请明天再试。（错误码：13022000）",
        "140102.11064000": "帐号登录过于频繁，请30分钟后重新登录，请勿频繁登录。（错误码：11064000）",
        "140102.11060000": "请重新获取验证码（错误码：11060000）",
        "140102.11062000": "请输入验证码（错误码：11062000）",
        "140102.11063000": "验证码错误，请重新输入。（错误码：1063000）",
        "140102.-600": "检测到网络共享行为，账号被限制登录。请咨询学校运维人员。（错误码：-600）"
      }
    },
    1983: function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.InitCode = e.GetProcCode = e.GetErrorCode = e.$code = void 0, n("c975"), n("ac1f"), n("5319");
      var i = n("1852"),
        r = n("720e"),
        o = (n("c685"), e.$code = {}),
        a = e.InitCode = function() {
          "GD" == getApp().globalData.province ? e.$code = o = i.$code : "AH" == getApp().globalData.province && (e.$code = o = r.$code)
        };
      e.GetProcCode = function(t, e, n) {
        a();
        var i = t;
        void 0 != e && "" != e && (i = i + "." + e);
        var r = o[i];
        return void 0 == r && (r = o[t], void 0 == r) ? "错误码：" + i : (void 0 != n && "" != n && r.indexOf("%s") > -1 && (r = r.replace("%s", n)), r)
      }, e.GetErrorCode = function(t, e) {
        var n = t;
        return void 0 != e && "" != e && (n = n + "." + e), n
      }
    },
    "1fb5": function(t, e, n) {
      "use strict";
      e.byteLength = function(t) {
        var e = c(t),
          n = e[0],
          i = e[1];
        return 3 * (n + i) / 4 - i
      }, e.toByteArray = function(t) {
        var e, n, i = c(t),
          a = i[0],
          s = i[1],
          u = new o(function(t, e, n) {
            return 3 * (e + n) / 4 - n
          }(0, a, s)),
          l = 0,
          f = s > 0 ? a - 4 : a;
        for (n = 0; n < f; n += 4) e = r[t.charCodeAt(n)] << 18 | r[t.charCodeAt(n + 1)] << 12 | r[t.charCodeAt(n + 2)] << 6 | r[t.charCodeAt(n + 3)], u[l++] = e >> 16 & 255, u[l++] = e >> 8 & 255, u[l++] = 255 & e;
        2 === s && (e = r[t.charCodeAt(n)] << 2 | r[t.charCodeAt(n + 1)] >> 4, u[l++] = 255 & e);
        1 === s && (e = r[t.charCodeAt(n)] << 10 | r[t.charCodeAt(n + 1)] << 4 | r[t.charCodeAt(n + 2)] >> 2, u[l++] = e >> 8 & 255, u[l++] = 255 & e);
        return u
      }, e.fromByteArray = function(t) {
        for (var e, n = t.length, r = n % 3, o = [], a = 0, s = n - r; a < s; a += 16383) o.push(f(t, a, a + 16383 > s ? s : a + 16383));
        1 === r ? (e = t[n - 1], o.push(i[e >> 2] + i[e << 4 & 63] + "==")) : 2 === r && (e = (t[n - 2] << 8) + t[n - 1], o.push(i[e >> 10] + i[e >> 4 & 63] + i[e << 2 & 63] + "="));
        return o.join("")
      };
      for (var i = [], r = [], o = "undefined" !== typeof Uint8Array ? Uint8Array : Array, a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", s = 0, u = a.length; s < u; ++s) i[s] = a[s], r[a.charCodeAt(s)] = s;

      function c(t) {
        var e = t.length;
        if (e % 4 > 0) throw new Error("Invalid string. Length must be a multiple of 4");
        var n = t.indexOf("="); - 1 === n && (n = e);
        var i = n === e ? 0 : 4 - n % 4;
        return [n, i]
      }

      function l(t) {
        return i[t >> 18 & 63] + i[t >> 12 & 63] + i[t >> 6 & 63] + i[63 & t]
      }

      function f(t, e, n) {
        for (var i, r = [], o = e; o < n; o += 3) i = (t[o] << 16 & 16711680) + (t[o + 1] << 8 & 65280) + (255 & t[o + 2]), r.push(l(i));
        return r.join("")
      }
      r["-".charCodeAt(0)] = 62, r["_".charCodeAt(0)] = 63
    },
    2: function(t, e) {},
    "27bf": function(t, e, n) {
      "use strict";
      t.exports = a;
      var i = n("b19a"),
        r = Object.create(n("3a7c"));

      function o(t, e) {
        var n = this._transformState;
        n.transforming = !1;
        var i = n.writecb;
        if (!i) return this.emit("error", new Error("write callback called multiple times"));
        n.writechunk = null, n.writecb = null, null != e && this.push(e), i(t);
        var r = this._readableState;
        r.reading = !1, (r.needReadable || r.length < r.highWaterMark) && this._read(r.highWaterMark)
      }

      function a(t) {
        if (!(this instanceof a)) return new a(t);
        i.call(this, t), this._transformState = {
          afterTransform: o.bind(this),
          needTransform: !1,
          transforming: !1,
          writecb: null,
          writechunk: null,
          writeencoding: null
        }, this._readableState.needReadable = !0, this._readableState.sync = !1, t && ("function" === typeof t.transform && (this._transform = t.transform), "function" === typeof t.flush && (this._flush = t.flush)), this.on("prefinish", s)
      }

      function s() {
        var t = this;
        "function" === typeof this._flush ? this._flush((function(e, n) {
          u(t, e, n)
        })) : u(this, null, null)
      }

      function u(t, e, n) {
        if (e) return t.emit("error", e);
        if (null != n && t.push(n), t._writableState.length) throw new Error("Calling transform done when ws.length != 0");
        if (t._transformState.transforming) throw new Error("Calling transform done when still transforming");
        return t.push(null)
      }
      r.inherits = n("3fb5"), r.inherits(a, i), a.prototype.push = function(t, e) {
        return this._transformState.needTransform = !1, i.prototype.push.call(this, t, e)
      }, a.prototype._transform = function(t, e, n) {
        throw new Error("_transform() is not implemented")
      }, a.prototype._write = function(t, e, n) {
        var i = this._transformState;
        if (i.writecb = n, i.writechunk = t, i.writeencoding = e, !i.transforming) {
          var r = this._readableState;
          (i.needTransform || r.needReadable || r.length < r.highWaterMark) && this._read(r.highWaterMark)
        }
      }, a.prototype._read = function(t) {
        var e = this._transformState;
        null !== e.writechunk && e.writecb && !e.transforming ? (e.transforming = !0, this._transform(e.writechunk, e.writeencoding, e.afterTransform)) : e.needTransform = !0
      }, a.prototype._destroy = function(t, e) {
        var n = this;
        i.prototype._destroy.call(this, t, (function(t) {
          e(t), n.emit("close")
        }))
      }
    },
    "2c63": function(t, e, n) {
      t.exports = n("dc14")
    },
    3171: function(t, e, n) {
      (function(t) {
        (function(e) {
          e.parser = function(t, e) {
            return new o(t, e)
          }, e.SAXParser = o, e.SAXStream = s, e.createStream = function(t, e) {
            return new s(t, e)
          }, e.MAX_BUFFER_LENGTH = 65536;
          var i, r = ["comment", "sgmlDecl", "textNode", "tagName", "doctype", "procInstName", "procInstBody", "entity", "attribName", "attribValue", "cdata", "script"];

          function o(t, n) {
            if (!(this instanceof o)) return new o(t, n);
            (function(t) {
              for (var e = 0, n = r.length; e < n; e++) t[r[e]] = ""
            })(this), this.q = this.c = "", this.bufferCheckPosition = e.MAX_BUFFER_LENGTH, this.opt = n || {}, this.opt.lowercase = this.opt.lowercase || this.opt.lowercasetags, this.looseCase = this.opt.lowercase ? "toLowerCase" : "toUpperCase", this.tags = [], this.closed = this.closedRoot = this.sawRoot = !1, this.tag = this.error = null, this.strict = !!t, this.noscript = !(!t && !this.opt.noscript), this.state = b.BEGIN, this.strictEntities = this.opt.strictEntities, this.ENTITIES = this.strictEntities ? Object.create(e.XML_ENTITIES) : Object.create(e.ENTITIES), this.attribList = [], this.opt.xmlns && (this.ns = Object.create(c)), void 0 === this.opt.unquotedAttributeValues && (this.opt.unquotedAttributeValues = !t), this.trackPosition = !1 !== this.opt.position, this.trackPosition && (this.position = this.line = this.column = 0), w(this, "onready")
          }
          e.EVENTS = ["text", "processinginstruction", "sgmldeclaration", "doctype", "comment", "opentagstart", "attribute", "opentag", "closetag", "opencdata", "cdata", "closecdata", "error", "end", "ready", "script", "opennamespace", "closenamespace"], Object.create || (Object.create = function(t) {
            function e() {}
            e.prototype = t;
            var n = new e;
            return n
          }), Object.keys || (Object.keys = function(t) {
            var e = [];
            for (var n in t) t.hasOwnProperty(n) && e.push(n);
            return e
          }), o.prototype = {
            end: function() {
              _(this)
            },
            write: function(t) {
                if (this.error) throw this.error;
                if (this.closed) return N(this, "Cannot write after close. Assign an onready handler.");
                if (null === t) return _(this);
                "object" === typeof t && (t = t.toString());
                var n = 0,
                  i = "";
                while (1) {
                  if (i = F(t, n++), this.c = i, !i) break;
                  switch (this.trackPosition && (this.position++, "\n" === i ? (this.line++, this.column = 0) : this.column++), this.state) {
                    case b.BEGIN:
                      if (this.state = b.BEGIN_WHITESPACE, "\ufeff" === i) continue;
                      x(this, i);
                      continue;
                    case b.BEGIN_WHITESPACE:
                      x(this, i);
                      continue;
                    case b.TEXT:
                      if (this.sawRoot && !this.closedRoot) {
                        var o = n - 1;
                        while (i && "<" !== i && "&" !== i) i = F(t, n++), i && this.trackPosition && (this.position++, "\n" === i ? (this.line++, this.column = 0) : this.column++);
                        this.textNode += t.substring(o, n - 1)
                      }
                      "<" !== i || this.sawRoot && this.closedRoot && !this.strict ? (p(i) || this.sawRoot && !this.closedRoot || S(this, "Text data outside of root node."), "&" === i ? this.state = b.TEXT_ENTITY : this.textNode += i) : (this.state = b.OPEN_WAKA, this.startTagPosition = this.position);
                      continue;
                    case b.SCRIPT:
                      "<" === i ? this.state = b.SCRIPT_ENDING : this.script += i;
                      continue;
                    case b.SCRIPT_ENDING:
                      "/" === i ? this.state = b.CLOSE_TAG : (this.script += "<" + i, this.state = b.SCRIPT);
                      continue;
                    case b.OPEN_WAKA:
                      if ("!" === i) this.state = b.SGML_DECL, this.sgmlDecl = "";
                      else if (p(i));
                      else if (y(l, i)) this.state = b.OPEN_TAG, this.tagName = i;
                      else if ("/" === i) this.state = b.CLOSE_TAG, this.tagName = "";
                      else if ("?" === i) this.state = b.PROC_INST, this.procInstName = this.procInstBody = "";
                      else {
                        if (S(this, "Unencoded <"), this.startTagPosition + 1 < this.position) {
                          var a = this.position - this.startTagPosition;
                          i = new Array(a).join(" ") + i
                        }
                        this.textNode += "<" + i, this.state = b.TEXT
                      }
                      continue;
                    case b.SGML_DECL:
                      if (this.sgmlDecl + i === "--") {
                        this.state = b.COMMENT, this.comment = "", this.sgmlDecl = "";
                        continue
                      }
                      this.doctype && !0 !== this.doctype && this.sgmlDecl ? (this.state = b.DOCTYPE_DTD, this.doctype += "<!" + this.sgmlDecl + i, this.sgmlDecl = "") : "[CDATA[" === (this.sgmlDecl + i).toUpperCase() ? (T(this, "onopencdata"), this.state = b.CDATA, this.sgmlDecl = "", this.cdata = "") : "DOCTYPE" === (this.sgmlDecl + i).toUpperCase() ? (this.state = b.DOCTYPE, (this.doctype || this.sawRoot) && S(this, "Inappropriately located doctype declaration"), this.doctype = "", this.sgmlDecl = "") : ">" === i ? (T(this, "onsgmldeclaration", this.sgmlDecl), this.sgmlDecl = "", this.state = b.TEXT) : g(i) ? (this.state = b.SGML_DECL_QUOTED, this.sgmlDecl += i) : this.sgmlDecl += i;
                      continue;
                    case b.SGML_DECL_QUOTED:
                      i === this.q && (this.state = b.SGML_DECL, this.q = ""), this.sgmlDecl += i;
                      continue;
                    case b.DOCTYPE:
                      ">" === i ? (this.state = b.TEXT, T(this, "ondoctype", this.doctype), this.doctype = !0) : (this.doctype += i, "[" === i ? this.state = b.DOCTYPE_DTD : g(i) && (this.state = b.DOCTYPE_QUOTED, this.q = i));
                      continue;
                    case b.DOCTYPE_QUOTED:
                      this.doctype += i, i === this.q && (this.q = "", this.state = b.DOCTYPE);
                      continue;
                    case b.DOCTYPE_DTD:
                      "]" === i ? (this.doctype += i, this.state = b.DOCTYPE) : "<" === i ? (this.state = b.OPEN_WAKA, this.startTagPosition = this.position) : g(i) ? (this.doctype += i, this.state = b.DOCTYPE_DTD_QUOTED, this.q = i) : this.doctype += i;
                      continue;
                    case b.DOCTYPE_DTD_QUOTED:
                      this.doctype += i, i === this.q && (this.state = b.DOCTYPE_DTD, this.q = "");
                      continue;
                    case b.COMMENT:
                      "-" === i ? this.state = b.COMMENT_ENDING : this.comment += i;
                      continue;
                    case b.COMMENT_ENDING:
                      "-" === i ? (this.state = b.COMMENT_ENDED, this.comment = C(this.opt, this.comment), this.comment && T(this, "oncomment", this.comment), this.comment = "") : (this.comment += "-" + i, this.state = b.COMMENT);
                      continue;
                    case b.COMMENT_ENDED:
                      ">" !== i ? (S(this, "Malformed comment"), this.comment += "--" + i, this.state = b.COMMENT) : this.doctype && !0 !== this.doctype ? this.state = b.DOCTYPE_DTD : this.state = b.TEXT;
                      continue;
                    case b.CDATA:
                      "]" === i ? this.state = b.CDATA_ENDING : this.cdata += i;
                      continue;
                    case b.CDATA_ENDING:
                      "]" === i ? this.state = b.CDATA_ENDING_2 : (this.cdata += "]" + i, this.state = b.CDATA);
                      continue;
                    case b.CDATA_ENDING_2:
                      ">" === i ? (this.cdata && T(this, "oncdata", this.cdata), T(this, "onclosecdata"), this.cdata = "", this.state = b.TEXT) : "]" === i ? this.cdata += "]" : (this.cdata += "]]" + i, this.state = b.CDATA);
                      continue;
                    case b.PROC_INST:
                      "?" === i ? this.state = b.PROC_INST_ENDING : p(i) ? this.state = b.PROC_INST_BODY : this.procInstName += i;
                      continue;
                    case b.PROC_INST_BODY:
                      if (!this.procInstBody && p(i)) continue;
                      "?" === i ? this.state = b.PROC_INST_ENDING : this.procInstBody += i;
                      continue;
                    case b.PROC_INST_ENDING:
                      ">" === i ? (T(this, "onprocessinginstruction", {
                        name: this.procInstName,
                        body: this.procInstBody
                      }), this.procInstName = this.procInstBody = "", this.state = b.TEXT) : (this.procInstBody += "?" + i, this.state = b.PROC_INST_BODY);
                      continue;
                    case b.OPEN_TAG:
                      y(f, i) ? this.tagName += i : (D(this), ">" === i ? M(this) : "/" === i ? this.state = b.OPEN_TAG_SLASH : (p(i) || S(this, "Invalid character in tag name"), this.state = b.ATTRIB));
                      continue;
                    case b.OPEN_TAG_SLASH:
                      ">" === i ? (M(this, !0), R(this)) : (S(this, "Forward-slash in opening tag not followed by >"), this.state = b.ATTRIB);
                      continue;
                    case b.ATTRIB:
                      if (p(i)) continue;
                      ">" === i ? M(this) : "/" === i ? this.state = b.OPEN_TAG_SLASH : y(l, i) ? (this.attribName = i, this.attribValue = "", this.state = b.ATTRIB_NAME) : S(this, "Invalid attribute name");
                      continue;
                    case b.ATTRIB_NAME:
                      "=" === i ? this.state = b.ATTRIB_VALUE : ">" === i ? (S(this, "Attribute without value"), this.attribValue = this.attribName, I(this), M(this)) : p(i) ? this.state = b.ATTRIB_NAME_SAW_WHITE : y(f, i) ? this.attribName += i : S(this, "Invalid attribute name");
                      continue;
                    case b.ATTRIB_NAME_SAW_WHITE:
                      if ("=" === i) this.state = b.ATTRIB_VALUE;
                      else {
                        if (p(i)) continue;
                        S(this, "Attribute without value"), this.tag.attributes[this.attribName] = "", this.attribValue = "", T(this, "onattribute", {
                          name: this.attribName,
                          value: ""
                        }), this.attribName = "", ">" === i ? M(this) : y(l, i) ? (this.attribName = i, this.state = b.ATTRIB_NAME) : (S(this, "Invalid attribute name"), this.state = b.ATTRIB)
                      }
                      continue;
                    case b.ATTRIB_VALUE:
                      if (p(i)) continue;
                      g(i) ? (this.q = i, this.state = b.ATTRIB_VALUE_QUOTED) : (this.opt.unquotedAttributeValues || N(this, "Unquoted attribute value"), this.state = b.ATTRIB_VALUE_UNQUOTED, this.attribValue = i);
                      continue;
                    case b.ATTRIB_VALUE_QUOTED:
                      if (i !== this.q) {
                        "&" === i ? this.state = b.ATTRIB_VALUE_ENTITY_Q : this.attribValue += i;
                        continue
                      }
                      I(this), this.q = "", this.state = b.ATTRIB_VALUE_CLOSED;
                      continue;
                    case b.ATTRIB_VALUE_CLOSED:
                      p(i) ? this.state = b.ATTRIB : ">" === i ? M(this) : "/" === i ? this.state = b.OPEN_TAG_SLASH : y(l, i) ? (S(this, "No whitespace between attributes"), this.attribName = i, this.attribValue = "", this.state = b.ATTRIB_NAME) : S(this, "Invalid attribute name");
                      continue;
                    case b.ATTRIB_VALUE_UNQUOTED:
                      if (!m(i)) {
                        "&" === i ? this.state = b.ATTRIB_VALUE_ENTITY_U : this.attribValue += i;
                        continue
                      }
                      I(this), ">" === i ? M(this) : this.state = b.ATTRIB;
                      continue;
                    case b.CLOSE_TAG:
                      if (this.tagName) ">" === i ? R(this) : y(f, i) ? this.tagName += i : this.script ? (this.script += "</" + this.tagName, this.tagName = "", this.state = b.SCRIPT) : (p(i) || S(this, "Invalid tagname in closing tag"), this.state = b.CLOSE_TAG_SAW_WHITE);
                      else {
                        if (p(i)) continue;
                        E(l, i) ? this.script ? (this.script += "</" + i, this.state = b.SCRIPT) : S(this, "Invalid tagname in closing tag.") : this.tagName = i
                      }
                      continue;
                    case b.CLOSE_TAG_SAW_WHITE:
                      if (p(i)) continue;
                      ">" === i ? R(this) : S(this, "Invalid characters in closing tag");
                      continue;
                    case b.TEXT_ENTITY:
                    case b.ATTRIB_VALUE_ENTITY_Q:
                    case b.ATTRIB_VALUE_ENTITY_U:
                      var s, u;
                      switch (this.state) {
                        case b.TEXT_ENTITY:
                          s = b.TEXT, u = "textNode";
                          break;
                        case b.ATTRIB_VALUE_ENTITY_Q:
                          s = b.ATTRIB_VALUE_QUOTED, u = "attribValue";
                          break;
                        case b.ATTRIB_VALUE_ENTITY_U:
                          s = b.ATTRIB_VALUE_UNQUOTED, u = "attribValue";
                          break
                      }
                      if (";" === i) {
                        var c = O(this);
                        this.opt.unparsedEntities && !Object.values(e.XML_ENTITIES).includes(c) ? (this.entity = "", this.state = s, this.write(c)) : (this[u] += c, this.entity = "", this.state = s)
                      } else y(this.entity.length ? d : h, i) ? this.entity += i : (S(this, "Invalid character in entity name"), this[u] += "&" + this.entity + i, this.entity = "", this.state = s);
                      continue;
                    default:
                      throw new Error(this, "Unknown state: " + this.state)
                  }
                }
                this.position >= this.bufferCheckPosition && function(t) {
                  for (var n = Math.max(e.MAX_BUFFER_LENGTH, 10), i = 0, o = 0, a = r.length; o < a; o++) {
                    var s = t[r[o]].length;
                    if (s > n) switch (r[o]) {
                      case "textNode":
                        A(t);
                        break;
                      case "cdata":
                        T(t, "oncdata", t.cdata), t.cdata = "";
                        break;
                      case "script":
                        T(t, "onscript", t.script), t.script = "";
                        break;
                      default:
                        N(t, "Max buffer length exceeded: " + r[o])
                    }
                    i = Math.max(i, s)
                  }
                  var u = e.MAX_BUFFER_LENGTH - i;
                  t.bufferCheckPosition = u + t.position
                }(this);
                return this
              }
              /*! http://mths.be/fromcodepoint v0.1.0 by @mathias */
              ,
            resume: function() {
              return this.error = null, this
            },
            close: function() {
              return this.write(null)
            },
            flush: function() {
              (function(t) {
                A(t), "" !== t.cdata && (T(t, "oncdata", t.cdata), t.cdata = ""), "" !== t.script && (T(t, "onscript", t.script), t.script = "")
              })(this)
            }
          };
          try {
            i = n("d485").Stream
          } catch (U) {
            i = function() {}
          }
          i || (i = function() {});
          var a = e.EVENTS.filter((function(t) {
            return "error" !== t && "end" !== t
          }));

          function s(t, e) {
            if (!(this instanceof s)) return new s(t, e);
            i.apply(this), this._parser = new o(t, e), this.writable = !0, this.readable = !0;
            var n = this;
            this._parser.onend = function() {
              n.emit("end")
            }, this._parser.onerror = function(t) {
              n.emit("error", t), n._parser.error = null
            }, this._decoder = null, a.forEach((function(t) {
              Object.defineProperty(n, "on" + t, {
                get: function() {
                  return n._parser["on" + t]
                },
                set: function(e) {
                  if (!e) return n.removeAllListeners(t), n._parser["on" + t] = e, e;
                  n.on(t, e)
                },
                enumerable: !0,
                configurable: !1
              })
            }))
          }
          s.prototype = Object.create(i.prototype, {
            constructor: {
              value: s
            }
          }), s.prototype.write = function(e) {
            if ("function" === typeof t && "function" === typeof t.isBuffer && t.isBuffer(e)) {
              if (!this._decoder) {
                var i = n("7d72").StringDecoder;
                this._decoder = new i("utf8")
              }
              e = this._decoder.write(e)
            }
            return this._parser.write(e.toString()), this.emit("data", e), !0
          }, s.prototype.end = function(t) {
            return t && t.length && this.write(t), this._parser.end(), !0
          }, s.prototype.on = function(t, e) {
            var n = this;
            return n._parser["on" + t] || -1 === a.indexOf(t) || (n._parser["on" + t] = function() {
              var e = 1 === arguments.length ? [arguments[0]] : Array.apply(null, arguments);
              e.splice(0, 0, t), n.emit.apply(n, e)
            }), i.prototype.on.call(n, t, e)
          };
          var u = "http://www.w3.org/XML/1998/namespace",
            c = {
              xml: u,
              xmlns: "http://www.w3.org/2000/xmlns/"
            },
            l = /[:_A-Za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD]/,
            f = /[:_A-Za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u00B7\u0300-\u036F\u203F-\u2040.\d-]/,
            h = /[#:_A-Za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD]/,
            d = /[#:_A-Za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u00B7\u0300-\u036F\u203F-\u2040.\d-]/;

          function p(t) {
            return " " === t || "\n" === t || "\r" === t || "\t" === t
          }

          function g(t) {
            return '"' === t || "'" === t
          }

          function m(t) {
            return ">" === t || p(t)
          }

          function y(t, e) {
            return t.test(e)
          }

          function E(t, e) {
            return !y(t, e)
          }
          var b = 0;
          for (var v in e.STATE = {
              BEGIN: b++,
              BEGIN_WHITESPACE: b++,
              TEXT: b++,
              TEXT_ENTITY: b++,
              OPEN_WAKA: b++,
              SGML_DECL: b++,
              SGML_DECL_QUOTED: b++,
              DOCTYPE: b++,
              DOCTYPE_QUOTED: b++,
              DOCTYPE_DTD: b++,
              DOCTYPE_DTD_QUOTED: b++,
              COMMENT_STARTING: b++,
              COMMENT: b++,
              COMMENT_ENDING: b++,
              COMMENT_ENDED: b++,
              CDATA: b++,
              CDATA_ENDING: b++,
              CDATA_ENDING_2: b++,
              PROC_INST: b++,
              PROC_INST_BODY: b++,
              PROC_INST_ENDING: b++,
              OPEN_TAG: b++,
              OPEN_TAG_SLASH: b++,
              ATTRIB: b++,
              ATTRIB_NAME: b++,
              ATTRIB_NAME_SAW_WHITE: b++,
              ATTRIB_VALUE: b++,
              ATTRIB_VALUE_QUOTED: b++,
              ATTRIB_VALUE_CLOSED: b++,
              ATTRIB_VALUE_UNQUOTED: b++,
              ATTRIB_VALUE_ENTITY_Q: b++,
              ATTRIB_VALUE_ENTITY_U: b++,
              CLOSE_TAG: b++,
              CLOSE_TAG_SAW_WHITE: b++,
              SCRIPT: b++,
              SCRIPT_ENDING: b++
            }, e.XML_ENTITIES = {
              amp: "&",
              gt: ">",
              lt: "<",
              quot: '"',
              apos: "'"
            }, e.ENTITIES = {
              amp: "&",
              gt: ">",
              lt: "<",
              quot: '"',
              apos: "'",
              AElig: 198,
              Aacute: 193,
              Acirc: 194,
              Agrave: 192,
              Aring: 197,
              Atilde: 195,
              Auml: 196,
              Ccedil: 199,
              ETH: 208,
              Eacute: 201,
              Ecirc: 202,
              Egrave: 200,
              Euml: 203,
              Iacute: 205,
              Icirc: 206,
              Igrave: 204,
              Iuml: 207,
              Ntilde: 209,
              Oacute: 211,
              Ocirc: 212,
              Ograve: 210,
              Oslash: 216,
              Otilde: 213,
              Ouml: 214,
              THORN: 222,
              Uacute: 218,
              Ucirc: 219,
              Ugrave: 217,
              Uuml: 220,
              Yacute: 221,
              aacute: 225,
              acirc: 226,
              aelig: 230,
              agrave: 224,
              aring: 229,
              atilde: 227,
              auml: 228,
              ccedil: 231,
              eacute: 233,
              ecirc: 234,
              egrave: 232,
              eth: 240,
              euml: 235,
              iacute: 237,
              icirc: 238,
              igrave: 236,
              iuml: 239,
              ntilde: 241,
              oacute: 243,
              ocirc: 244,
              ograve: 242,
              oslash: 248,
              otilde: 245,
              ouml: 246,
              szlig: 223,
              thorn: 254,
              uacute: 250,
              ucirc: 251,
              ugrave: 249,
              uuml: 252,
              yacute: 253,
              yuml: 255,
              copy: 169,
              reg: 174,
              nbsp: 160,
              iexcl: 161,
              cent: 162,
              pound: 163,
              curren: 164,
              yen: 165,
              brvbar: 166,
              sect: 167,
              uml: 168,
              ordf: 170,
              laquo: 171,
              not: 172,
              shy: 173,
              macr: 175,
              deg: 176,
              plusmn: 177,
              sup1: 185,
              sup2: 178,
              sup3: 179,
              acute: 180,
              micro: 181,
              para: 182,
              middot: 183,
              cedil: 184,
              ordm: 186,
              raquo: 187,
              frac14: 188,
              frac12: 189,
              frac34: 190,
              iquest: 191,
              times: 215,
              divide: 247,
              OElig: 338,
              oelig: 339,
              Scaron: 352,
              scaron: 353,
              Yuml: 376,
              fnof: 402,
              circ: 710,
              tilde: 732,
              Alpha: 913,
              Beta: 914,
              Gamma: 915,
              Delta: 916,
              Epsilon: 917,
              Zeta: 918,
              Eta: 919,
              Theta: 920,
              Iota: 921,
              Kappa: 922,
              Lambda: 923,
              Mu: 924,
              Nu: 925,
              Xi: 926,
              Omicron: 927,
              Pi: 928,
              Rho: 929,
              Sigma: 931,
              Tau: 932,
              Upsilon: 933,
              Phi: 934,
              Chi: 935,
              Psi: 936,
              Omega: 937,
              alpha: 945,
              beta: 946,
              gamma: 947,
              delta: 948,
              epsilon: 949,
              zeta: 950,
              eta: 951,
              theta: 952,
              iota: 953,
              kappa: 954,
              lambda: 955,
              mu: 956,
              nu: 957,
              xi: 958,
              omicron: 959,
              pi: 960,
              rho: 961,
              sigmaf: 962,
              sigma: 963,
              tau: 964,
              upsilon: 965,
              phi: 966,
              chi: 967,
              psi: 968,
              omega: 969,
              thetasym: 977,
              upsih: 978,
              piv: 982,
              ensp: 8194,
              emsp: 8195,
              thinsp: 8201,
              zwnj: 8204,
              zwj: 8205,
              lrm: 8206,
              rlm: 8207,
              ndash: 8211,
              mdash: 8212,
              lsquo: 8216,
              rsquo: 8217,
              sbquo: 8218,
              ldquo: 8220,
              rdquo: 8221,
              bdquo: 8222,
              dagger: 8224,
              Dagger: 8225,
              bull: 8226,
              hellip: 8230,
              permil: 8240,
              prime: 8242,
              Prime: 8243,
              lsaquo: 8249,
              rsaquo: 8250,
              oline: 8254,
              frasl: 8260,
              euro: 8364,
              image: 8465,
              weierp: 8472,
              real: 8476,
              trade: 8482,
              alefsym: 8501,
              larr: 8592,
              uarr: 8593,
              rarr: 8594,
              darr: 8595,
              harr: 8596,
              crarr: 8629,
              lArr: 8656,
              uArr: 8657,
              rArr: 8658,
              dArr: 8659,
              hArr: 8660,
              forall: 8704,
              part: 8706,
              exist: 8707,
              empty: 8709,
              nabla: 8711,
              isin: 8712,
              notin: 8713,
              ni: 8715,
              prod: 8719,
              sum: 8721,
              minus: 8722,
              lowast: 8727,
              radic: 8730,
              prop: 8733,
              infin: 8734,
              ang: 8736,
              and: 8743,
              or: 8744,
              cap: 8745,
              cup: 8746,
              int: 8747,
              there4: 8756,
              sim: 8764,
              cong: 8773,
              asymp: 8776,
              ne: 8800,
              equiv: 8801,
              le: 8804,
              ge: 8805,
              sub: 8834,
              sup: 8835,
              nsub: 8836,
              sube: 8838,
              supe: 8839,
              oplus: 8853,
              otimes: 8855,
              perp: 8869,
              sdot: 8901,
              lceil: 8968,
              rceil: 8969,
              lfloor: 8970,
              rfloor: 8971,
              lang: 9001,
              rang: 9002,
              loz: 9674,
              spades: 9824,
              clubs: 9827,
              hearts: 9829,
              diams: 9830
            }, Object.keys(e.ENTITIES).forEach((function(t) {
              var n = e.ENTITIES[t],
                i = "number" === typeof n ? String.fromCharCode(n) : n;
              e.ENTITIES[t] = i
            })), e.STATE) e.STATE[e.STATE[v]] = v;

          function w(t, e, n) {
            t[e] && t[e](n)
          }

          function T(t, e, n) {
            t.textNode && A(t), w(t, e, n)
          }

          function A(t) {
            t.textNode = C(t.opt, t.textNode), t.textNode && w(t, "ontext", t.textNode), t.textNode = ""
          }

          function C(t, e) {
            return t.trim && (e = e.trim()), t.normalize && (e = e.replace(/\s+/g, " ")), e
          }

          function N(t, e) {
            return A(t), t.trackPosition && (e += "\nLine: " + t.line + "\nColumn: " + t.column + "\nChar: " + t.c), e = new Error(e), t.error = e, w(t, "onerror", e), t
          }

          function _(t) {
            return t.sawRoot && !t.closedRoot && S(t, "Unclosed root tag"), t.state !== b.BEGIN && t.state !== b.BEGIN_WHITESPACE && t.state !== b.TEXT && N(t, "Unexpected end"), A(t), t.c = "", t.closed = !0, w(t, "onend"), o.call(t, t.strict, t.opt), t
          }

          function S(t, e) {
            if ("object" !== typeof t || !(t instanceof o)) throw new Error("bad call to strictFail");
            t.strict && N(t, e)
          }

          function D(t) {
            t.strict || (t.tagName = t.tagName[t.looseCase]());
            var e = t.tags[t.tags.length - 1] || t,
              n = t.tag = {
                name: t.tagName,
                attributes: {}
              };
            t.opt.xmlns && (n.ns = e.ns), t.attribList.length = 0, T(t, "onopentagstart", n)
          }

          function P(t, e) {
            var n = t.indexOf(":"),
              i = n < 0 ? ["", t] : t.split(":"),
              r = i[0],
              o = i[1];
            return e && "xmlns" === t && (r = "xmlns", o = ""), {
              prefix: r,
              local: o
            }
          }

          function I(t) {
            if (t.strict || (t.attribName = t.attribName[t.looseCase]()), -1 !== t.attribList.indexOf(t.attribName) || t.tag.attributes.hasOwnProperty(t.attribName)) t.attribName = t.attribValue = "";
            else {
              if (t.opt.xmlns) {
                var e = P(t.attribName, !0),
                  n = e.prefix,
                  i = e.local;
                if ("xmlns" === n)
                  if ("xml" === i && t.attribValue !== u) S(t, "xml: prefix must be bound to " + u + "\nActual: " + t.attribValue);
                  else if ("xmlns" === i && "http://www.w3.org/2000/xmlns/" !== t.attribValue) S(t, "xmlns: prefix must be bound to http://www.w3.org/2000/xmlns/\nActual: " + t.attribValue);
                else {
                  var r = t.tag,
                    o = t.tags[t.tags.length - 1] || t;
                  r.ns === o.ns && (r.ns = Object.create(o.ns)), r.ns[i] = t.attribValue
                }
                t.attribList.push([t.attribName, t.attribValue])
              } else t.tag.attributes[t.attribName] = t.attribValue, T(t, "onattribute", {
                name: t.attribName,
                value: t.attribValue
              });
              t.attribName = t.attribValue = ""
            }
          }

          function M(t, e) {
            if (t.opt.xmlns) {
              var n = t.tag,
                i = P(t.tagName);
              n.prefix = i.prefix, n.local = i.local, n.uri = n.ns[i.prefix] || "", n.prefix && !n.uri && (S(t, "Unbound namespace prefix: " + JSON.stringify(t.tagName)), n.uri = i.prefix);
              var r = t.tags[t.tags.length - 1] || t;
              n.ns && r.ns !== n.ns && Object.keys(n.ns).forEach((function(e) {
                T(t, "onopennamespace", {
                  prefix: e,
                  uri: n.ns[e]
                })
              }));
              for (var o = 0, a = t.attribList.length; o < a; o++) {
                var s = t.attribList[o],
                  u = s[0],
                  c = s[1],
                  l = P(u, !0),
                  f = l.prefix,
                  h = l.local,
                  d = "" === f ? "" : n.ns[f] || "",
                  p = {
                    name: u,
                    value: c,
                    prefix: f,
                    local: h,
                    uri: d
                  };
                f && "xmlns" !== f && !d && (S(t, "Unbound namespace prefix: " + JSON.stringify(f)), p.uri = f), t.tag.attributes[u] = p, T(t, "onattribute", p)
              }
              t.attribList.length = 0
            }
            t.tag.isSelfClosing = !!e, t.sawRoot = !0, t.tags.push(t.tag), T(t, "onopentag", t.tag), e || (t.noscript || "script" !== t.tagName.toLowerCase() ? t.state = b.TEXT : t.state = b.SCRIPT, t.tag = null, t.tagName = ""), t.attribName = t.attribValue = "", t.attribList.length = 0
          }

          function R(t) {
            if (!t.tagName) return S(t, "Weird empty close tag."), t.textNode += "</>", void(t.state = b.TEXT);
            if (t.script) {
              if ("script" !== t.tagName) return t.script += "</" + t.tagName + ">", t.tagName = "", void(t.state = b.SCRIPT);
              T(t, "onscript", t.script), t.script = ""
            }
            var e = t.tags.length,
              n = t.tagName;
            t.strict || (n = n[t.looseCase]());
            var i = n;
            while (e--) {
              var r = t.tags[e];
              if (r.name === i) break;
              S(t, "Unexpected close tag")
            }
            if (e < 0) return S(t, "Unmatched closing tag: " + t.tagName), t.textNode += "</" + t.tagName + ">", void(t.state = b.TEXT);
            t.tagName = n;
            var o = t.tags.length;
            while (o-- > e) {
              var a = t.tag = t.tags.pop();
              t.tagName = t.tag.name, T(t, "onclosetag", t.tagName);
              var s = {};
              for (var u in a.ns) s[u] = a.ns[u];
              var c = t.tags[t.tags.length - 1] || t;
              t.opt.xmlns && a.ns !== c.ns && Object.keys(a.ns).forEach((function(e) {
                var n = a.ns[e];
                T(t, "onclosenamespace", {
                  prefix: e,
                  uri: n
                })
              }))
            }
            0 === e && (t.closedRoot = !0), t.tagName = t.attribValue = t.attribName = "", t.attribList.length = 0, t.state = b.TEXT
          }

          function O(t) {
            var e, n = t.entity,
              i = n.toLowerCase(),
              r = "";
            return t.ENTITIES[n] ? t.ENTITIES[n] : t.ENTITIES[i] ? t.ENTITIES[i] : (n = i, "#" === n.charAt(0) && ("x" === n.charAt(1) ? (n = n.slice(2), e = parseInt(n, 16), r = e.toString(16)) : (n = n.slice(1), e = parseInt(n, 10), r = e.toString(10))), n = n.replace(/^0+/, ""), isNaN(e) || r.toLowerCase() !== n ? (S(t, "Invalid character entity"), "&" + t.entity + ";") : String.fromCodePoint(e))
          }

          function x(t, e) {
            "<" === e ? (t.state = b.OPEN_WAKA, t.startTagPosition = t.position) : p(e) || (S(t, "Non-whitespace before first tag."), t.textNode = e, t.state = b.TEXT)
          }

          function F(t, e) {
            var n = "";
            return e < t.length && (n = t.charAt(e)), n
          }
          b = e.STATE, String.fromCodePoint || function() {
            var t = String.fromCharCode,
              e = Math.floor,
              n = function() {
                var n, i, r = 16384,
                  o = [],
                  a = -1,
                  s = arguments.length;
                if (!s) return "";
                var u = "";
                while (++a < s) {
                  var c = Number(arguments[a]);
                  if (!isFinite(c) || c < 0 || c > 1114111 || e(c) !== c) throw RangeError("Invalid code point: " + c);
                  c <= 65535 ? o.push(c) : (c -= 65536, n = 55296 + (c >> 10), i = c % 1024 + 56320, o.push(n, i)), (a + 1 === s || o.length > r) && (u += t.apply(null, o), o.length = 0)
                }
                return u
              };
            Object.defineProperty ? Object.defineProperty(String, "fromCodePoint", {
              value: n,
              configurable: !0,
              writable: !0
            }) : String.fromCodePoint = n
          }()
        })(e)
      }).call(this, n("b639").Buffer)
    },
    "3a7c": function(t, e, n) {
      function i(t) {
        return Object.prototype.toString.call(t)
      }
      e.isArray = function(t) {
        return Array.isArray ? Array.isArray(t) : "[object Array]" === i(t)
      }, e.isBoolean = function(t) {
        return "boolean" === typeof t
      }, e.isNull = function(t) {
        return null === t
      }, e.isNullOrUndefined = function(t) {
        return null == t
      }, e.isNumber = function(t) {
        return "number" === typeof t
      }, e.isString = function(t) {
        return "string" === typeof t
      }, e.isSymbol = function(t) {
        return "symbol" === typeof t
      }, e.isUndefined = function(t) {
        return void 0 === t
      }, e.isRegExp = function(t) {
        return "[object RegExp]" === i(t)
      }, e.isObject = function(t) {
        return "object" === typeof t && null !== t
      }, e.isDate = function(t) {
        return "[object Date]" === i(t)
      }, e.isError = function(t) {
        return "[object Error]" === i(t) || t instanceof Error
      }, e.isFunction = function(t) {
        return "function" === typeof t
      }, e.isPrimitive = function(t) {
        return null === t || "boolean" === typeof t || "number" === typeof t || "string" === typeof t || "symbol" === typeof t || "undefined" === typeof t
      }, e.isBuffer = n("b639").Buffer.isBuffer
    },
    "3fb5": function(t, e) {
      "function" === typeof Object.create ? t.exports = function(t, e) {
        e && (t.super_ = e, t.prototype = Object.create(e.prototype, {
          constructor: {
            value: t,
            enumerable: !1,
            writable: !0,
            configurable: !0
          }
        }))
      } : t.exports = function(t, e) {
        if (e) {
          t.super_ = e;
          var n = function() {};
          n.prototype = e.prototype, t.prototype = new n, t.prototype.constructor = t
        }
      }
    },
    "429b": function(t, e, n) {
      t.exports = n("faa1").EventEmitter
    },
    4362: function(t, e, n) {
      e.nextTick = function(t) {
          var e = Array.prototype.slice.call(arguments);
          e.shift(), setTimeout((function() {
            t.apply(null, e)
          }), 0)
        }, e.platform = e.arch = e.execPath = e.title = "browser", e.pid = 1, e.browser = !0, e.env = {}, e.argv = [], e.binding = function(t) {
          throw new Error("No such module. (Possibly not yet loaded)")
        },
        function() {
          var t, i = "/";
          e.cwd = function() {
            return i
          }, e.chdir = function(e) {
            t || (t = n("df7c")), i = t.resolve(e, i)
          }
        }(), e.exit = e.kill = e.umask = e.dlopen = e.uptime = e.memoryUsage = e.uvCounters = function() {}, e.features = {}
    },
    4681: function(t, e, n) {
      "use strict";
      var i = n("966d");

      function r(t, e) {
        t.emit("error", e)
      }
      t.exports = {
        destroy: function(t, e) {
          var n = this,
            o = this._readableState && this._readableState.destroyed,
            a = this._writableState && this._writableState.destroyed;
          return o || a ? (e ? e(t) : t && (this._writableState ? this._writableState.errorEmitted || (this._writableState.errorEmitted = !0, i.nextTick(r, this, t)) : i.nextTick(r, this, t)), this) : (this._readableState && (this._readableState.destroyed = !0), this._writableState && (this._writableState.destroyed = !0), this._destroy(t || null, (function(t) {
            !e && t ? n._writableState ? n._writableState.errorEmitted || (n._writableState.errorEmitted = !0, i.nextTick(r, n, t)) : i.nextTick(r, n, t) : e && e(t)
          })), this)
        },
        undestroy: function() {
          this._readableState && (this._readableState.destroyed = !1, this._readableState.reading = !1, this._readableState.ended = !1, this._readableState.endEmitted = !1), this._writableState && (this._writableState.destroyed = !1, this._writableState.ended = !1, this._writableState.ending = !1, this._writableState.finalCalled = !1, this._writableState.prefinished = !1, this._writableState.finished = !1, this._writableState.errorEmitted = !1)
        }
      }
    },
    "493b": function(t, e, n) {
      (function(e) {
        var i = n("cef9");
        t.exports = function(t, n) {
          t instanceof e && (t = t.toString());
          var r = null;
          if ("string" === typeof t) try {
            r = JSON.parse(t)
          } catch (o) {
            throw new Error("The JSON structure is invalid")
          } else r = t;
          return i(r, n)
        }
      }).call(this, n("b639").Buffer)
    },
    "4bea": function(t, e, n) {
      "use strict";
      n("7a82");
      var i = n("4ea4").default;
      Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.default = void 0, n("f4b3"), n("e9c4");
      var r = n("1698"),
        o = n("c685"),
        a = i(n("4360"));
      e.default = function(t) {
        var e = getApp().globalData.hookPlatformName;
        "harmony" != e ? r.PluginApi.coolMethod("onVersionUpdate", [], (function(e) {
          if (console.log("版本更新：" + JSON.stringify(e)), uni.hideLoading(), 0 == e.errorCode && e.data && e.data.pkg) {
            if (getApp().globalData.verno == e.data.pkg.verno) {
              if (a.default.commit("changeShowRedDot", !1), !t) return;
              return void uni.showToast({
                title: "当前已是最新版本",
                icon: "none"
              })
            }
            a.default.commit("changeShowRedDot", !0);
            var n = "android" == getApp().globalData.phoneType,
              i = n ? "" : "您有新版本可以使用",
              s = n ? '<font color="black">您有新版本可以使用</font><br><font color="#808080">界面改版，有功能上线了<br>给您更好体验，快来升级吧</font>' : "界面改版，有功能上线了，给您更好体验，快来升级吧。",
              u = e.data;
            1 == u.Mandatory ? uni.showModal({
              title: i,
              cancelText: "以后再说",
              confirmText: "立即更新",
              allowHtml: !0,
              content: s,
              success: function(t) {
                t.confirm && ("android" == getApp().globalData.phoneType ? r.PluginApi.coolMethod("downloadApp", [u.pkg.url, "有新版本"]) : o.$webView.open("", u.pkg.url, !1))
              }
            }) : 0 == u.Mandatory && uni.showModal({
              title: i,
              cancelText: "退出客户端",
              confirmText: "立即更新",
              allowHtml: !0,
              content: s,
              closeOnBack: !1,
              success: function(t) {
                t.confirm ? "android" == getApp().globalData.phoneType ? r.PluginApi.coolMethod("downloadApp", [u.pkg.url, "有新版本"]) : o.$webView.open("", u.pkg.url, !1) : t.cancel && r.PluginApi.coolMethod("onExitApplication", [])
              }
            })
          } else {
            if (a.default.commit("changeShowRedDot", !1), !t) return;
            uni.showToast({
              title: "当前已是最新版本",
              icon: "none"
            })
          }
        })) : r.PluginApi.coolMethod("onVersionUpdate", [], (function(e) {
          uni.hideLoading(), a.default.commit("changeShowRedDot", !1), t && uni.showToast({
            title: "当前已是最新版本",
            icon: "none"
          })
        }))
      }
    },
    "5e1a": function(t, e, n) {
      "use strict";
      var i = n("8707").Buffer,
        r = n(2);

      function o(t, e, n) {
        t.copy(e, n)
      }
      t.exports = function() {
        function t() {
          (function(t, e) {
            if (!(t instanceof e)) throw new TypeError("Cannot call a class as a function")
          })(this, t), this.head = null, this.tail = null, this.length = 0
        }
        return t.prototype.push = function(t) {
          var e = {
            data: t,
            next: null
          };
          this.length > 0 ? this.tail.next = e : this.head = e, this.tail = e, ++this.length
        }, t.prototype.unshift = function(t) {
          var e = {
            data: t,
            next: this.head
          };
          0 === this.length && (this.tail = e), this.head = e, ++this.length
        }, t.prototype.shift = function() {
          if (0 !== this.length) {
            var t = this.head.data;
            return 1 === this.length ? this.head = this.tail = null : this.head = this.head.next, --this.length, t
          }
        }, t.prototype.clear = function() {
          this.head = this.tail = null, this.length = 0
        }, t.prototype.join = function(t) {
          if (0 === this.length) return "";
          var e = this.head,
            n = "" + e.data;
          while (e = e.next) n += t + e.data;
          return n
        }, t.prototype.concat = function(t) {
          if (0 === this.length) return i.alloc(0);
          var e = i.allocUnsafe(t >>> 0),
            n = this.head,
            r = 0;
          while (n) o(n.data, e, r), r += n.data.length, n = n.next;
          return e
        }, t
      }(), r && r.inspect && r.inspect.custom && (t.exports.prototype[r.inspect.custom] = function() {
        var t = r.inspect({
          length: this.length
        });
        return this.constructor.name + " " + t
      })
    },
    "720e": function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.GetProcCode = e.GetErrorCode = e.$code = void 0, n("c975"), n("ac1f"), n("5319");
      var i = e.$code = {
        200105: "正在检测网络...",
        200106: "环境初始化中...",
        200107: "正在检查WiFi开关...",
        200108: "正在检查是否连接了WiFi...",
        200109: "正在检查WiFi信号...",
        200110: "正在获取ip地址...",
        200111: "正在获取网络配置...",
        200112: "(┬＿┬)网络好像不通！请检查网络配置或使用检测工具诊断下吧",
        200113: "加密失败",
        200114: "解密失败",
        200115: "解析配置信息出错",
        200117: "网络已断开",
        200118: "网络已断开，可能的原因：网络状态异常或账号已在别处登录",
        200119: "网络已断开，可能的原因：检测到USB、模拟器或蓝牙网络共享冲突，请关闭对应的网络共享后重新登录",
        200120: "因安卓9.0及以上系统限制，需将手机“位置服务”设置为开启状态，才能使用拨号服务",
        200121: "网络已断开，可能的原因：VPN服务被杀，请重新登录",
        200122: "网络已断开，可能的原因：检测到其它VPN应用与客户端冲突，请关闭其它VPN应用，然后重新登录",
        200123: "请将VPN连接设置为允许",
        200124: "网络已断开，VPN创建失败，请重新登录",
        200125: "VPN服务正忙，请稍后重试",
        200126: "请在设置中勾选正确VPN连接设置",
        200127: "检测到与%s共享软件冲突，受软件干扰网络已断开，请卸载共享软件后再重新连接",
        200104: {
          btnText: "点我登录",
          infoMessage: "已连接校园WiFi"
        },
        200100: {
          name: "unOpenWifi",
          btnText: "打开校园WiFi",
          infoTitle: "请先打开WiFi开关"
        },
        200101: {
          name: "unConnectWifi",
          btnText: "打开校园WiFi",
          infoTitle: "未连接校园WiFi"
        },
        200102: {
          name: "failConnectWifi",
          btnText: "切换校园WiFi",
          infoMessage: "当前连接的是非校园WiFi，请切换为校园WiFi上网"
        },
        200103: {
          name: "weakWifi",
          btnText: "切换校园WiFi",
          infoMessage: "WiFi信号弱，可能会影响上网速度"
        },
        300108: "(>﹏<)网络好像不通了，获取配置项未知错误。（错误码：300108）",
        300308: "(>﹏<)客户端服务器好像抽风了，程序猿正在努力抢修中！（错误码：300308）",
        300309: "配置文件被损坏，请重新安装客户端后再试。（错误码：300309）",
        200203: "正在登录中...",
        200201: "断开网络",
        "140XXX": "=================================前置portal返回的错误码================================================",
        14e4: "无错误。（错误码：140000）",
        140001: "无效的请求。（错误码：140001）",
        140002: "客户端版本不正确，请到官网下载最新版本试试吧。（错误码：140002）",
        140003: "亲，您使用的客户端版本已被停用，请到官网下载最新版本试试吧。（错误码：403）",
        140010: "请检查接入的网络是否正确，如使用了路由器请关闭DHCP后接入。（错误码：140010）",
        140011: "无效的客户端MAC地址。（错误码：140011）",
        140012: "无效的客户端ID。（错误码：140012）",
        140013: "无效的算法ID。（错误码：140013）",
        140014: "无效的ticket，请稍后重试。（错误码：140014）",
        140015: "校验值错误。（错误码：140015）",
        140100: "无效的用户名、密码。（错误码：140100）",
        140101: "无效的挑战值。（错误码：140101）",
        140102: "您的拨号请求已被服务器拒绝，详情请联系10000查询。（错误码：201）",
        140103: "网关可容纳的接入数已满。（错误码：140103）",
        140104: "对应的用户不存在。（错误码：140104）",
        140105: "用户账号受限。（错误码：140105）",
        140200: "密钥过期。（错误码：140200）",
        140300: "正在等待终端发起认证。（错误码：140300）",
        140301: "正在等待服务端进行验证。（错误码：140301）",
        140901: "(>﹏<)客户端服务器好像抽风了，程序猿正在努力抢修中！（错误码：301）",
        140902: "(>﹏<)客户端服务器好像抽风了，程序猿正在努力抢修中！（错误码：302）",
        140990: "(>﹏<)客户端服务器好像抽风了，程序猿正在努力抢修中！（错误码：303）",
        "140102.XX": "=================================3A返回的错误码提示================================================",
        140102.1: "认证请求被拒绝（1）",
        140102.2: "您已在客户端登录了此账号，不能重复登录（2）",
        140102.3: "认证服务器忙，请稍后再试（3）",
        140102.4: "认证失败，请检查网络后重试（4）",
        "140102.11010000": "找不到SDX信息，请咨询校园网络端口是否已开通。(11010000)",
        "140102.13001000": "认证请求被拒绝。(13001000) ",
        "140102.13003000": "认证服务器忙，请稍后再试。(13003000) ",
        "140102.13004000": "登录失败，可能的原因：1、账号或密码错误；2、账号欠费；3、账号状态异常。(13004000)",
        "140102.13005000": "请求认证超时，请检查网络后重试。(13005000) ",
        "140102.13012000": "账号或密码错误。(13012000)",
        "140102.13016000": "输入的账号不存在，注意账号无需@后缀。(13016000) ",
        "140102.13017000": "账号欠费，请及时充值。(13017000) ",
        "140102.13014000": "终端数超出限制，请先退出其他已登录终端。（13014000）",
        "140102.13015000": "账户余额不足。(13015000)",
        "140102.13018000": "拨号类型错误。(13018000)",
        "140102.13019000": "终端类型错误。(13019000)",
        "140102.13020000": "体验活动已结束。(13020000)",
        "140102.13021000": "体验账号已过期。(13021000)",
        "140102.13022000": "今日体验时长已用完，请明天再试。(13022000)",
        "140102.11064000": "账号登录过于频繁，请5分钟后重新登录。(11064000)",
        "140102.11060000": "请重新获取验证码（11060000）",
        "140102.11062000": "请输入验证码（11062000）",
        "140102.11063000": "验证码错误，请重新输入。（1063000）",
        "140102.-600": "账号因违反客户端网络安全规定，使用非法途径上网，拨号被限制。请咨询学校运维人员。"
      };
      e.GetProcCode = function(t, e, n) {
        var r = t;
        void 0 != e && "" != e && (r = r + "." + e);
        var o = i[r];
        return void 0 == o && (o = i[t], void 0 == o) ? "错误码：" + r : (void 0 != n && "" != n && o.indexOf("%s") > -1 && (o = o.replace("%s", n)), o)
      }, e.GetErrorCode = function(t, e) {
        var n = t;
        return void 0 != e && "" != e && (n = n + "." + e), n
      }
    },
    "780f": function(t, e, n) {
      "use strict";
      t.exports = o;
      var i = n("27bf"),
        r = Object.create(n("3a7c"));

      function o(t) {
        if (!(this instanceof o)) return new o(t);
        i.call(this, t)
      }
      r.inherits = n("3fb5"), r.inherits(o, i), o.prototype._transform = function(t, e, n) {
        n(null, t)
      }
    },
    "7d72": function(t, e, n) {
      "use strict";
      var i = n("8707").Buffer,
        r = i.isEncoding || function(t) {
          switch (t = "" + t, t && t.toLowerCase()) {
            case "hex":
            case "utf8":
            case "utf-8":
            case "ascii":
            case "binary":
            case "base64":
            case "ucs2":
            case "ucs-2":
            case "utf16le":
            case "utf-16le":
            case "raw":
              return !0;
            default:
              return !1
          }
        };

      function o(t) {
        var e;
        switch (this.encoding = function(t) {
            var e = function(t) {
              if (!t) return "utf8";
              var e;
              while (1) switch (t) {
                case "utf8":
                case "utf-8":
                  return "utf8";
                case "ucs2":
                case "ucs-2":
                case "utf16le":
                case "utf-16le":
                  return "utf16le";
                case "latin1":
                case "binary":
                  return "latin1";
                case "base64":
                case "ascii":
                case "hex":
                  return t;
                default:
                  if (e) return;
                  t = ("" + t).toLowerCase(), e = !0
              }
            }(t);
            if ("string" !== typeof e && (i.isEncoding === r || !r(t))) throw new Error("Unknown encoding: " + t);
            return e || t
          }(t), this.encoding) {
          case "utf16le":
            this.text = u, this.end = c, e = 4;
            break;
          case "utf8":
            this.fillLast = s, e = 4;
            break;
          case "base64":
            this.text = l, this.end = f, e = 3;
            break;
          default:
            return this.write = h, void(this.end = d)
        }
        this.lastNeed = 0, this.lastTotal = 0, this.lastChar = i.allocUnsafe(e)
      }

      function a(t) {
        return t <= 127 ? 0 : t >> 5 === 6 ? 2 : t >> 4 === 14 ? 3 : t >> 3 === 30 ? 4 : t >> 6 === 2 ? -1 : -2
      }

      function s(t) {
        var e = this.lastTotal - this.lastNeed,
          n = function(t, e, n) {
            if (128 !== (192 & e[0])) return t.lastNeed = 0, "�";
            if (t.lastNeed > 1 && e.length > 1) {
              if (128 !== (192 & e[1])) return t.lastNeed = 1, "�";
              if (t.lastNeed > 2 && e.length > 2 && 128 !== (192 & e[2])) return t.lastNeed = 2, "�"
            }
          }(this, t);
        return void 0 !== n ? n : this.lastNeed <= t.length ? (t.copy(this.lastChar, e, 0, this.lastNeed), this.lastChar.toString(this.encoding, 0, this.lastTotal)) : (t.copy(this.lastChar, e, 0, t.length), void(this.lastNeed -= t.length))
      }

      function u(t, e) {
        if ((t.length - e) % 2 === 0) {
          var n = t.toString("utf16le", e);
          if (n) {
            var i = n.charCodeAt(n.length - 1);
            if (i >= 55296 && i <= 56319) return this.lastNeed = 2, this.lastTotal = 4, this.lastChar[0] = t[t.length - 2], this.lastChar[1] = t[t.length - 1], n.slice(0, -1)
          }
          return n
        }
        return this.lastNeed = 1, this.lastTotal = 2, this.lastChar[0] = t[t.length - 1], t.toString("utf16le", e, t.length - 1)
      }

      function c(t) {
        var e = t && t.length ? this.write(t) : "";
        if (this.lastNeed) {
          var n = this.lastTotal - this.lastNeed;
          return e + this.lastChar.toString("utf16le", 0, n)
        }
        return e
      }

      function l(t, e) {
        var n = (t.length - e) % 3;
        return 0 === n ? t.toString("base64", e) : (this.lastNeed = 3 - n, this.lastTotal = 3, 1 === n ? this.lastChar[0] = t[t.length - 1] : (this.lastChar[0] = t[t.length - 2], this.lastChar[1] = t[t.length - 1]), t.toString("base64", e, t.length - n))
      }

      function f(t) {
        var e = t && t.length ? this.write(t) : "";
        return this.lastNeed ? e + this.lastChar.toString("base64", 0, 3 - this.lastNeed) : e
      }

      function h(t) {
        return t.toString(this.encoding)
      }

      function d(t) {
        return t && t.length ? this.write(t) : ""
      }
      e.StringDecoder = o, o.prototype.write = function(t) {
        if (0 === t.length) return "";
        var e, n;
        if (this.lastNeed) {
          if (e = this.fillLast(t), void 0 === e) return "";
          n = this.lastNeed, this.lastNeed = 0
        } else n = 0;
        return n < t.length ? e ? e + this.text(t, n) : this.text(t, n) : e || ""
      }, o.prototype.end = function(t) {
        var e = t && t.length ? this.write(t) : "";
        return this.lastNeed ? e + "�" : e
      }, o.prototype.text = function(t, e) {
        var n = function(t, e, n) {
          var i = e.length - 1;
          if (i < n) return 0;
          var r = a(e[i]);
          if (r >= 0) return r > 0 && (t.lastNeed = r - 1), r;
          if (--i < n || -2 === r) return 0;
          if (r = a(e[i]), r >= 0) return r > 0 && (t.lastNeed = r - 2), r;
          if (--i < n || -2 === r) return 0;
          if (r = a(e[i]), r >= 0) return r > 0 && (2 === r ? r = 0 : t.lastNeed = r - 3), r;
          return 0
        }(this, t, e);
        if (!this.lastNeed) return t.toString("utf8", e);
        this.lastTotal = n;
        var i = t.length - (n - this.lastNeed);
        return t.copy(this.lastChar, 0, i), t.toString("utf8", e, i)
      }, o.prototype.fillLast = function(t) {
        if (this.lastNeed <= t.length) return t.copy(this.lastChar, this.lastTotal - this.lastNeed, 0, this.lastNeed), this.lastChar.toString(this.encoding, 0, this.lastTotal);
        t.copy(this.lastChar, this.lastTotal - this.lastNeed, 0, t.length), this.lastNeed -= t.length
      }
    },
    "844f": function(t, e, n) {
      var i, r, o = n("3171"),
        a = n("96c1"),
        s = n("9b12").isArray;

      function u(t) {
        var e = Number(t);
        if (!isNaN(e)) return e;
        var n = t.toLowerCase();
        return "true" === n || "false" !== n && t
      }

      function c(t, e) {
        var n;
        if (i.compact) {
          if (!r[i[t + "Key"]] && (s(i.alwaysArray) ? -1 !== i.alwaysArray.indexOf(i[t + "Key"]) : i.alwaysArray) && (r[i[t + "Key"]] = []), r[i[t + "Key"]] && !s(r[i[t + "Key"]]) && (r[i[t + "Key"]] = [r[i[t + "Key"]]]), t + "Fn" in i && "string" === typeof e && (e = i[t + "Fn"](e, r)), "instruction" === t && ("instructionFn" in i || "instructionNameFn" in i))
            for (n in e)
              if (e.hasOwnProperty(n))
                if ("instructionFn" in i) e[n] = i.instructionFn(e[n], n, r);
                else {
                  var o = e[n];
                  delete e[n], e[i.instructionNameFn(n, o, r)] = o
                } s(r[i[t + "Key"]]) ? r[i[t + "Key"]].push(e) : r[i[t + "Key"]] = e
        } else {
          r[i.elementsKey] || (r[i.elementsKey] = []);
          var a = {};
          if (a[i.typeKey] = t, "instruction" === t) {
            for (n in e)
              if (e.hasOwnProperty(n)) break;
            a[i.nameKey] = "instructionNameFn" in i ? i.instructionNameFn(n, e, r) : n, i.instructionHasAttributes ? (a[i.attributesKey] = e[n][i.attributesKey], "instructionFn" in i && (a[i.attributesKey] = i.instructionFn(a[i.attributesKey], n, r))) : ("instructionFn" in i && (e[n] = i.instructionFn(e[n], n, r)), a[i.instructionKey] = e[n])
          } else t + "Fn" in i && (e = i[t + "Fn"](e, r)), a[i[t + "Key"]] = e;
          i.addParent && (a[i.parentKey] = r), r[i.elementsKey].push(a)
        }
      }

      function l(t) {
        var e;
        if ("attributesFn" in i && t && (t = i.attributesFn(t, r)), (i.trim || "attributeValueFn" in i || "attributeNameFn" in i || i.nativeTypeAttributes) && t)
          for (e in t)
            if (t.hasOwnProperty(e) && (i.trim && (t[e] = t[e].trim()), i.nativeTypeAttributes && (t[e] = u(t[e])), "attributeValueFn" in i && (t[e] = i.attributeValueFn(t[e], e, r)), "attributeNameFn" in i)) {
              var n = t[e];
              delete t[e], t[i.attributeNameFn(e, t[e], r)] = n
            } return t
      }

      function f(t) {
        var e = {};
        if (t.body && ("xml" === t.name.toLowerCase() || i.instructionHasAttributes)) {
          var n, o = /([\w:-]+)\s*=\s*(?:"([^"]*)"|'([^']*)'|(\w+))\s*/g;
          while (null !== (n = o.exec(t.body))) e[n[1]] = n[2] || n[3] || n[4];
          e = l(e)
        }
        if ("xml" === t.name.toLowerCase()) {
          if (i.ignoreDeclaration) return;
          r[i.declarationKey] = {}, Object.keys(e).length && (r[i.declarationKey][i.attributesKey] = e), i.addParent && (r[i.declarationKey][i.parentKey] = r)
        } else {
          if (i.ignoreInstruction) return;
          i.trim && (t.body = t.body.trim());
          var a = {};
          i.instructionHasAttributes && Object.keys(e).length ? (a[t.name] = {}, a[t.name][i.attributesKey] = e) : a[t.name] = t.body, c("instruction", a)
        }
      }

      function h(t, e) {
        var n;
        if ("object" === typeof t && (e = t.attributes, t = t.name), e = l(e), "elementNameFn" in i && (t = i.elementNameFn(t, r)), i.compact) {
          var o;
          if (n = {}, !i.ignoreAttributes && e && Object.keys(e).length)
            for (o in n[i.attributesKey] = {}, e) e.hasOwnProperty(o) && (n[i.attributesKey][o] = e[o]);
          !(t in r) && (s(i.alwaysArray) ? -1 !== i.alwaysArray.indexOf(t) : i.alwaysArray) && (r[t] = []), r[t] && !s(r[t]) && (r[t] = [r[t]]), s(r[t]) ? r[t].push(n) : r[t] = n
        } else r[i.elementsKey] || (r[i.elementsKey] = []), n = {}, n[i.typeKey] = "element", n[i.nameKey] = t, !i.ignoreAttributes && e && Object.keys(e).length && (n[i.attributesKey] = e), i.alwaysChildren && (n[i.elementsKey] = []), r[i.elementsKey].push(n);
        n[i.parentKey] = r, r = n
      }

      function d(t) {
        i.ignoreText || (t.trim() || i.captureSpacesBetweenElements) && (i.trim && (t = t.trim()), i.nativeType && (t = u(t)), i.sanitize && (t = t.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;")), c("text", t))
      }

      function p(t) {
        i.ignoreComment || (i.trim && (t = t.trim()), c("comment", t))
      }

      function g(t) {
        var e = r[i.parentKey];
        i.addParent || delete r[i.parentKey], r = e
      }

      function m(t) {
        i.ignoreCdata || (i.trim && (t = t.trim()), c("cdata", t))
      }

      function y(t) {
        i.ignoreDoctype || (t = t.replace(/^ /, ""), i.trim && (t = t.trim()), c("doctype", t))
      }

      function E(t) {
        t.note = t
      }
      t.exports = function(t, e) {
        var n = o.parser(!0, {}),
          s = {};
        if (r = s, i = function(t) {
            return i = a.copyOptions(t), a.ensureFlagExists("ignoreDeclaration", i), a.ensureFlagExists("ignoreInstruction", i), a.ensureFlagExists("ignoreAttributes", i), a.ensureFlagExists("ignoreText", i), a.ensureFlagExists("ignoreComment", i), a.ensureFlagExists("ignoreCdata", i), a.ensureFlagExists("ignoreDoctype", i), a.ensureFlagExists("compact", i), a.ensureFlagExists("alwaysChildren", i), a.ensureFlagExists("addParent", i), a.ensureFlagExists("trim", i), a.ensureFlagExists("nativeType", i), a.ensureFlagExists("nativeTypeAttributes", i), a.ensureFlagExists("sanitize", i), a.ensureFlagExists("instructionHasAttributes", i), a.ensureFlagExists("captureSpacesBetweenElements", i), a.ensureAlwaysArrayExists(i), a.ensureKeyExists("declaration", i), a.ensureKeyExists("instruction", i), a.ensureKeyExists("attributes", i), a.ensureKeyExists("text", i), a.ensureKeyExists("comment", i), a.ensureKeyExists("cdata", i), a.ensureKeyExists("doctype", i), a.ensureKeyExists("type", i), a.ensureKeyExists("name", i), a.ensureKeyExists("elements", i), a.ensureKeyExists("parent", i), a.checkFnExists("doctype", i), a.checkFnExists("instruction", i), a.checkFnExists("cdata", i), a.checkFnExists("comment", i), a.checkFnExists("text", i), a.checkFnExists("instructionName", i), a.checkFnExists("elementName", i), a.checkFnExists("attributeName", i), a.checkFnExists("attributeValue", i), a.checkFnExists("attributes", i), i
          }(e), n.opt = {
            strictEntities: !0
          }, n.onopentag = h, n.ontext = d, n.oncomment = p, n.onclosetag = g, n.onerror = E, n.oncdata = m, n.ondoctype = y, n.onprocessinginstruction = f, n.write(t).close(), s[i.elementsKey]) {
          var u = s[i.elementsKey];
          delete s[i.elementsKey], s[i.elementsKey] = u, delete s.text
        }
        return s
      }
    },
    8707: function(t, e, n) {
      var i = n("b639"),
        r = i.Buffer;

      function o(t, e) {
        for (var n in t) e[n] = t[n]
      }

      function a(t, e, n) {
        return r(t, e, n)
      }
      r.from && r.alloc && r.allocUnsafe && r.allocUnsafeSlow ? t.exports = i : (o(i, e), e.Buffer = a), o(r, a), a.from = function(t, e, n) {
        if ("number" === typeof t) throw new TypeError("Argument must not be a number");
        return r(t, e, n)
      }, a.alloc = function(t, e, n) {
        if ("number" !== typeof t) throw new TypeError("Argument must be a number");
        var i = r(t);
        return void 0 !== e ? "string" === typeof n ? i.fill(e, n) : i.fill(e) : i.fill(0), i
      }, a.allocUnsafe = function(t) {
        if ("number" !== typeof t) throw new TypeError("Argument must be a number");
        return r(t)
      }, a.allocUnsafeSlow = function(t) {
        if ("number" !== typeof t) throw new TypeError("Argument must be a number");
        return i.SlowBuffer(t)
      }
    },
    "8f4d": function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.httpRequest = void 0, n("d3b7");
      e.httpRequest = {
        get: function(t) {
          return i(t, "GET")
        },
        post: function(t) {
          return i(t, "POST")
        },
        method: function(t) {
          return i(t, t.method)
        }
      };

      function i(t, e) {
        return new Promise((function(n, i) {
          uni.request({
            url: t.url,
            data: t.data,
            method: e,
            header: {
              "Content-type": "application/json"
            },
            success: function(t) {
              n(t)
            },
            fail: function(t) {
              i(t)
            }
          })
        }))
      }
    },
    9152: function(t, e) {
      /*! ieee754. BSD-3-Clause License. Feross Aboukhadijeh <https://feross.org/opensource> */
      e.read = function(t, e, n, i, r) {
        var o, a, s = 8 * r - i - 1,
          u = (1 << s) - 1,
          c = u >> 1,
          l = -7,
          f = n ? r - 1 : 0,
          h = n ? -1 : 1,
          d = t[e + f];
        for (f += h, o = d & (1 << -l) - 1, d >>= -l, l += s; l > 0; o = 256 * o + t[e + f], f += h, l -= 8);
        for (a = o & (1 << -l) - 1, o >>= -l, l += i; l > 0; a = 256 * a + t[e + f], f += h, l -= 8);
        if (0 === o) o = 1 - c;
        else {
          if (o === u) return a ? NaN : 1 / 0 * (d ? -1 : 1);
          a += Math.pow(2, i), o -= c
        }
        return (d ? -1 : 1) * a * Math.pow(2, o - i)
      }, e.write = function(t, e, n, i, r, o) {
        var a, s, u, c = 8 * o - r - 1,
          l = (1 << c) - 1,
          f = l >> 1,
          h = 23 === r ? Math.pow(2, -24) - Math.pow(2, -77) : 0,
          d = i ? 0 : o - 1,
          p = i ? 1 : -1,
          g = e < 0 || 0 === e && 1 / e < 0 ? 1 : 0;
        for (e = Math.abs(e), isNaN(e) || e === 1 / 0 ? (s = isNaN(e) ? 1 : 0, a = l) : (a = Math.floor(Math.log(e) / Math.LN2), e * (u = Math.pow(2, -a)) < 1 && (a--, u *= 2), e += a + f >= 1 ? h / u : h * Math.pow(2, 1 - f), e * u >= 2 && (a++, u /= 2), a + f >= l ? (s = 0, a = l) : a + f >= 1 ? (s = (e * u - 1) * Math.pow(2, r), a += f) : (s = e * Math.pow(2, f - 1) * Math.pow(2, r), a = 0)); r >= 8; t[n + d] = 255 & s, d += p, s /= 256, r -= 8);
        for (a = a << r | s, c += r; c > 0; t[n + d] = 255 & a, d += p, a /= 256, c -= 8);
        t[n + d - p] |= 128 * g
      }
    },
    "93ac": function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.md5 = void 0, n("d401"), n("d3b7"), n("ac1f"), n("25f0"), n("5319");
      e.md5 = function(t, e) {
        function n(t, e) {
          return t << e | t >>> 32 - e
        }

        function i(t, e) {
          var n, i, r, o, a;
          return r = 2147483648 & t, o = 2147483648 & e, n = 1073741824 & t, i = 1073741824 & e, a = (1073741823 & t) + (1073741823 & e), n & i ? 2147483648 ^ a ^ r ^ o : n | i ? 1073741824 & a ? 3221225472 ^ a ^ r ^ o : 1073741824 ^ a ^ r ^ o : a ^ r ^ o
        }

        function r(t, e, r, o, a, s, u) {
          return t = i(t, i(i(function(t, e, n) {
            return t & e | ~t & n
          }(e, r, o), a), u)), i(n(t, s), e)
        }

        function o(t, e, r, o, a, s, u) {
          return t = i(t, i(i(function(t, e, n) {
            return t & n | e & ~n
          }(e, r, o), a), u)), i(n(t, s), e)
        }

        function a(t, e, r, o, a, s, u) {
          return t = i(t, i(i(function(t, e, n) {
            return t ^ e ^ n
          }(e, r, o), a), u)), i(n(t, s), e)
        }

        function s(t, e, r, o, a, s, u) {
          return t = i(t, i(i(function(t, e, n) {
            return e ^ (t | ~n)
          }(e, r, o), a), u)), i(n(t, s), e)
        }

        function u(t) {
          var e, n, i = "",
            r = "";
          for (n = 0; n <= 3; n++) e = t >>> 8 * n & 255, r = "0" + e.toString(16), i += r.substr(r.length - 2, 2);
          return i
        }
        var c, l, f, h, d, p, g, m, y, E = Array();
        for (t = function(t) {
            t = t.replace(/\r\n/g, "\n");
            for (var e = "", n = 0; n < t.length; n++) {
              var i = t.charCodeAt(n);
              i < 128 ? e += String.fromCharCode(i) : i > 127 && i < 2048 ? (e += String.fromCharCode(i >> 6 | 192), e += String.fromCharCode(63 & i | 128)) : (e += String.fromCharCode(i >> 12 | 224), e += String.fromCharCode(i >> 6 & 63 | 128), e += String.fromCharCode(63 & i | 128))
            }
            return e
          }(t), E = function(t) {
            var e, n = t.length,
              i = n + 8,
              r = (i - i % 64) / 64,
              o = 16 * (r + 1),
              a = Array(o - 1),
              s = 0,
              u = 0;
            while (u < n) e = (u - u % 4) / 4, s = u % 4 * 8, a[e] = a[e] | t.charCodeAt(u) << s, u++;
            return e = (u - u % 4) / 4, s = u % 4 * 8, a[e] = a[e] | 128 << s, a[o - 2] = n << 3, a[o - 1] = n >>> 29, a
          }(t), p = 1732584193, g = 4023233417, m = 2562383102, y = 271733878, c = 0; c < E.length; c += 16) l = p, f = g, h = m, d = y, p = r(p, g, m, y, E[c + 0], 7, 3614090360), y = r(y, p, g, m, E[c + 1], 12, 3905402710), m = r(m, y, p, g, E[c + 2], 17, 606105819), g = r(g, m, y, p, E[c + 3], 22, 3250441966), p = r(p, g, m, y, E[c + 4], 7, 4118548399), y = r(y, p, g, m, E[c + 5], 12, 1200080426), m = r(m, y, p, g, E[c + 6], 17, 2821735955), g = r(g, m, y, p, E[c + 7], 22, 4249261313), p = r(p, g, m, y, E[c + 8], 7, 1770035416), y = r(y, p, g, m, E[c + 9], 12, 2336552879), m = r(m, y, p, g, E[c + 10], 17, 4294925233), g = r(g, m, y, p, E[c + 11], 22, 2304563134), p = r(p, g, m, y, E[c + 12], 7, 1804603682), y = r(y, p, g, m, E[c + 13], 12, 4254626195), m = r(m, y, p, g, E[c + 14], 17, 2792965006), g = r(g, m, y, p, E[c + 15], 22, 1236535329), p = o(p, g, m, y, E[c + 1], 5, 4129170786), y = o(y, p, g, m, E[c + 6], 9, 3225465664), m = o(m, y, p, g, E[c + 11], 14, 643717713), g = o(g, m, y, p, E[c + 0], 20, 3921069994), p = o(p, g, m, y, E[c + 5], 5, 3593408605), y = o(y, p, g, m, E[c + 10], 9, 38016083), m = o(m, y, p, g, E[c + 15], 14, 3634488961), g = o(g, m, y, p, E[c + 4], 20, 3889429448), p = o(p, g, m, y, E[c + 9], 5, 568446438), y = o(y, p, g, m, E[c + 14], 9, 3275163606), m = o(m, y, p, g, E[c + 3], 14, 4107603335), g = o(g, m, y, p, E[c + 8], 20, 1163531501), p = o(p, g, m, y, E[c + 13], 5, 2850285829), y = o(y, p, g, m, E[c + 2], 9, 4243563512), m = o(m, y, p, g, E[c + 7], 14, 1735328473), g = o(g, m, y, p, E[c + 12], 20, 2368359562), p = a(p, g, m, y, E[c + 5], 4, 4294588738), y = a(y, p, g, m, E[c + 8], 11, 2272392833), m = a(m, y, p, g, E[c + 11], 16, 1839030562), g = a(g, m, y, p, E[c + 14], 23, 4259657740), p = a(p, g, m, y, E[c + 1], 4, 2763975236), y = a(y, p, g, m, E[c + 4], 11, 1272893353), m = a(m, y, p, g, E[c + 7], 16, 4139469664), g = a(g, m, y, p, E[c + 10], 23, 3200236656), p = a(p, g, m, y, E[c + 13], 4, 681279174), y = a(y, p, g, m, E[c + 0], 11, 3936430074), m = a(m, y, p, g, E[c + 3], 16, 3572445317), g = a(g, m, y, p, E[c + 6], 23, 76029189), p = a(p, g, m, y, E[c + 9], 4, 3654602809), y = a(y, p, g, m, E[c + 12], 11, 3873151461), m = a(m, y, p, g, E[c + 15], 16, 530742520), g = a(g, m, y, p, E[c + 2], 23, 3299628645), p = s(p, g, m, y, E[c + 0], 6, 4096336452), y = s(y, p, g, m, E[c + 7], 10, 1126891415), m = s(m, y, p, g, E[c + 14], 15, 2878612391), g = s(g, m, y, p, E[c + 5], 21, 4237533241), p = s(p, g, m, y, E[c + 12], 6, 1700485571), y = s(y, p, g, m, E[c + 3], 10, 2399980690), m = s(m, y, p, g, E[c + 10], 15, 4293915773), g = s(g, m, y, p, E[c + 1], 21, 2240044497), p = s(p, g, m, y, E[c + 8], 6, 1873313359), y = s(y, p, g, m, E[c + 15], 10, 4264355552), m = s(m, y, p, g, E[c + 6], 15, 2734768916), g = s(g, m, y, p, E[c + 13], 21, 1309151649), p = s(p, g, m, y, E[c + 4], 6, 4149444226), y = s(y, p, g, m, E[c + 11], 10, 3174756917), m = s(m, y, p, g, E[c + 2], 15, 718787259), g = s(g, m, y, p, E[c + 9], 21, 3951481745), p = i(p, l), g = i(g, f), m = i(m, h), y = i(y, d);
        return e ? (u(p) + u(g) + u(m) + u(y)).toLowerCase() : (u(p) + u(g) + u(m) + u(y)).toUpperCase()
      }
    },
    "966d": function(t, e, n) {
      "use strict";
      (function(e) {
        "undefined" === typeof e || !e.version || 0 === e.version.indexOf("v0.") || 0 === e.version.indexOf("v1.") && 0 !== e.version.indexOf("v1.8.") ? t.exports = {
          nextTick: function(t, n, i, r) {
            if ("function" !== typeof t) throw new TypeError('"callback" argument must be a function');
            var o, a, s = arguments.length;
            switch (s) {
              case 0:
              case 1:
                return e.nextTick(t);
              case 2:
                return e.nextTick((function() {
                  t.call(null, n)
                }));
              case 3:
                return e.nextTick((function() {
                  t.call(null, n, i)
                }));
              case 4:
                return e.nextTick((function() {
                  t.call(null, n, i, r)
                }));
              default:
                o = new Array(s - 1), a = 0;
                while (a < o.length) o[a++] = arguments[a];
                return e.nextTick((function() {
                  t.apply(null, o)
                }))
            }
          }
        } : t.exports = e
      }).call(this, n("4362"))
    },
    "96c1": function(t, e, n) {
      var i = n("9b12").isArray;
      t.exports = {
        copyOptions: function(t) {
          var e, n = {};
          for (e in t) t.hasOwnProperty(e) && (n[e] = t[e]);
          return n
        },
        ensureFlagExists: function(t, e) {
          t in e && "boolean" === typeof e[t] || (e[t] = !1)
        },
        ensureSpacesExists: function(t) {
          (!("spaces" in t) || "number" !== typeof t.spaces && "string" !== typeof t.spaces) && (t.spaces = 0)
        },
        ensureAlwaysArrayExists: function(t) {
          "alwaysArray" in t && ("boolean" === typeof t.alwaysArray || i(t.alwaysArray)) || (t.alwaysArray = !1)
        },
        ensureKeyExists: function(t, e) {
          t + "Key" in e && "string" === typeof e[t + "Key"] || (e[t + "Key"] = e.compact ? "_" + t : t)
        },
        checkFnExists: function(t, e) {
          return t + "Fn" in e
        }
      }
    },
    "9b12": function(t, e) {
      t.exports = {
        isArray: function(t) {
          return Array.isArray ? Array.isArray(t) : "[object Array]" === Object.prototype.toString.call(t)
        }
      }
    },
    ad71: function(t, e, n) {
      "use strict";
      (function(e, i) {
        var r = n("966d");
        t.exports = b;
        var o, a = n("e3db");
        b.ReadableState = E;
        n("faa1").EventEmitter;
        var s = function(t, e) {
            return t.listeners(e).length
          },
          u = n("429b"),
          c = n("8707").Buffer,
          l = ("undefined" !== typeof e ? e : "undefined" !== typeof window ? window : "undefined" !== typeof self ? self : {}).Uint8Array || function() {};
        var f = Object.create(n("3a7c"));
        f.inherits = n("3fb5");
        var h = n(1),
          d = void 0;
        d = h && h.debuglog ? h.debuglog("stream") : function() {};
        var p, g = n("5e1a"),
          m = n("4681");
        f.inherits(b, u);
        var y = ["error", "close", "destroy", "pause", "resume"];

        function E(t, e) {
          o = o || n("b19a"), t = t || {};
          var i = e instanceof o;
          this.objectMode = !!t.objectMode, i && (this.objectMode = this.objectMode || !!t.readableObjectMode);
          var r = t.highWaterMark,
            a = t.readableHighWaterMark,
            s = this.objectMode ? 16 : 16384;
          this.highWaterMark = r || 0 === r ? r : i && (a || 0 === a) ? a : s, this.highWaterMark = Math.floor(this.highWaterMark), this.buffer = new g, this.length = 0, this.pipes = null, this.pipesCount = 0, this.flowing = null, this.ended = !1, this.endEmitted = !1, this.reading = !1, this.sync = !0, this.needReadable = !1, this.emittedReadable = !1, this.readableListening = !1, this.resumeScheduled = !1, this.destroyed = !1, this.defaultEncoding = t.defaultEncoding || "utf8", this.awaitDrain = 0, this.readingMore = !1, this.decoder = null, this.encoding = null, t.encoding && (p || (p = n("7d72").StringDecoder), this.decoder = new p(t.encoding), this.encoding = t.encoding)
        }

        function b(t) {
          if (o = o || n("b19a"), !(this instanceof b)) return new b(t);
          this._readableState = new E(t, this), this.readable = !0, t && ("function" === typeof t.read && (this._read = t.read), "function" === typeof t.destroy && (this._destroy = t.destroy)), u.call(this)
        }

        function v(t, e, n, i, r) {
          var o, a = t._readableState;
          null === e ? (a.reading = !1, function(t, e) {
            if (e.ended) return;
            if (e.decoder) {
              var n = e.decoder.end();
              n && n.length && (e.buffer.push(n), e.length += e.objectMode ? 1 : n.length)
            }
            e.ended = !0, A(t)
          }(t, a)) : (r || (o = function(t, e) {
            var n;
            (function(t) {
              return c.isBuffer(t) || t instanceof l
            })(e) || "string" === typeof e || void 0 === e || t.objectMode || (n = new TypeError("Invalid non-string/buffer chunk"));
            return n
          }(a, e)), o ? t.emit("error", o) : a.objectMode || e && e.length > 0 ? ("string" === typeof e || a.objectMode || Object.getPrototypeOf(e) === c.prototype || (e = function(t) {
            return c.from(t)
          }(e)), i ? a.endEmitted ? t.emit("error", new Error("stream.unshift() after end event")) : w(t, a, e, !0) : a.ended ? t.emit("error", new Error("stream.push() after EOF")) : (a.reading = !1, a.decoder && !n ? (e = a.decoder.write(e), a.objectMode || 0 !== e.length ? w(t, a, e, !1) : N(t, a)) : w(t, a, e, !1))) : i || (a.reading = !1));
          return function(t) {
            return !t.ended && (t.needReadable || t.length < t.highWaterMark || 0 === t.length)
          }(a)
        }

        function w(t, e, n, i) {
          e.flowing && 0 === e.length && !e.sync ? (t.emit("data", n), t.read(0)) : (e.length += e.objectMode ? 1 : n.length, i ? e.buffer.unshift(n) : e.buffer.push(n), e.needReadable && A(t)), N(t, e)
        }
        Object.defineProperty(b.prototype, "destroyed", {
          get: function() {
            return void 0 !== this._readableState && this._readableState.destroyed
          },
          set: function(t) {
            this._readableState && (this._readableState.destroyed = t)
          }
        }), b.prototype.destroy = m.destroy, b.prototype._undestroy = m.undestroy, b.prototype._destroy = function(t, e) {
          this.push(null), e(t)
        }, b.prototype.push = function(t, e) {
          var n, i = this._readableState;
          return i.objectMode ? n = !0 : "string" === typeof t && (e = e || i.defaultEncoding, e !== i.encoding && (t = c.from(t, e), e = ""), n = !0), v(this, t, e, !1, n)
        }, b.prototype.unshift = function(t) {
          return v(this, t, null, !0, !1)
        }, b.prototype.isPaused = function() {
          return !1 === this._readableState.flowing
        }, b.prototype.setEncoding = function(t) {
          return p || (p = n("7d72").StringDecoder), this._readableState.decoder = new p(t), this._readableState.encoding = t, this
        };

        function T(t, e) {
          return t <= 0 || 0 === e.length && e.ended ? 0 : e.objectMode ? 1 : t !== t ? e.flowing && e.length ? e.buffer.head.data.length : e.length : (t > e.highWaterMark && (e.highWaterMark = function(t) {
            return t >= 8388608 ? t = 8388608 : (t--, t |= t >>> 1, t |= t >>> 2, t |= t >>> 4, t |= t >>> 8, t |= t >>> 16, t++), t
          }(t)), t <= e.length ? t : e.ended ? e.length : (e.needReadable = !0, 0))
        }

        function A(t) {
          var e = t._readableState;
          e.needReadable = !1, e.emittedReadable || (d("emitReadable", e.flowing), e.emittedReadable = !0, e.sync ? r.nextTick(C, t) : C(t))
        }

        function C(t) {
          d("emit readable"), t.emit("readable"), P(t)
        }

        function N(t, e) {
          e.readingMore || (e.readingMore = !0, r.nextTick(_, t, e))
        }

        function _(t, e) {
          var n = e.length;
          while (!e.reading && !e.flowing && !e.ended && e.length < e.highWaterMark) {
            if (d("maybeReadMore read 0"), t.read(0), n === e.length) break;
            n = e.length
          }
          e.readingMore = !1
        }

        function S(t) {
          d("readable nexttick read 0"), t.read(0)
        }

        function D(t, e) {
          e.reading || (d("resume read 0"), t.read(0)), e.resumeScheduled = !1, e.awaitDrain = 0, t.emit("resume"), P(t), e.flowing && !e.reading && t.read(0)
        }

        function P(t) {
          var e = t._readableState;
          d("flow", e.flowing);
          while (e.flowing && null !== t.read());
        }

        function I(t, e) {
          return 0 === e.length ? null : (e.objectMode ? n = e.buffer.shift() : !t || t >= e.length ? (n = e.decoder ? e.buffer.join("") : 1 === e.buffer.length ? e.buffer.head.data : e.buffer.concat(e.length), e.buffer.clear()) : n = function(t, e, n) {
            var i;
            t < e.head.data.length ? (i = e.head.data.slice(0, t), e.head.data = e.head.data.slice(t)) : i = t === e.head.data.length ? e.shift() : n ? function(t, e) {
              var n = e.head,
                i = 1,
                r = n.data;
              t -= r.length;
              while (n = n.next) {
                var o = n.data,
                  a = t > o.length ? o.length : t;
                if (a === o.length ? r += o : r += o.slice(0, t), t -= a, 0 === t) {
                  a === o.length ? (++i, n.next ? e.head = n.next : e.head = e.tail = null) : (e.head = n, n.data = o.slice(a));
                  break
                }++i
              }
              return e.length -= i, r
            }(t, e) : function(t, e) {
              var n = c.allocUnsafe(t),
                i = e.head,
                r = 1;
              i.data.copy(n), t -= i.data.length;
              while (i = i.next) {
                var o = i.data,
                  a = t > o.length ? o.length : t;
                if (o.copy(n, n.length - t, 0, a), t -= a, 0 === t) {
                  a === o.length ? (++r, i.next ? e.head = i.next : e.head = e.tail = null) : (e.head = i, i.data = o.slice(a));
                  break
                }++r
              }
              return e.length -= r, n
            }(t, e);
            return i
          }(t, e.buffer, e.decoder), n);
          var n
        }

        function M(t) {
          var e = t._readableState;
          if (e.length > 0) throw new Error('"endReadable()" called on non-empty stream');
          e.endEmitted || (e.ended = !0, r.nextTick(R, e, t))
        }

        function R(t, e) {
          t.endEmitted || 0 !== t.length || (t.endEmitted = !0, e.readable = !1, e.emit("end"))
        }

        function O(t, e) {
          for (var n = 0, i = t.length; n < i; n++)
            if (t[n] === e) return n;
          return -1
        }
        b.prototype.read = function(t) {
          d("read", t), t = parseInt(t, 10);
          var e = this._readableState,
            n = t;
          if (0 !== t && (e.emittedReadable = !1), 0 === t && e.needReadable && (e.length >= e.highWaterMark || e.ended)) return d("read: emitReadable", e.length, e.ended), 0 === e.length && e.ended ? M(this) : A(this), null;
          if (t = T(t, e), 0 === t && e.ended) return 0 === e.length && M(this), null;
          var i, r = e.needReadable;
          return d("need readable", r), (0 === e.length || e.length - t < e.highWaterMark) && (r = !0, d("length less than watermark", r)), e.ended || e.reading ? (r = !1, d("reading or ended", r)) : r && (d("do read"), e.reading = !0, e.sync = !0, 0 === e.length && (e.needReadable = !0), this._read(e.highWaterMark), e.sync = !1, e.reading || (t = T(n, e))), i = t > 0 ? I(t, e) : null, null === i ? (e.needReadable = !0, t = 0) : e.length -= t, 0 === e.length && (e.ended || (e.needReadable = !0), n !== t && e.ended && M(this)), null !== i && this.emit("data", i), i
        }, b.prototype._read = function(t) {
          this.emit("error", new Error("_read() is not implemented"))
        }, b.prototype.pipe = function(t, e) {
          var n = this,
            o = this._readableState;
          switch (o.pipesCount) {
            case 0:
              o.pipes = t;
              break;
            case 1:
              o.pipes = [o.pipes, t];
              break;
            default:
              o.pipes.push(t);
              break
          }
          o.pipesCount += 1, d("pipe count=%d opts=%j", o.pipesCount, e);
          var u = (!e || !1 !== e.end) && t !== i.stdout && t !== i.stderr,
            c = u ? f : v;

          function l(e, i) {
            d("onunpipe"), e === n && i && !1 === i.hasUnpiped && (i.hasUnpiped = !0, function() {
              d("cleanup"), t.removeListener("close", E), t.removeListener("finish", b), t.removeListener("drain", h), t.removeListener("error", y), t.removeListener("unpipe", l), n.removeListener("end", f), n.removeListener("end", v), n.removeListener("data", m), p = !0, !o.awaitDrain || t._writableState && !t._writableState.needDrain || h()
            }())
          }

          function f() {
            d("onend"), t.end()
          }
          o.endEmitted ? r.nextTick(c) : n.once("end", c), t.on("unpipe", l);
          var h = function(t) {
            return function() {
              var e = t._readableState;
              d("pipeOnDrain", e.awaitDrain), e.awaitDrain && e.awaitDrain--, 0 === e.awaitDrain && s(t, "data") && (e.flowing = !0, P(t))
            }
          }(n);
          t.on("drain", h);
          var p = !1;
          var g = !1;

          function m(e) {
            d("ondata"), g = !1;
            var i = t.write(e);
            !1 !== i || g || ((1 === o.pipesCount && o.pipes === t || o.pipesCount > 1 && -1 !== O(o.pipes, t)) && !p && (d("false write response, pause", o.awaitDrain), o.awaitDrain++, g = !0), n.pause())
          }

          function y(e) {
            d("onerror", e), v(), t.removeListener("error", y), 0 === s(t, "error") && t.emit("error", e)
          }

          function E() {
            t.removeListener("finish", b), v()
          }

          function b() {
            d("onfinish"), t.removeListener("close", E), v()
          }

          function v() {
            d("unpipe"), n.unpipe(t)
          }
          return n.on("data", m),
            function(t, e, n) {
              if ("function" === typeof t.prependListener) return t.prependListener(e, n);
              t._events && t._events[e] ? a(t._events[e]) ? t._events[e].unshift(n) : t._events[e] = [n, t._events[e]] : t.on(e, n)
            }(t, "error", y), t.once("close", E), t.once("finish", b), t.emit("pipe", n), o.flowing || (d("pipe resume"), n.resume()), t
        }, b.prototype.unpipe = function(t) {
          var e = this._readableState,
            n = {
              hasUnpiped: !1
            };
          if (0 === e.pipesCount) return this;
          if (1 === e.pipesCount) return t && t !== e.pipes || (t || (t = e.pipes), e.pipes = null, e.pipesCount = 0, e.flowing = !1, t && t.emit("unpipe", this, n)), this;
          if (!t) {
            var i = e.pipes,
              r = e.pipesCount;
            e.pipes = null, e.pipesCount = 0, e.flowing = !1;
            for (var o = 0; o < r; o++) i[o].emit("unpipe", this, {
              hasUnpiped: !1
            });
            return this
          }
          var a = O(e.pipes, t);
          return -1 === a || (e.pipes.splice(a, 1), e.pipesCount -= 1, 1 === e.pipesCount && (e.pipes = e.pipes[0]), t.emit("unpipe", this, n)), this
        }, b.prototype.on = function(t, e) {
          var n = u.prototype.on.call(this, t, e);
          if ("data" === t) !1 !== this._readableState.flowing && this.resume();
          else if ("readable" === t) {
            var i = this._readableState;
            i.endEmitted || i.readableListening || (i.readableListening = i.needReadable = !0, i.emittedReadable = !1, i.reading ? i.length && A(this) : r.nextTick(S, this))
          }
          return n
        }, b.prototype.addListener = b.prototype.on, b.prototype.resume = function() {
          var t = this._readableState;
          return t.flowing || (d("resume"), t.flowing = !0, function(t, e) {
            e.resumeScheduled || (e.resumeScheduled = !0, r.nextTick(D, t, e))
          }(this, t)), this
        }, b.prototype.pause = function() {
          return d("call pause flowing=%j", this._readableState.flowing), !1 !== this._readableState.flowing && (d("pause"), this._readableState.flowing = !1, this.emit("pause")), this
        }, b.prototype.wrap = function(t) {
          var e = this,
            n = this._readableState,
            i = !1;
          for (var r in t.on("end", (function() {
              if (d("wrapped end"), n.decoder && !n.ended) {
                var t = n.decoder.end();
                t && t.length && e.push(t)
              }
              e.push(null)
            })), t.on("data", (function(r) {
              if (d("wrapped data"), n.decoder && (r = n.decoder.write(r)), (!n.objectMode || null !== r && void 0 !== r) && (n.objectMode || r && r.length)) {
                var o = e.push(r);
                o || (i = !0, t.pause())
              }
            })), t) void 0 === this[r] && "function" === typeof t[r] && (this[r] = function(e) {
            return function() {
              return t[e].apply(t, arguments)
            }
          }(r));
          for (var o = 0; o < y.length; o++) t.on(y[o], this.emit.bind(this, y[o]));
          return this._read = function(e) {
            d("wrapped _read", e), i && (i = !1, t.resume())
          }, this
        }, Object.defineProperty(b.prototype, "readableHighWaterMark", {
          enumerable: !1,
          get: function() {
            return this._readableState.highWaterMark
          }
        }), b._fromList = I
      }).call(this, n("c8ba"), n("4362"))
    },
    b19a: function(t, e, n) {
      "use strict";
      var i = n("966d"),
        r = Object.keys || function(t) {
          var e = [];
          for (var n in t) e.push(n);
          return e
        };
      t.exports = f;
      var o = Object.create(n("3a7c"));
      o.inherits = n("3fb5");
      var a = n("ad71"),
        s = n("dc14");
      o.inherits(f, a);
      for (var u = r(s.prototype), c = 0; c < u.length; c++) {
        var l = u[c];
        f.prototype[l] || (f.prototype[l] = s.prototype[l])
      }

      function f(t) {
        if (!(this instanceof f)) return new f(t);
        a.call(this, t), s.call(this, t), t && !1 === t.readable && (this.readable = !1), t && !1 === t.writable && (this.writable = !1), this.allowHalfOpen = !0, t && !1 === t.allowHalfOpen && (this.allowHalfOpen = !1), this.once("end", h)
      }

      function h() {
        this.allowHalfOpen || this._writableState.ended || i.nextTick(d, this)
      }

      function d(t) {
        t.end()
      }
      Object.defineProperty(f.prototype, "writableHighWaterMark", {
        enumerable: !1,
        get: function() {
          return this._writableState.highWaterMark
        }
      }), Object.defineProperty(f.prototype, "destroyed", {
        get: function() {
          return void 0 !== this._readableState && void 0 !== this._writableState && (this._readableState.destroyed && this._writableState.destroyed)
        },
        set: function(t) {
          void 0 !== this._readableState && void 0 !== this._writableState && (this._readableState.destroyed = t, this._writableState.destroyed = t)
        }
      }), f.prototype._destroy = function(t, e) {
        this.push(null), this.end(), i.nextTick(e, t)
      }
    },
    b639: function(t, e, n) {
      "use strict";
      (function(t) {
        /*!
         * The buffer module from node.js, for the browser.
         *
         * @author   Feross Aboukhadijeh <http://feross.org>
         * @license  MIT
         */
        var i = n("1fb5"),
          r = n("9152"),
          o = n("e3db");

        function a() {
          return u.TYPED_ARRAY_SUPPORT ? 2147483647 : 1073741823
        }

        function s(t, e) {
          if (a() < e) throw new RangeError("Invalid typed array length");
          return u.TYPED_ARRAY_SUPPORT ? (t = new Uint8Array(e), t.__proto__ = u.prototype) : (null === t && (t = new u(e)), t.length = e), t
        }

        function u(t, e, n) {
          if (!u.TYPED_ARRAY_SUPPORT && !(this instanceof u)) return new u(t, e, n);
          if ("number" === typeof t) {
            if ("string" === typeof e) throw new Error("If encoding is specified then the first argument must be a string");
            return f(this, t)
          }
          return c(this, t, e, n)
        }

        function c(t, e, n, i) {
          if ("number" === typeof e) throw new TypeError('"value" argument must not be a number');
          return "undefined" !== typeof ArrayBuffer && e instanceof ArrayBuffer ? function(t, e, n, i) {
            if (e.byteLength, n < 0 || e.byteLength < n) throw new RangeError("'offset' is out of bounds");
            if (e.byteLength < n + (i || 0)) throw new RangeError("'length' is out of bounds");
            e = void 0 === n && void 0 === i ? new Uint8Array(e) : void 0 === i ? new Uint8Array(e, n) : new Uint8Array(e, n, i);
            u.TYPED_ARRAY_SUPPORT ? (t = e, t.__proto__ = u.prototype) : t = h(t, e);
            return t
          }(t, e, n, i) : "string" === typeof e ? function(t, e, n) {
            "string" === typeof n && "" !== n || (n = "utf8");
            if (!u.isEncoding(n)) throw new TypeError('"encoding" must be a valid string encoding');
            var i = 0 | p(e, n);
            t = s(t, i);
            var r = t.write(e, n);
            r !== i && (t = t.slice(0, r));
            return t
          }(t, e, n) : function(t, e) {
            if (u.isBuffer(e)) {
              var n = 0 | d(e.length);
              return t = s(t, n), 0 === t.length ? t : (e.copy(t, 0, 0, n), t)
            }
            if (e) {
              if ("undefined" !== typeof ArrayBuffer && e.buffer instanceof ArrayBuffer || "length" in e) return "number" !== typeof e.length || function(t) {
                return t !== t
              }(e.length) ? s(t, 0) : h(t, e);
              if ("Buffer" === e.type && o(e.data)) return h(t, e.data)
            }
            throw new TypeError("First argument must be a string, Buffer, ArrayBuffer, Array, or array-like object.")
          }(t, e)
        }

        function l(t) {
          if ("number" !== typeof t) throw new TypeError('"size" argument must be a number');
          if (t < 0) throw new RangeError('"size" argument must not be negative')
        }

        function f(t, e) {
          if (l(e), t = s(t, e < 0 ? 0 : 0 | d(e)), !u.TYPED_ARRAY_SUPPORT)
            for (var n = 0; n < e; ++n) t[n] = 0;
          return t
        }

        function h(t, e) {
          var n = e.length < 0 ? 0 : 0 | d(e.length);
          t = s(t, n);
          for (var i = 0; i < n; i += 1) t[i] = 255 & e[i];
          return t
        }

        function d(t) {
          if (t >= a()) throw new RangeError("Attempt to allocate Buffer larger than maximum size: 0x" + a().toString(16) + " bytes");
          return 0 | t
        }

        function p(t, e) {
          if (u.isBuffer(t)) return t.length;
          if ("undefined" !== typeof ArrayBuffer && "function" === typeof ArrayBuffer.isView && (ArrayBuffer.isView(t) || t instanceof ArrayBuffer)) return t.byteLength;
          "string" !== typeof t && (t = "" + t);
          var n = t.length;
          if (0 === n) return 0;
          for (var i = !1;;) switch (e) {
            case "ascii":
            case "latin1":
            case "binary":
              return n;
            case "utf8":
            case "utf-8":
            case void 0:
              return $(t).length;
            case "ucs2":
            case "ucs-2":
            case "utf16le":
            case "utf-16le":
              return 2 * n;
            case "hex":
              return n >>> 1;
            case "base64":
              return K(t).length;
            default:
              if (i) return $(t).length;
              e = ("" + e).toLowerCase(), i = !0
          }
        }

        function g(t, e, n) {
          var i = !1;
          if ((void 0 === e || e < 0) && (e = 0), e > this.length) return "";
          if ((void 0 === n || n > this.length) && (n = this.length), n <= 0) return "";
          if (n >>>= 0, e >>>= 0, n <= e) return "";
          t || (t = "utf8");
          while (1) switch (t) {
            case "hex":
              return P(this, e, n);
            case "utf8":
            case "utf-8":
              return _(this, e, n);
            case "ascii":
              return S(this, e, n);
            case "latin1":
            case "binary":
              return D(this, e, n);
            case "base64":
              return N(this, e, n);
            case "ucs2":
            case "ucs-2":
            case "utf16le":
            case "utf-16le":
              return I(this, e, n);
            default:
              if (i) throw new TypeError("Unknown encoding: " + t);
              t = (t + "").toLowerCase(), i = !0
          }
        }

        function m(t, e, n) {
          var i = t[e];
          t[e] = t[n], t[n] = i
        }

        function y(t, e, n, i, r) {
          if (0 === t.length) return -1;
          if ("string" === typeof n ? (i = n, n = 0) : n > 2147483647 ? n = 2147483647 : n < -2147483648 && (n = -2147483648), n = +n, isNaN(n) && (n = r ? 0 : t.length - 1), n < 0 && (n = t.length + n), n >= t.length) {
            if (r) return -1;
            n = t.length - 1
          } else if (n < 0) {
            if (!r) return -1;
            n = 0
          }
          if ("string" === typeof e && (e = u.from(e, i)), u.isBuffer(e)) return 0 === e.length ? -1 : E(t, e, n, i, r);
          if ("number" === typeof e) return e &= 255, u.TYPED_ARRAY_SUPPORT && "function" === typeof Uint8Array.prototype.indexOf ? r ? Uint8Array.prototype.indexOf.call(t, e, n) : Uint8Array.prototype.lastIndexOf.call(t, e, n) : E(t, [e], n, i, r);
          throw new TypeError("val must be string, number or Buffer")
        }

        function E(t, e, n, i, r) {
          var o, a = 1,
            s = t.length,
            u = e.length;
          if (void 0 !== i && (i = String(i).toLowerCase(), "ucs2" === i || "ucs-2" === i || "utf16le" === i || "utf-16le" === i)) {
            if (t.length < 2 || e.length < 2) return -1;
            a = 2, s /= 2, u /= 2, n /= 2
          }

          function c(t, e) {
            return 1 === a ? t[e] : t.readUInt16BE(e * a)
          }
          if (r) {
            var l = -1;
            for (o = n; o < s; o++)
              if (c(t, o) === c(e, -1 === l ? 0 : o - l)) {
                if (-1 === l && (l = o), o - l + 1 === u) return l * a
              } else - 1 !== l && (o -= o - l), l = -1
          } else
            for (n + u > s && (n = s - u), o = n; o >= 0; o--) {
              for (var f = !0, h = 0; h < u; h++)
                if (c(t, o + h) !== c(e, h)) {
                  f = !1;
                  break
                } if (f) return o
            }
          return -1
        }

        function b(t, e, n, i) {
          n = Number(n) || 0;
          var r = t.length - n;
          i ? (i = Number(i), i > r && (i = r)) : i = r;
          var o = e.length;
          if (o % 2 !== 0) throw new TypeError("Invalid hex string");
          i > o / 2 && (i = o / 2);
          for (var a = 0; a < i; ++a) {
            var s = parseInt(e.substr(2 * a, 2), 16);
            if (isNaN(s)) return a;
            t[n + a] = s
          }
          return a
        }

        function v(t, e, n, i) {
          return V($(e, t.length - n), t, n, i)
        }

        function w(t, e, n, i) {
          return V(function(t) {
            for (var e = [], n = 0; n < t.length; ++n) e.push(255 & t.charCodeAt(n));
            return e
          }(e), t, n, i)
        }

        function T(t, e, n, i) {
          return w(t, e, n, i)
        }

        function A(t, e, n, i) {
          return V(K(e), t, n, i)
        }

        function C(t, e, n, i) {
          return V(function(t, e) {
            for (var n, i, r, o = [], a = 0; a < t.length; ++a) {
              if ((e -= 2) < 0) break;
              n = t.charCodeAt(a), i = n >> 8, r = n % 256, o.push(r), o.push(i)
            }
            return o
          }(e, t.length - n), t, n, i)
        }

        function N(t, e, n) {
          return 0 === e && n === t.length ? i.fromByteArray(t) : i.fromByteArray(t.slice(e, n))
        }

        function _(t, e, n) {
          n = Math.min(t.length, n);
          var i = [],
            r = e;
          while (r < n) {
            var o, a, s, u, c = t[r],
              l = null,
              f = c > 239 ? 4 : c > 223 ? 3 : c > 191 ? 2 : 1;
            if (r + f <= n) switch (f) {
              case 1:
                c < 128 && (l = c);
                break;
              case 2:
                o = t[r + 1], 128 === (192 & o) && (u = (31 & c) << 6 | 63 & o, u > 127 && (l = u));
                break;
              case 3:
                o = t[r + 1], a = t[r + 2], 128 === (192 & o) && 128 === (192 & a) && (u = (15 & c) << 12 | (63 & o) << 6 | 63 & a, u > 2047 && (u < 55296 || u > 57343) && (l = u));
                break;
              case 4:
                o = t[r + 1], a = t[r + 2], s = t[r + 3], 128 === (192 & o) && 128 === (192 & a) && 128 === (192 & s) && (u = (15 & c) << 18 | (63 & o) << 12 | (63 & a) << 6 | 63 & s, u > 65535 && u < 1114112 && (l = u))
            }
            null === l ? (l = 65533, f = 1) : l > 65535 && (l -= 65536, i.push(l >>> 10 & 1023 | 55296), l = 56320 | 1023 & l), i.push(l), r += f
          }
          return function(t) {
            var e = t.length;
            if (e <= 4096) return String.fromCharCode.apply(String, t);
            var n = "",
              i = 0;
            while (i < e) n += String.fromCharCode.apply(String, t.slice(i, i += 4096));
            return n
          }(i)
        }
        e.Buffer = u, e.SlowBuffer = function(t) {
          +t != t && (t = 0);
          return u.alloc(+t)
        }, e.INSPECT_MAX_BYTES = 50, u.TYPED_ARRAY_SUPPORT = void 0 !== t.TYPED_ARRAY_SUPPORT ? t.TYPED_ARRAY_SUPPORT : function() {
          try {
            var t = new Uint8Array(1);
            return t.__proto__ = {
              __proto__: Uint8Array.prototype,
              foo: function() {
                return 42
              }
            }, 42 === t.foo() && "function" === typeof t.subarray && 0 === t.subarray(1, 1).byteLength
          } catch (e) {
            return !1
          }
        }(), e.kMaxLength = a(), u.poolSize = 8192, u._augment = function(t) {
          return t.__proto__ = u.prototype, t
        }, u.from = function(t, e, n) {
          return c(null, t, e, n)
        }, u.TYPED_ARRAY_SUPPORT && (u.prototype.__proto__ = Uint8Array.prototype, u.__proto__ = Uint8Array, "undefined" !== typeof Symbol && Symbol.species && u[Symbol.species] === u && Object.defineProperty(u, Symbol.species, {
          value: null,
          configurable: !0
        })), u.alloc = function(t, e, n) {
          return function(t, e, n, i) {
            return l(e), e <= 0 ? s(t, e) : void 0 !== n ? "string" === typeof i ? s(t, e).fill(n, i) : s(t, e).fill(n) : s(t, e)
          }(null, t, e, n)
        }, u.allocUnsafe = function(t) {
          return f(null, t)
        }, u.allocUnsafeSlow = function(t) {
          return f(null, t)
        }, u.isBuffer = function(t) {
          return !(null == t || !t._isBuffer)
        }, u.compare = function(t, e) {
          if (!u.isBuffer(t) || !u.isBuffer(e)) throw new TypeError("Arguments must be Buffers");
          if (t === e) return 0;
          for (var n = t.length, i = e.length, r = 0, o = Math.min(n, i); r < o; ++r)
            if (t[r] !== e[r]) {
              n = t[r], i = e[r];
              break
            } return n < i ? -1 : i < n ? 1 : 0
        }, u.isEncoding = function(t) {
          switch (String(t).toLowerCase()) {
            case "hex":
            case "utf8":
            case "utf-8":
            case "ascii":
            case "latin1":
            case "binary":
            case "base64":
            case "ucs2":
            case "ucs-2":
            case "utf16le":
            case "utf-16le":
              return !0;
            default:
              return !1
          }
        }, u.concat = function(t, e) {
          if (!o(t)) throw new TypeError('"list" argument must be an Array of Buffers');
          if (0 === t.length) return u.alloc(0);
          var n;
          if (void 0 === e)
            for (e = 0, n = 0; n < t.length; ++n) e += t[n].length;
          var i = u.allocUnsafe(e),
            r = 0;
          for (n = 0; n < t.length; ++n) {
            var a = t[n];
            if (!u.isBuffer(a)) throw new TypeError('"list" argument must be an Array of Buffers');
            a.copy(i, r), r += a.length
          }
          return i
        }, u.byteLength = p, u.prototype._isBuffer = !0, u.prototype.swap16 = function() {
          var t = this.length;
          if (t % 2 !== 0) throw new RangeError("Buffer size must be a multiple of 16-bits");
          for (var e = 0; e < t; e += 2) m(this, e, e + 1);
          return this
        }, u.prototype.swap32 = function() {
          var t = this.length;
          if (t % 4 !== 0) throw new RangeError("Buffer size must be a multiple of 32-bits");
          for (var e = 0; e < t; e += 4) m(this, e, e + 3), m(this, e + 1, e + 2);
          return this
        }, u.prototype.swap64 = function() {
          var t = this.length;
          if (t % 8 !== 0) throw new RangeError("Buffer size must be a multiple of 64-bits");
          for (var e = 0; e < t; e += 8) m(this, e, e + 7), m(this, e + 1, e + 6), m(this, e + 2, e + 5), m(this, e + 3, e + 4);
          return this
        }, u.prototype.toString = function() {
          var t = 0 | this.length;
          return 0 === t ? "" : 0 === arguments.length ? _(this, 0, t) : g.apply(this, arguments)
        }, u.prototype.equals = function(t) {
          if (!u.isBuffer(t)) throw new TypeError("Argument must be a Buffer");
          return this === t || 0 === u.compare(this, t)
        }, u.prototype.inspect = function() {
          var t = "",
            n = e.INSPECT_MAX_BYTES;
          return this.length > 0 && (t = this.toString("hex", 0, n).match(/.{2}/g).join(" "), this.length > n && (t += " ... ")), "<Buffer " + t + ">"
        }, u.prototype.compare = function(t, e, n, i, r) {
          if (!u.isBuffer(t)) throw new TypeError("Argument must be a Buffer");
          if (void 0 === e && (e = 0), void 0 === n && (n = t ? t.length : 0), void 0 === i && (i = 0), void 0 === r && (r = this.length), e < 0 || n > t.length || i < 0 || r > this.length) throw new RangeError("out of range index");
          if (i >= r && e >= n) return 0;
          if (i >= r) return -1;
          if (e >= n) return 1;
          if (e >>>= 0, n >>>= 0, i >>>= 0, r >>>= 0, this === t) return 0;
          for (var o = r - i, a = n - e, s = Math.min(o, a), c = this.slice(i, r), l = t.slice(e, n), f = 0; f < s; ++f)
            if (c[f] !== l[f]) {
              o = c[f], a = l[f];
              break
            } return o < a ? -1 : a < o ? 1 : 0
        }, u.prototype.includes = function(t, e, n) {
          return -1 !== this.indexOf(t, e, n)
        }, u.prototype.indexOf = function(t, e, n) {
          return y(this, t, e, n, !0)
        }, u.prototype.lastIndexOf = function(t, e, n) {
          return y(this, t, e, n, !1)
        }, u.prototype.write = function(t, e, n, i) {
          if (void 0 === e) i = "utf8", n = this.length, e = 0;
          else if (void 0 === n && "string" === typeof e) i = e, n = this.length, e = 0;
          else {
            if (!isFinite(e)) throw new Error("Buffer.write(string, encoding, offset[, length]) is no longer supported");
            e |= 0, isFinite(n) ? (n |= 0, void 0 === i && (i = "utf8")) : (i = n, n = void 0)
          }
          var r = this.length - e;
          if ((void 0 === n || n > r) && (n = r), t.length > 0 && (n < 0 || e < 0) || e > this.length) throw new RangeError("Attempt to write outside buffer bounds");
          i || (i = "utf8");
          for (var o = !1;;) switch (i) {
            case "hex":
              return b(this, t, e, n);
            case "utf8":
            case "utf-8":
              return v(this, t, e, n);
            case "ascii":
              return w(this, t, e, n);
            case "latin1":
            case "binary":
              return T(this, t, e, n);
            case "base64":
              return A(this, t, e, n);
            case "ucs2":
            case "ucs-2":
            case "utf16le":
            case "utf-16le":
              return C(this, t, e, n);
            default:
              if (o) throw new TypeError("Unknown encoding: " + i);
              i = ("" + i).toLowerCase(), o = !0
          }
        }, u.prototype.toJSON = function() {
          return {
            type: "Buffer",
            data: Array.prototype.slice.call(this._arr || this, 0)
          }
        };

        function S(t, e, n) {
          var i = "";
          n = Math.min(t.length, n);
          for (var r = e; r < n; ++r) i += String.fromCharCode(127 & t[r]);
          return i
        }

        function D(t, e, n) {
          var i = "";
          n = Math.min(t.length, n);
          for (var r = e; r < n; ++r) i += String.fromCharCode(t[r]);
          return i
        }

        function P(t, e, n) {
          var i = t.length;
          (!e || e < 0) && (e = 0), (!n || n < 0 || n > i) && (n = i);
          for (var r = "", o = e; o < n; ++o) r += B(t[o]);
          return r
        }

        function I(t, e, n) {
          for (var i = t.slice(e, n), r = "", o = 0; o < i.length; o += 2) r += String.fromCharCode(i[o] + 256 * i[o + 1]);
          return r
        }

        function M(t, e, n) {
          if (t % 1 !== 0 || t < 0) throw new RangeError("offset is not uint");
          if (t + e > n) throw new RangeError("Trying to access beyond buffer length")
        }

        function R(t, e, n, i, r, o) {
          if (!u.isBuffer(t)) throw new TypeError('"buffer" argument must be a Buffer instance');
          if (e > r || e < o) throw new RangeError('"value" argument is out of bounds');
          if (n + i > t.length) throw new RangeError("Index out of range")
        }

        function O(t, e, n, i) {
          e < 0 && (e = 65535 + e + 1);
          for (var r = 0, o = Math.min(t.length - n, 2); r < o; ++r) t[n + r] = (e & 255 << 8 * (i ? r : 1 - r)) >>> 8 * (i ? r : 1 - r)
        }

        function x(t, e, n, i) {
          e < 0 && (e = 4294967295 + e + 1);
          for (var r = 0, o = Math.min(t.length - n, 4); r < o; ++r) t[n + r] = e >>> 8 * (i ? r : 3 - r) & 255
        }

        function F(t, e, n, i, r, o) {
          if (n + i > t.length) throw new RangeError("Index out of range");
          if (n < 0) throw new RangeError("Index out of range")
        }

        function U(t, e, n, i, o) {
          return o || F(t, 0, n, 4), r.write(t, e, n, i, 23, 4), n + 4
        }

        function k(t, e, n, i, o) {
          return o || F(t, 0, n, 8), r.write(t, e, n, i, 52, 8), n + 8
        }
        u.prototype.slice = function(t, e) {
          var n, i = this.length;
          if (t = ~~t, e = void 0 === e ? i : ~~e, t < 0 ? (t += i, t < 0 && (t = 0)) : t > i && (t = i), e < 0 ? (e += i, e < 0 && (e = 0)) : e > i && (e = i), e < t && (e = t), u.TYPED_ARRAY_SUPPORT) n = this.subarray(t, e), n.__proto__ = u.prototype;
          else {
            var r = e - t;
            n = new u(r, void 0);
            for (var o = 0; o < r; ++o) n[o] = this[o + t]
          }
          return n
        }, u.prototype.readUIntLE = function(t, e, n) {
          t |= 0, e |= 0, n || M(t, e, this.length);
          var i = this[t],
            r = 1,
            o = 0;
          while (++o < e && (r *= 256)) i += this[t + o] * r;
          return i
        }, u.prototype.readUIntBE = function(t, e, n) {
          t |= 0, e |= 0, n || M(t, e, this.length);
          var i = this[t + --e],
            r = 1;
          while (e > 0 && (r *= 256)) i += this[t + --e] * r;
          return i
        }, u.prototype.readUInt8 = function(t, e) {
          return e || M(t, 1, this.length), this[t]
        }, u.prototype.readUInt16LE = function(t, e) {
          return e || M(t, 2, this.length), this[t] | this[t + 1] << 8
        }, u.prototype.readUInt16BE = function(t, e) {
          return e || M(t, 2, this.length), this[t] << 8 | this[t + 1]
        }, u.prototype.readUInt32LE = function(t, e) {
          return e || M(t, 4, this.length), (this[t] | this[t + 1] << 8 | this[t + 2] << 16) + 16777216 * this[t + 3]
        }, u.prototype.readUInt32BE = function(t, e) {
          return e || M(t, 4, this.length), 16777216 * this[t] + (this[t + 1] << 16 | this[t + 2] << 8 | this[t + 3])
        }, u.prototype.readIntLE = function(t, e, n) {
          t |= 0, e |= 0, n || M(t, e, this.length);
          var i = this[t],
            r = 1,
            o = 0;
          while (++o < e && (r *= 256)) i += this[t + o] * r;
          return r *= 128, i >= r && (i -= Math.pow(2, 8 * e)), i
        }, u.prototype.readIntBE = function(t, e, n) {
          t |= 0, e |= 0, n || M(t, e, this.length);
          var i = e,
            r = 1,
            o = this[t + --i];
          while (i > 0 && (r *= 256)) o += this[t + --i] * r;
          return r *= 128, o >= r && (o -= Math.pow(2, 8 * e)), o
        }, u.prototype.readInt8 = function(t, e) {
          return e || M(t, 1, this.length), 128 & this[t] ? -1 * (255 - this[t] + 1) : this[t]
        }, u.prototype.readInt16LE = function(t, e) {
          e || M(t, 2, this.length);
          var n = this[t] | this[t + 1] << 8;
          return 32768 & n ? 4294901760 | n : n
        }, u.prototype.readInt16BE = function(t, e) {
          e || M(t, 2, this.length);
          var n = this[t + 1] | this[t] << 8;
          return 32768 & n ? 4294901760 | n : n
        }, u.prototype.readInt32LE = function(t, e) {
          return e || M(t, 4, this.length), this[t] | this[t + 1] << 8 | this[t + 2] << 16 | this[t + 3] << 24
        }, u.prototype.readInt32BE = function(t, e) {
          return e || M(t, 4, this.length), this[t] << 24 | this[t + 1] << 16 | this[t + 2] << 8 | this[t + 3]
        }, u.prototype.readFloatLE = function(t, e) {
          return e || M(t, 4, this.length), r.read(this, t, !0, 23, 4)
        }, u.prototype.readFloatBE = function(t, e) {
          return e || M(t, 4, this.length), r.read(this, t, !1, 23, 4)
        }, u.prototype.readDoubleLE = function(t, e) {
          return e || M(t, 8, this.length), r.read(this, t, !0, 52, 8)
        }, u.prototype.readDoubleBE = function(t, e) {
          return e || M(t, 8, this.length), r.read(this, t, !1, 52, 8)
        }, u.prototype.writeUIntLE = function(t, e, n, i) {
          if (t = +t, e |= 0, n |= 0, !i) {
            var r = Math.pow(2, 8 * n) - 1;
            R(this, t, e, n, r, 0)
          }
          var o = 1,
            a = 0;
          this[e] = 255 & t;
          while (++a < n && (o *= 256)) this[e + a] = t / o & 255;
          return e + n
        }, u.prototype.writeUIntBE = function(t, e, n, i) {
          if (t = +t, e |= 0, n |= 0, !i) {
            var r = Math.pow(2, 8 * n) - 1;
            R(this, t, e, n, r, 0)
          }
          var o = n - 1,
            a = 1;
          this[e + o] = 255 & t;
          while (--o >= 0 && (a *= 256)) this[e + o] = t / a & 255;
          return e + n
        }, u.prototype.writeUInt8 = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 1, 255, 0), u.TYPED_ARRAY_SUPPORT || (t = Math.floor(t)), this[e] = 255 & t, e + 1
        }, u.prototype.writeUInt16LE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 2, 65535, 0), u.TYPED_ARRAY_SUPPORT ? (this[e] = 255 & t, this[e + 1] = t >>> 8) : O(this, t, e, !0), e + 2
        }, u.prototype.writeUInt16BE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 2, 65535, 0), u.TYPED_ARRAY_SUPPORT ? (this[e] = t >>> 8, this[e + 1] = 255 & t) : O(this, t, e, !1), e + 2
        }, u.prototype.writeUInt32LE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 4, 4294967295, 0), u.TYPED_ARRAY_SUPPORT ? (this[e + 3] = t >>> 24, this[e + 2] = t >>> 16, this[e + 1] = t >>> 8, this[e] = 255 & t) : x(this, t, e, !0), e + 4
        }, u.prototype.writeUInt32BE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 4, 4294967295, 0), u.TYPED_ARRAY_SUPPORT ? (this[e] = t >>> 24, this[e + 1] = t >>> 16, this[e + 2] = t >>> 8, this[e + 3] = 255 & t) : x(this, t, e, !1), e + 4
        }, u.prototype.writeIntLE = function(t, e, n, i) {
          if (t = +t, e |= 0, !i) {
            var r = Math.pow(2, 8 * n - 1);
            R(this, t, e, n, r - 1, -r)
          }
          var o = 0,
            a = 1,
            s = 0;
          this[e] = 255 & t;
          while (++o < n && (a *= 256)) t < 0 && 0 === s && 0 !== this[e + o - 1] && (s = 1), this[e + o] = (t / a >> 0) - s & 255;
          return e + n
        }, u.prototype.writeIntBE = function(t, e, n, i) {
          if (t = +t, e |= 0, !i) {
            var r = Math.pow(2, 8 * n - 1);
            R(this, t, e, n, r - 1, -r)
          }
          var o = n - 1,
            a = 1,
            s = 0;
          this[e + o] = 255 & t;
          while (--o >= 0 && (a *= 256)) t < 0 && 0 === s && 0 !== this[e + o + 1] && (s = 1), this[e + o] = (t / a >> 0) - s & 255;
          return e + n
        }, u.prototype.writeInt8 = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 1, 127, -128), u.TYPED_ARRAY_SUPPORT || (t = Math.floor(t)), t < 0 && (t = 255 + t + 1), this[e] = 255 & t, e + 1
        }, u.prototype.writeInt16LE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 2, 32767, -32768), u.TYPED_ARRAY_SUPPORT ? (this[e] = 255 & t, this[e + 1] = t >>> 8) : O(this, t, e, !0), e + 2
        }, u.prototype.writeInt16BE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 2, 32767, -32768), u.TYPED_ARRAY_SUPPORT ? (this[e] = t >>> 8, this[e + 1] = 255 & t) : O(this, t, e, !1), e + 2
        }, u.prototype.writeInt32LE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 4, 2147483647, -2147483648), u.TYPED_ARRAY_SUPPORT ? (this[e] = 255 & t, this[e + 1] = t >>> 8, this[e + 2] = t >>> 16, this[e + 3] = t >>> 24) : x(this, t, e, !0), e + 4
        }, u.prototype.writeInt32BE = function(t, e, n) {
          return t = +t, e |= 0, n || R(this, t, e, 4, 2147483647, -2147483648), t < 0 && (t = 4294967295 + t + 1), u.TYPED_ARRAY_SUPPORT ? (this[e] = t >>> 24, this[e + 1] = t >>> 16, this[e + 2] = t >>> 8, this[e + 3] = 255 & t) : x(this, t, e, !1), e + 4
        }, u.prototype.writeFloatLE = function(t, e, n) {
          return U(this, t, e, !0, n)
        }, u.prototype.writeFloatBE = function(t, e, n) {
          return U(this, t, e, !1, n)
        }, u.prototype.writeDoubleLE = function(t, e, n) {
          return k(this, t, e, !0, n)
        }, u.prototype.writeDoubleBE = function(t, e, n) {
          return k(this, t, e, !1, n)
        }, u.prototype.copy = function(t, e, n, i) {
          if (n || (n = 0), i || 0 === i || (i = this.length), e >= t.length && (e = t.length), e || (e = 0), i > 0 && i < n && (i = n), i === n) return 0;
          if (0 === t.length || 0 === this.length) return 0;
          if (e < 0) throw new RangeError("targetStart out of bounds");
          if (n < 0 || n >= this.length) throw new RangeError("sourceStart out of bounds");
          if (i < 0) throw new RangeError("sourceEnd out of bounds");
          i > this.length && (i = this.length), t.length - e < i - n && (i = t.length - e + n);
          var r, o = i - n;
          if (this === t && n < e && e < i)
            for (r = o - 1; r >= 0; --r) t[r + e] = this[r + n];
          else if (o < 1e3 || !u.TYPED_ARRAY_SUPPORT)
            for (r = 0; r < o; ++r) t[r + e] = this[r + n];
          else Uint8Array.prototype.set.call(t, this.subarray(n, n + o), e);
          return o
        }, u.prototype.fill = function(t, e, n, i) {
          if ("string" === typeof t) {
            if ("string" === typeof e ? (i = e, e = 0, n = this.length) : "string" === typeof n && (i = n, n = this.length), 1 === t.length) {
              var r = t.charCodeAt(0);
              r < 256 && (t = r)
            }
            if (void 0 !== i && "string" !== typeof i) throw new TypeError("encoding must be a string");
            if ("string" === typeof i && !u.isEncoding(i)) throw new TypeError("Unknown encoding: " + i)
          } else "number" === typeof t && (t &= 255);
          if (e < 0 || this.length < e || this.length < n) throw new RangeError("Out of range index");
          if (n <= e) return this;
          var o;
          if (e >>>= 0, n = void 0 === n ? this.length : n >>> 0, t || (t = 0), "number" === typeof t)
            for (o = e; o < n; ++o) this[o] = t;
          else {
            var a = u.isBuffer(t) ? t : $(new u(t, i).toString()),
              s = a.length;
            for (o = 0; o < n - e; ++o) this[o + e] = a[o % s]
          }
          return this
        };
        var L = /[^+\/0-9A-Za-z-_]/g;

        function B(t) {
          return t < 16 ? "0" + t.toString(16) : t.toString(16)
        }

        function $(t, e) {
          var n;
          e = e || 1 / 0;
          for (var i = t.length, r = null, o = [], a = 0; a < i; ++a) {
            if (n = t.charCodeAt(a), n > 55295 && n < 57344) {
              if (!r) {
                if (n > 56319) {
                  (e -= 3) > -1 && o.push(239, 191, 189);
                  continue
                }
                if (a + 1 === i) {
                  (e -= 3) > -1 && o.push(239, 191, 189);
                  continue
                }
                r = n;
                continue
              }
              if (n < 56320) {
                (e -= 3) > -1 && o.push(239, 191, 189), r = n;
                continue
              }
              n = 65536 + (r - 55296 << 10 | n - 56320)
            } else r && (e -= 3) > -1 && o.push(239, 191, 189);
            if (r = null, n < 128) {
              if ((e -= 1) < 0) break;
              o.push(n)
            } else if (n < 2048) {
              if ((e -= 2) < 0) break;
              o.push(n >> 6 | 192, 63 & n | 128)
            } else if (n < 65536) {
              if ((e -= 3) < 0) break;
              o.push(n >> 12 | 224, n >> 6 & 63 | 128, 63 & n | 128)
            } else {
              if (!(n < 1114112)) throw new Error("Invalid code point");
              if ((e -= 4) < 0) break;
              o.push(n >> 18 | 240, n >> 12 & 63 | 128, n >> 6 & 63 | 128, 63 & n | 128)
            }
          }
          return o
        }

        function K(t) {
          return i.toByteArray(function(t) {
            if (t = function(t) {
                return t.trim ? t.trim() : t.replace(/^\s+|\s+$/g, "")
              }(t).replace(L, ""), t.length < 2) return "";
            while (t.length % 4 !== 0) t += "=";
            return t
          }(t))
        }

        function V(t, e, n, i) {
          for (var r = 0; r < i; ++r) {
            if (r + n >= e.length || r >= t.length) break;
            e[r + n] = t[r]
          }
          return r
        }
      }).call(this, n("c8ba"))
    },
    b7d1: function(t, e, n) {
      (function(e) {
        function n(t) {
          try {
            if (!e.localStorage) return !1
          } catch (i) {
            return !1
          }
          var n = e.localStorage[t];
          return null != n && "true" === String(n).toLowerCase()
        }
        t.exports = function(t, e) {
          if (n("noDeprecation")) return t;
          var i = !1;
          return function() {
            if (!i) {
              if (n("throwDeprecation")) throw new Error(e);
              n("traceDeprecation") ? console.trace(e) : console.warn(e), i = !0
            }
            return t.apply(this, arguments)
          }
        }
      }).call(this, n("c8ba"))
    },
    be6e: function(t, e, n) {
      "use strict";
      n("7a82");
      var i = n("4ea4").default;
      Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.default = void 0;
      var r = i(n("ade3")),
        o = i(n("5530"));
      n("99af"), n("caad"), n("c975"), n("14d9"), n("f4b3"), n("e9c4"), n("a9e3"), n("b64b"), n("d3b7"), n("e25e"), n("ac1f"), n("2532"), n("5319"), n("159b");
      var a, s, u = n("1698"),
        c = n("1983"),
        l = n("49f6"),
        f = n("c685"),
        h = n("8f4d"),
        d = n("26cb"),
        p = i(n("4bea")),
        g = n("93ac"),
        m = (uni.requireNativePlugin("globalEvent"), null),
        y = n("c51a");
      e.default = {
        data: function() {
          return {
            isVisitorMode: !1,
            province: "",
            pageState: "loadSuccess",
            isInitAfterCheck: !1,
            newState: l.$ESTATE.ES_PRECONNECTING,
            ESTATE: l.$ESTATE,
            isShowQrcode: !1,
            isShowCustomerService: !1,
            isShowCampus: !1,
            closeSplashScreen: {
              guidePage: !1,
              inited: !1
            },
            backModalShow: !1,
            wifiState: "loading",
            wifiName: "",
            weakWifiLastTime: 5,
            mCurrentProgress: 0,
            mTotalProgress: 0,
            mSelfLogin: 1,
            iframeHeight: 0,
            iframeWidth: 0,
            userAccount: "",
            last_login_time: 0,
            login_time: "",
            back_time: "",
            hour: "00",
            minute: "00",
            second: "00",
            showMoreNotice: !1,
            showAdvertisement: !1,
            helpGuideCode: "",
            iframeUrl: "",
            isVerifyPopup: !1,
            loadingText: {},
            currentLoadingText: "环境初始化中...",
            isShowCheckRegularly: !1,
            swiperGridList: [{
              name: "网络检测",
              imgUrl: "../../static/image/index/menu01.png",
              appPage: !0,
              clickType: l.$CLICK.SELFDEBUGTOOL,
              isShow: !0
            }, {
              name: "充值缴费",
              imgUrl: "../../static/image/index/menu02.png",
              code: f.$funKey.FUN_RECHARGE,
              inner: !0,
              appPage: !1,
              clickType: l.$CLICK.CHARGEURL,
              isShow: !1
            }, {
              name: "异网体验",
              imgUrl: "../../static/image/index/menu03.png",
              code: f.$funKey.FUN_EXPERIENCE_ACCOUNT,
              inner: !1,
              appPage: !1,
              clickType: l.$CLICK.FREEACCOUNTURL,
              isShow: !1
            }, {
              name: "校园通",
              imgUrl: "../../static/image/index/menu04.png",
              code: f.$funKey.FUN_CAMPUS,
              isCampus: !0,
              inner: !0,
              appPage: !1,
              clickType: l.$CLICK.INFORURL,
              isShow: !1
            }],
            noticeList: [{
              id: 0,
              title: "暂无公告"
            }],
            appName: "",
            phoneType: "",
            campusNewMsg: !1,
            safeAreaTop: 0,
            frameView: null
          }
        },
        onLoad: function() {
          var t = this,
            e = this;
          this.wifiState = (0, c.GetProcCode)(200106, "", ""), uni.getSystemInfo({
            success: function(e) {
              getApp().globalData.screenWidth = e.screenWidth, getApp().globalData.screenHeight = e.screenHeight, "ios" == e.osName && e.safeAreaInsets.top > 20 && (t.safeAreaTop = e.safeAreaInsets.top / (uni.upx2px(10) / 10) * .5)
            }
          }), plus.globalEvent.addEventListener("cndatacomEvent", (function(e) {
            if (e.type != l.$ETYPE.ET_NETWORKMESSAGE) e.newState != l.$ESTATE.ES_DISCONNECTFAIL && e.newState != l.$ESTATE.ES_NONE && t.$store.commit("changeNewStateGlobal", e.newState), e.newState != l.$ESTATE.ES_PRECONNECTING && e.newState != l.$ESTATE.ES_CONNECTING && (t.mCurrentProgress = 0, t.mTotalProgress = 0), e.newState == l.$ESTATE.ES_CONNECTED && (t.hour = "00", t.minute = "00", t.second = "00"), console.log("cndatacomEvent---\x3e" + JSON.stringify(e)), e.newState == l.$ESTATE.ES_CONNECTING ? t.HandleConnectingMsg(e) : e.newState == l.$ESTATE.ES_CONNECTED ? t.HandleConnectedMsg(e) : e.newState == l.$ESTATE.ES_CONNECTFAIL ? t.HandleConnectFailMsg(e) : e.newState == l.$ESTATE.ES_PRECONNECTED ? t.HandlePreConnectedMsg(e) : e.newState == l.$ESTATE.ES_PRECONNECTFAIL ? t.HandlePreConnectFailMsg(e) : e.newState == l.$ESTATE.ES_PRECONNECTING ? t.HandlePreConnectingMsg(e) : e.newState == l.$ESTATE.ES_DISCONNECTED ? t.HandleDisConnectedMsg(e) : e.newState == l.$ESTATE.ES_DISCONNECTING && t.HandleDisConnectingMsg(e);
            else {
              var n = JSON.parse(e.extern).ssid;
              t.wifiName = n
            }
          })), uni.getSubNVueById(l.$SUBNVUE.LOGIN_FAIL).addEventListener("confirm", (function() {
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_RECHARGE, (function(e) {
              var n = e[f.$funKey.FUN_RECHARGE];
              console.log("充值缴费---\x3e" + JSON.stringify(n)), n && 1 == n.enable && n.url && t.openRechargePage(n)
            }))
          })), uni.getSubNVueById(l.$SUBNVUE.VERIFY).addEventListener("cancel", (function() {
            t.isVerifyPopup = !1, t.$store.commit("changeNewStateGlobal", l.$ESTATE.ES_PRECONNECTED), uni.navigateTo({
              url: "/pages/login/login"
            })
          })), uni.getSubNVueById(l.$SUBNVUE.VERIFY).addEventListener("hide", (function() {
            t.isVerifyPopup && (t.newStateGlobal != l.$ESTATE.ES_CONNECTED && u.PluginApi.coolMethod("onCheckNetGoon", []), t.isVerifyPopup = !1)
          })), plus.globalEvent.addEventListener("CHECK_NET_REGULARLY", (function(t) {
            if (f.$log.logInfoJsonString("CheckMananger --\x3e" + t.extern.reason), !e.isShowCheckRegularly) {
              e.isShowCheckRegularly = !0;
              "11" == t.extern.reason ? uni.showModal({
                cancelText: "忽略",
                confirmText: "是",
                content: "检测到当前网络不稳定，是否重新登陆？如网络正常请忽略",
                title: "提示",
                closeOnBack: !1,
                success: function(n) {
                  n.confirm ? (e.isShowCheckRegularly = !1, u.PluginApi.coolMethod("onHandleCheckNetRegular", [{
                    reason: t.extern.reason,
                    isAuth: !0
                  }])) : n.cancel && (e.isShowCheckRegularly = !1, u.PluginApi.coolMethod("onHandleCheckNetRegular", [{
                    reason: t.extern.reason,
                    isAuth: !1
                  }]))
                }
              }) : uni.showModal({
                cancelText: "返回登录界面",
                confirmText: "重新登录",
                content: "网络已断开，请重新登录。",
                closeOnBack: !1,
                title: "提示",
                success: function(n) {
                  n.confirm ? (e.isShowCheckRegularly = !1, u.PluginApi.coolMethod("onHandleCheckNetRegular", [{
                    reason: t.extern.reason,
                    isAuth: !0
                  }])) : n.cancel && (e.isShowCheckRegularly = !1, u.PluginApi.coolMethod("onHandleCheckNetRegular", [{
                    reason: t.extern.reason,
                    isAuth: !1
                  }]), uni.navigateTo({
                    url: "/pages/login/login"
                  }))
                }
              })
            }
          }), !1), uni.$on("handleListen", (function(e) {
            if ("subNVueEvent" == e.type) {
              var n = e.data.id;
              if (n == l.$SUBNVUE.LOGIN_FAIL) {
                e.data;
                f.$funCtrl.getMulFunCfg(f.$funKey.FUN_RECHARGE, (function(e) {
                  var n = e[f.$funKey.FUN_RECHARGE];
                  console.log("充值缴费---\x3e" + JSON.stringify(n)), n && 1 == n.enable && n.url && t.openRechargePage(n)
                }))
              } else if (n == l.$SUBNVUE.VERIFY) {
                var i = e.data;
                i.isLogin ? (u.PluginApi.coolMethod("onAuth", [getApp().globalData.userAccount, getApp().globalData.userPwd, i.verifyValue]), console.log("账号--" + getApp().globalData.userAccount), console.log("密码--" + getApp().globalData.userPwd), console.log("验证码：" + i.verifyValue), f.$log.logInfoString("验证码：" + i.verifyValue)) : u.PluginApi.coolMethod("onGetVerificatioCode", [getApp().globalData.userAccount], (function(t) {
                  t && uni.$emit("vetifyMessage")
                }))
              } else if (n == l.$SUBNVUE.ADVERT) {
                var r = e.data,
                  o = r.url;
                if ("" == o || null == o || void 0 == o) return;
                f.$log.logInfoString("toDialogAdvertisement url ->" + o), f.$webView.open("", o, !1)
              } else n == l.$SUBNVUE.QRCODE && t.qrcodePermission(e.data.account, e.data.password);
              var a = uni.getCurrentSubNVue();
              a.hide("slide-out-left", 200)
            } else if ("tabbarEvent" == e.type) t.backModal();
            else if ("clickModule" == e.type) {
              var s = e.data;
              console.log(s), t.setClickModule(s.type, s.moduleId)
            } else if ("InfoUpdateLastDate" == e.type) {
              var c = e.data,
                h = c.lastDate;
              f.$log.logInfoJsonString(h + "InfoUpdateLastDate->"), h && u.PluginApi.coolMethod("setCacheData", ["CampusNewsDate", h])
            } else "visitorModeEvent" == e.type && t.visitorMaskClick()
          })), this.$store.watch((function(t) {
            return t.newStateGlobal
          }), (function(e) {
            console.log("网络状态：" + e), e == l.$ESTATE.ES_PRECONNECTED ? setTimeout((function() {
              t.getAdvertisement(), t.getNotice(), t.isShowCampus && t.getCampusRedDot()
            }), 0) : e == l.$ESTATE.ES_CONNECTED && setTimeout((function() {
              t.getAdvertisement(), t.getDialogAdvertisement(), t.loadBalancereminderData()
            }), 0)
          })), plus.globalEvent.addEventListener("onTrimMemoryEvent", (function() {
            f.$log.logInfoString("onTrimMemoryEvent->"), null != m && clearInterval(m)
          })), this.init()
        },
        onBackPress: function(t) {
          if ("backbutton" == t.from) return this.backModal(), !0
        },
        onShow: function() {
          this.newStateGlobal == l.$ESTATE.ES_CONNECTED && ("android" == getApp().globalData.phoneType && (uni.showLoading({
            title: ""
          }), uni.hideLoading()), this.loginStart())
        },
        onReady: function() {
          this.frameView = uni.createSelectorQuery().in(this).select(".iframe_container")
        },
        onHide: function() {
          clearInterval(s)
        },
        onUnload: function() {
          clearInterval(s)
        },
        computed: (0, o.default)({}, (0, d.mapState)(["newStateGlobal"])),
        watch: {
          wifiState: function(t) {
            var e = this;
            "weakWifi" == t.name && (a = setInterval((function() {
              e.weakWifiLastTime--
            }), 1e3))
          },
          weakWifiLastTime: function(t) {
            0 == t && this.weakWifiConnect()
          }
        },
        created: function() {
          document.addEventListener("backbutton", this.handleBackButtonEvent, !1)
        },
        destroyed: function() {
          document.removeEventListener("backbutton", this.handleBackButtonEvent, !1)
        },
        methods: (0, r.default)((0, r.default)((0, r.default)((0, r.default)((0, r.default)((0, r.default)((0, r.default)((0, r.default)((0, r.default)({
          handleBackButtonEvent: function() {
            var t = getCurrentPages(),
              e = t[t.length - 1].route;
            e == this.$mp.page.route && this.backModal()
          },
          receiveRenderjsMsg: function(t) {
            if (t.message) return this.showAdvertisement = !1, void console.log("iframe加载失败");
            if (console.log("uni receive message->" + t), Object.keys(t).length > 0) {
              this.setClickModule("2", JSON.parse(t).id);
              var e = JSON.parse(t).url;
              if ("" == e || null == e || void 0 == e) return;
              var n = e.indexOf("http") > -1 ? e : "https://" + e;
              f.$log.logInfoString("toAdvertisement url ->" + n), f.$webView.open("", n, !1)
            }
          },
          getCampusRedDot: function() {
            var t = this;
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_CAMPUSNEWSTIME, (function(e) {
              var n = e[f.$funKey.FUN_CAMPUSNEWSTIME];
              if (n) {
                var i = 1e3 * n.time;
                console.log(i), null == m && setTimeout((function() {
                  t.getCampusNews(), m = setInterval((function() {
                    t.getCampusNews()
                  }), i)
                }), 1e3)
              }
            }))
          },
          getCampusNews: function() {
            var t = this;
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_CAPMUSINTERFACE, (function(e) {
              var n = e[f.$funKey.FUN_CAPMUSINTERFACE],
                i = n.url;
              1 == n.enable && n.url && u.PluginApi.coolMethod("getMulCacheData", ["schoolID", "version", "DialAccount", "CampusNewsDate"], (function(e) {
                var r = e["schoolID"],
                  o = "android" == getApp().globalData.phoneType ? "4" : "5",
                  a = e["version"],
                  s = e["DialAccount"],
                  u = {
                    account: s,
                    cid: parseInt(r),
                    ostype: parseInt(o),
                    version: parseInt(a),
                    infotype: parseInt("0")
                  };
                f.$log.logInfoString("CampusNew url ->" + i), h.httpRequest.post({
                  url: n.url,
                  data: u
                }).then((function(n) {
                  var i = n.data;
                  if (f.$log.logInfoJsonString(i, "CampusNew"), console.log(i), 0 == i.code && i.data && void 0 != i.data.length && i.data.length > 0) {
                    var r = 0;
                    if (e.CampusNewsDate) {
                      var o = e.CampusNewsDate;
                      o = o.replace(/-/g, "/"), r = Date.parse(o) / 1e3
                    }
                    for (var a = i.data, s = 0; s < a.length; s++)
                      for (var u = a[s]["infos"], c = 0; c < u.length; c++) {
                        var l = u[c]["createtime"],
                          h = l.replace(/-/g, "/"),
                          d = Date.parse(h) / 1e3;
                        if (d > r) {
                          t.campusNewMsg = !0;
                          break
                        }
                      }
                  }
                })).catch((function(t) {
                  console.log("校园消息报错：" + JSON.stringify(t))
                }))
              }))
            }))
          },
          closeScreen: function() {
            this.closeSplashScreen.guidePage && this.closeSplashScreen.inited && (plus.navigator.closeSplashscreen(), this.closeSplashScreen.guidePage = !1, this.closeSplashScreen.inited = !1)
          },
          visitorMaskClick: function() {
            var t = this;
            uni.showModal({
              content: "使用APP完整功能需要您的授权。",
              cancelText: "继续浏览",
              confirmText: "返回授权",
              success: function(e) {
                e.confirm ? t.handleVisitorBack() : e.cancel
              }
            })
          },
          handleVisitorBack: function() {
            var t = this;
            u.PluginApi.coolMethod("onExitVisitor", [], (function(e) {
              t.isVisitorMode = !1, getApp().globalData.isVisitorMode = !1, t.$store.commit("changeNewStateGlobal", l.$ESTATE.ES_PRECONNECTING), t.init()
            }))
          },
          init: function() {
            var t = this,
              e = this,
              n = uni.getStorageSync("isAgainOpen");
            console.log("isAgainOpen：" + n), u.PluginApi.coolMethod("InitMananger", [!n], (function(i) {
              var r = i.action;
              if ("visitor" == r) return getApp().globalData.province = i.province, getApp().globalData.isVisitorMode = !0, getApp().globalData.phoneType = i.phoneType.includes("iP") ? "ios" : i.phoneType, getApp().globalData.phoneModelType = i.phoneType, t.isVisitorMode = !0, t.$store.commit("changeNewStateGlobal", l.$ESTATE.ES_PRECONNECTED), e.phoneType = i.phoneType, e.appName = i.appName, void plus.navigator.closeSplashscreen();
              getApp().globalData.province = i.province, getApp().globalData.verno = i.verno, t.province = "GD", t.isInitAfterCheck = !0, console.log("省份：" + getApp().globalData.province), f.$log.logInfoString("省份：" + getApp().globalData.province), (0, c.InitCode)(), t.loadingText = {
                0: c.$code["200107"],
                20: c.$code["200108"],
                40: c.$code["200109"],
                60: c.$code["200110"],
                80: c.$code["200111"]
              }, plus.navigator.closeSplashscreen(), "finish" == r && (t.getConfigInfo(), "GD" == getApp().globalData.province && (t.swiperGridList[3].isShow = !0, t.isShowCampus = !0), e.appName = i.appName, e.phoneType = i.phoneType, getApp().globalData.phoneType = i.phoneType.includes("iP") ? "ios" : i.phoneType, getApp().globalData.phoneModelType = i.phoneType, getApp().globalData.appName = i.appName, (n || "GD" == i.province) && u.PluginApi.coolMethod("onCheckNet", []))
            }))
          },
          customerService: function() {
            this.newStateGlobal == l.$ESTATE.ES_CONNECTED || this.newStateGlobal == l.$ESTATE.ES_PRECONNECTED ? uni.navigateTo({
              url: "/pages/customerService/customerService"
            }) : uni.showToast({
              title: "请先连接校园网",
              icon: "none"
            })
          },
          helpGuide: function(t) {
            this.setClickModule("3", l.$CLICK.HELPURL), t ? f.$webView.open("帮助指引", "static/".concat(getApp().globalData.province).concat("android" == getApp().globalData.phoneType ? "" : "/iOS", "/help.html?errodCode=").concat(this.helpGuideCode), !0) : f.$webView.open("帮助指引", "static/".concat(getApp().globalData.province).concat("android" == getApp().globalData.phoneType ? "" : "/iOS", "/help.html"), !0)
          },
          openQrcodeView: function() {
            var t = this;
            f.$log.logInfoJsonString("openQrcodeView  ->  扫码登陆");
            var e = this;
            this.newStateGlobal == l.$ESTATE.ES_CONNECTED || this.newStateGlobal == l.$ESTATE.ES_PRECONNECTED ? u.PluginApi.coolMethod("getMulCacheData", ["DialAccount", "DialPassword"], (function(n) {
              var i = n["DialAccount"],
                r = n["DialPassword"];
              f.$log.logInfoJsonString("openQrcodeView  ->  扫码登陆 账号->" + i + " ;密码->" + r), e.newStateGlobal == l.$ESTATE.ES_CONNECTED && e.isNotNull(i) && e.isNotNull(r) ? t.qrcodePermission(i, r) : uni.getSubNVueById(l.$SUBNVUE.QRCODE).show(250)
            })) : uni.showToast({
              title: "请先连接校园网",
              icon: "none"
            })
          },
          qrcodePermission: function(t, e) {
            var n = this;
            u.PluginApi.coolMethod("checkPermission", ["CAMERA"], (function(i) {
              console.log("checkPermission>" + i), i ? n.scanCode(t, e) : uni.showModal({
                content: "需要手动申请相机权限，才可以正常使用该功能。",
                contentAlign: "left",
                confirmText: "去授权",
                success: function(t) {
                  t.confirm ? u.PluginApi.coolMethod("onIntentPermissionPage", []) : t.cancel
                }
              })
            }))
          },
          scanCode: function(t, e) {
            var n = this;
            uni.scanCode({
              onlyFromCamera: !0,
              success: function(i) {
                var r = i.result;
                if (0 == r.indexOf("cctp://")) {
                  r = r.substring("cctp://".length);
                  var o = r.split("@"),
                    a = o[0],
                    s = o[1],
                    u = "";
                  o.length > 2 && (u = o[2]), uni.showModal({
                    content: "确定要为计算机：" + s + "，认证上网吗？",
                    contentAlign: "left",
                    success: function(i) {
                      i.confirm ? n.authOtherClient(t, e, a, u) : i.cancel
                    }
                  })
                } else uni.showModal({
                  content: "不支持此二维码认证",
                  showCancel: !1,
                  success: function(t) {}
                })
              }
            })
          },
          authOtherClient: function(t, e, n, i) {
            uni.showLoading({
              title: "加载中",
              mask: !0
            }), u.PluginApi.coolMethod("authOtherClient", [t, e, n, i], (function(t) {
              if (uni.hideLoading(), console.log("authOtherClient>" + t), 0 == t.errorCode) uni.showToast({
                title: "认证登录成功"
              });
              else {
                var e = (0, c.GetProcCode)(t.errorCode, t.subErrCode);
                console.log(t), uni.showModal({
                  cancelText: "确定",
                  confirmText: "帮助指引",
                  content: e,
                  success: function(e) {
                    if (e.confirm) {
                      var n = (0, c.GetErrorCode)(t.errorCode, t.subErrCode);
                      f.$webView.open("帮助指引", "static/".concat("android" == getApp().globalData.province ? "" : "/iOS", "help.html?errorCode=").concat(n), !0)
                    }
                  }
                })
              }
            }))
          },
          setClickModule: function(t, e) {
            var n = this;
            f.$log.logInfoString("SetClickModule->", "type:" + t + " moduleId:" + e), void 0 != e && null != e && "" != e && u.PluginApi.coolMethod("getMulCacheData", [l.$LocalClick.M0DULE, "DialAccount", "schoolID", "clientId", "version"], (function(i) {
              i || (i = {});
              var r = i[l.$LocalClick.M0DULE];
              r = r ? JSON.parse(r) : [];
              var o = i["DialAccount"];
              void 0 != o && "" != o || (o = "");
              var a = "android" == getApp().globalData.phoneType ? "4" : "5",
                s = i["schoolID"],
                c = i["version"],
                f = i["clientId"],
                h = getApp().dateToYYMMDD(new Date),
                d = n.handleClickModuleData(r, o, t, e, 1, a, s, c, f, h);
              void 0 != d && null != d && void 0 != d.length && d.length > 0 && u.PluginApi.coolMethod("setCacheData", [l.$LocalClick.M0DULE, JSON.stringify(d)])
            }))
          },
          handleClickModuleData: function(t, e, n, i, r, o, a, s, u, c) {
            for (var l = null, f = null, h = 0; h < t.length; h++) {
              l = t[h];
              var d = l["account"],
                p = l["stattime"],
                g = l["version"];
              if (d == e && p == c && g == s) {
                f = l["click"];
                break
              }
            }
            if (null != f) {
              for (var m = !1, y = 0; y < f.length; y++) {
                var E = f[y],
                  b = E["moduleid"],
                  v = E["type"];
                if (b == i && v == n) {
                  m = !0;
                  var w = parseInt(E["count"]);
                  w += r, E["count"] = w;
                  break
                }
              }
              m || f.push({
                count: r,
                moduleid: i,
                type: n
              }), l["click"] = f
            } else {
              var T = {
                account: e,
                cid: a,
                clientid: u,
                ostype: o,
                stattime: c,
                version: s,
                click: [{
                  count: r,
                  moduleid: i,
                  type: n
                }]
              };
              t.push(T)
            }
            return t
          },
          uploadClickModule: function() {
            var t = this;
            u.PluginApi.coolMethod("getMulCacheData", [l.$LocalClick.M0DULE, l.$LocalClick.SPLASH], (function(e) {
              e || (e = {});
              var n = e[l.$LocalClick.M0DULE];
              n = n ? JSON.parse(n) : [];
              var i = e[l.$LocalClick.SPLASH];
              console.log("-----"), console.log(i), i = i ? JSON.parse(i) : [];
              for (var r = 0; r < i.length; r++) {
                var o = i[r],
                  a = o["account"],
                  s = o["ostype"],
                  c = o["cid"],
                  d = o["version"],
                  p = o["clientid"],
                  g = o["stattime"],
                  m = parseInt(o["count"]),
                  y = o["type"],
                  E = o["moduleId"];
                n = t.handleClickModuleData(n, a, y, E, m, s, c, d, p, g)
              }
              0 != n.length && f.$funCtrl.getMulFunCfg(f.$funKey.FUN_UPLOAD_CLICK_MODULE, (function(t) {
                var e = t[f.$funKey.FUN_UPLOAD_CLICK_MODULE];
                (e || 1 == e.enable || e.url) && (f.$log.logInfoString("requestUploadClickModule url ->" + e.url), f.$log.logInfoJsonString(n, "ClickData"), h.httpRequest.post({
                  url: e.url,
                  data: {
                    data: n
                  }
                }).then((function(t) {
                  console.log("点击量上传成功：" + JSON.stringify(t)), 0 == t.data.code && u.PluginApi.coolMethod("setCacheData", [l.$LocalClick.M0DULE, JSON.stringify([])])
                })).catch((function(t) {
                  console.log("点击量上传报错：" + JSON.stringify(t))
                })))
              }))
            }))
          },
          showHistoryPopup: function() {
            u.PluginApi.coolMethod("getCacheData", ["AddressHistory"], (function(t) {
              f.$log.logInfoJsonString(t, "historyWifi"), u.PluginApi.coolMethod("showPopup", [l.$SUBNVUE.HISTORY_WIFI, t || []])
            }))
          },
          backModal: function() {
            this.isVisitorMode ? this.visitorMaskClick() : "android" == getApp().globalData.phoneType && uni.showModal({
              content: "退出本应用后将不能通过客户端上网，确定要退出吗？",
              contentAlign: "left",
              cancelText: "退出应用",
              confirmText: "后台运行",
              success: function(t) {
                t.confirm ? u.PluginApi.coolMethod("onMoveTaskToBack", []) : t.cancel && u.PluginApi.coolMethod("onExitApplication", [])
              }
            })
          },
          handleSelfDebugTool: function() {
            this.setClickModule("3", l.$CLICK.SELFDEBUGTOOL), uni.navigateTo({
              url: "/pages/networkCheck/networkCheck"
            })
          },
          askSelfDebugToolDialog: function() {
            var t = this;
            var e = {
              titleText: "温馨提示",
              cancelText: "暂不使用",
              confirmText: "继续",
              allowHtml: !0,
              content: "欢迎使用网络检测服务。<br>该服务用于检测当前网络的连通性，在服务使用过程中需要向您收集：<b>IP地址、MAC地址（随机化处理后的MAC地址）、WiFi信息</b>。这些信息仅用于检测分析当前网络的连通性使用。<br>我们仅会将该信息用于上述用途，如果您不需要使用网络检测功能，则无需提供对应信息。",
              checkboxText: "继续使用即表示您已阅读并同意我们将您提供的信息仅用于上述用途",
              toastText: "若需要继续网络检测服务，请勾选用途提示信息"
            };
            u.PluginApi.coolMethod("showCheckBoxModal", [JSON.stringify(e)], (function(e) {
              e && (t.handleSelfDebugTool(), u.PluginApi.coolMethod("setCacheData", ["selfDebugToolKey", "1"]))
            }))
          },
          handleClickItem: function(t) {
            var e = this;
            if (this.isVisitorMode) this.visitorMaskClick();
            else {
              var n = this,
                i = this.swiperGridList[t];
              if (i.clickType != l.$CLICK.SELFDEBUGTOOL) {
                var r = this.$store.state.newStateGlobal;
                r != l.$ESTATE.ES_PRECONNECTFAIL && r != l.$ESTATE.ES_PRECONNECTING ? f.$funCtrl.getMulFunCfg(i.code, (function(t) {
                  var n;
                  n = t[i.code], n && 1 == n.enable && n.url ? i.clickType != l.$CLICK.CHARGEURL ? i.clickType != l.$CLICK.INFORURL ? i.clickType == l.$CLICK.FREEACCOUNTURL && (e.setClickModule("3", l.$CLICK.FREEACCOUNTURL), u.PluginApi.coolMethod("getMulCacheData", ["schoolID", "area", "domain", "version", "clientId", "DialAccount", "ip"], (function(t) {
                    var e = "";
                    e += "schoolid=" + t.schoolID + "&area=" + t.area, e += "&domain=" + t.domain + "&versions=" + t.version, e += "&clientid=" + t.clientId + "&account=" + t.DialAccount + "&ip=" + t.ip;
                    var r = getApp().AddParam(n.url, e);
                    f.$log.logInfoString("showExpAccountView url ->" + r), f.$webView.open(i.name, r, i.inner)
                  }))) : e.openCampusPage(i) : e.openRechargePage(n) : uni.showToast({
                    title: "本校暂未开放此功能",
                    icon: "none"
                  })
                })) : uni.showToast({
                  title: "请先连接校园网",
                  icon: "none"
                })
              } else u.PluginApi.coolMethod("getMulCacheData", ["selfDebugToolKey"], (function(t) {
                1 == t.selfDebugToolKey ? n.handleSelfDebugTool() : n.askSelfDebugToolDialog()
              }))
            }
          },
          openRechargePage: function(t) {
            this.setClickModule("3", l.$CLICK.CHARGEURL), u.PluginApi.coolMethod("getMulCacheData", ["schoolID", "area", "domain", "version", "clientId", "DialAccount", "ip", "ccmpid", "recharge-num"], (function(e) {
              console.log(JSON.stringify(e));
              var n = e.DialAccount,
                i = e.domain,
                r = e.area,
                o = e["schoolID"],
                a = e["recharge-num"];
              a = a.replace("%s", r), a = a.replace("%s", n), a = a.replace("%s", i), "0" == i && (a = a.replace("@0", "")), t.url = "".concat(t.url, "?schoolid=").concat(o, "&area=").concat(r, "&version=").concat(e["version"], "&clientId=").concat(e["clientId"], "&ip=").concat(e["ip"], "&ccmpid=").concat(e["ccmpid"], "&num=").concat(a), f.$log.logInfoString("RequestRecharge url ->" + t.url), console.log("充值路线：---" + t.url), f.$webView.open("充值缴费", t.url, !1)
            }))
          },
          openCampusPage: function(t) {
            this.campusNewMsg = !1, this.setClickModule("3", t.clickType), f.$funCtrl.getMulFunCfg(f.$funKey.FUN_CAMPUS, f.$funKey.FUN_CAPMUSINTERFACE, (function(e) {
              var n = e[f.$funKey.FUN_CAMPUS],
                i = n.url;
              1 == n.enable && n.url ? (n = e[f.$funKey.FUN_CAPMUSINTERFACE], 1 == n.enable && n.url && u.PluginApi.coolMethod("getMulCacheData", ["schoolID", "version", "DialAccount"], (function(r) {
                console.log("校园通----\x3e" + JSON.stringify(e)), f.$log.logInfoJsonString(r, "CampusData");
                var o = "",
                  a = r["schoolID"],
                  s = "android" == getApp().globalData.phoneType ? "4" : "5",
                  u = r["version"],
                  c = r["DialAccount"];
                o += "account=" + c + "&cid=" + a + "&ostype=" + s + "&version=" + u + "&infotype=0&ifurl=" + n.url, i += "?" + o, f.$log.logInfoString("campusIframe url ->" + i), console.log("校园通页面------\x3e" + i), f.$webView.open(t.name, i, t.inner)
              }))) : uni.showToast({
                title: "本校暂未开放此功能",
                icon: "none"
              })
            }))
          },
          addnoticeGD: function(t) {
            var e = this,
              n = t.data;
            if (void 0 != n && null != n && "" != n && "0" == n.rescode) {
              var i = n.content;
              void 0 != i && null != i && "" != i && (this.noticeList = [], void 0 != i.length && i.length > 0 ? i.forEach((function(t) {
                e.noticeList.push({
                  title: t.title,
                  url: t.url
                })
              })) : this.noticeList.push({
                title: i.title,
                url: i.url
              }), this.noticeList.length > 2 ? this.showMoreNotice = !0 : this.showMoreNotice = !1, console.log("广东公告"), console.log(that.noticeList), this.$store.commit("changeNoticeList", that.noticeList))
            }
          },
          getNotice: function() {
            var t = this,
              e = this;
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_QUERY_ANNOUNCEMENT, (function(n) {
              var i = n[f.$funKey.FUN_QUERY_ANNOUNCEMENT],
                r = i.url;
              f.$log.logInfoString("RequestNotice url ->" + r), i && 1 == i.enable && r && ("GD" == getApp().globalData.province ? u.PluginApi.coolMethod("getMulCacheData", ["schoolID"], (function(e) {
                var n = e.schoolID + "",
                  i = (new Date).getTime(),
                  o = (0, g.md5)(n + i + "Eshore!@#", !1),
                  a = {
                    schoolid: n,
                    authenticator: o,
                    timestamp: i
                  };
                f.$log.logInfoJsonString(a, "getAnnouncement data : "), f.$log.logInfoJsonString(r, "getAnnouncement url:");
                var s = h.httpRequest.post({
                  url: r,
                  data: JSON.stringify(a)
                });
                s.then((function(e) {
                  console.log(e), f.$log.logInfoJsonString(e, " GDNoticeData"), t.addnoticeGD(e)
                })).catch((function(t) {
                  $Log.logInfoJsonString("getAnnouncement fail : ", JSON.stringify(t))
                }))
              })) : u.PluginApi.coolMethod("getMulCacheData", ["DialAccount", "version", "schoolID"], (function(t) {
                var n = "",
                  i = t.schoolID;
                n += "account=" + t.DialAccount + "&version=" + t.version + "&CID=" + i + "&ostype=" + getApp().globalData.phoneType;
                var o = getApp().AddParam(r, n);
                f.$log.logInfoString("Other-Notice:" + o), console.log("公告请求路径：" + o), h.httpRequest.get({
                  url: o
                }).then((function(t) {
                  console.log(t), f.$log.logInfoJsonString(t, "NoticeData"), e.addNotice(t)
                })).catch((function(t) {
                  console.log("公告报错" + JSON.stringify(t))
                }))
              })))
            }))
          },
          addNotice: function(t) {
            var e = this;
            if (void 0 != t && null != t.data && "" != t.data) {
              var n = y.xml2js(t.data, {
                compact: !0
              });
              if (0 == n["NoticesResponse"]["code"]["_text"]) {
                e.noticeList = [];
                var i = n["NoticesResponse"]["Notices"]["Notice"];
                Array.isArray(i) ? i.forEach((function(t) {
                  e.noticeList.push({
                    title: t.Title["_text"],
                    content: t.Content["_text"],
                    url: t.URL["_cdata"]
                  })
                })) : e.noticeList.push({
                  title: i.Title["_text"],
                  content: i.Content["_text"],
                  url: i.URL["_cdata"]
                }), e.noticeList.length > 2 ? e.showMoreNotice = !0 : e.showMoreNotice = !1, e.$store.commit("changeNoticeList", e.noticeList)
              }
            }
          },
          getAdvertisement: function() {
            var t = this;
            if (0 == t.iframeHeight) {
              if (!this.frameView) return;
              this.frameView.fields({
                id: !0
              }, (function(t) {
                console.log("iframe"), console.log(JSON.stringify(t))
              })), this.frameView.boundingClientRect((function(e) {
                console.log("窗口高度"), console.log(JSON.stringify(e)), t.iframeHeight = e.height, t.iframeWidth = 0 != e.width ? e.width : .94 * getApp().globalData.screenWidth, t.advertmentContent()
              })).exec()
            } else t.advertmentContent()
          },
          advertmentContent: function() {
            var t = this;
            u.PluginApi.coolMethod("getMulCacheData", ["version", "DialAccount", "schoolID", "clientId"], (function(e) {
              var n = e.DialAccount,
                i = "android" == getApp().globalData.phoneType ? "4" : "5",
                r = e.schoolID,
                o = Math.round(Number(t.iframeWidth)),
                a = "ostype=" + i + "&version=" + e.version + "&dialupaccount=" + n + "&cid=" + r + "&height=" + t.iframeHeight + "&width=" + o + "&clientid=" + e.clientId;
              f.$funCtrl.getMulFunCfg(f.$funKey.FUN_PREADVERT, f.$funKey.FUN_ADVERT, (function(r) {
                var s = "";
                if (s = t.newStateGlobal == l.$ESTATE.ES_CONNECTED ? r[f.$funKey.FUN_ADVERT] : r[f.$funKey.FUN_PREADVERT], s && 1 == s.enable && s.url) {
                  var u = s.url + "&" + a,
                    c = s.url.split("?")[1];
                  f.$log.logInfoString("RequestAdvertUrl:" + u), console.log("广告url：" + u), h.httpRequest.get({
                    url: u
                  }).then((function(r) {
                    f.$log.logInfoJsonString(r, "ResponseAdvert");
                    var a = r.data;
                    if (console.log(a), a) {
                      var s = a.url;
                      if (!s) return void(t.showAdvertisement = !1);
                      var u = a.adid;
                      if (!u) return void(t.showAdvertisement = !1);
                      void 0 != n && null != n && "" != n || (n = "client");
                      var l = a.getadurl,
                        h = e.schoolID,
                        d = "&ostype=" + i + "&version=" + e.version + "&dialupaccount=" + n + "&cid=" + h + "&height=" + t.iframeHeight + "&width=" + o + "&getadurl=" + l + "&adid=" + u;
                      s += "?" + c + d, s = s.replace(/(^\s*)|(\s*$)/g, ""), t.showAdvertisement = !0, t.iframeUrl = s, f.$log.logInfoString("AdvertIframe url ->" + s), console.log("广告嵌入页面----\x3e" + s)
                    } else t.showAdvertisement = !1
                  })).catch((function(e) {
                    t.showAdvertisement = !1, console.log("获取广告失败" + JSON.stringify(e)), f.$log.logInfoString("RequestAdvertUrl err:" + e)
                  }))
                }
              }))
            }))
          },
          getDialogAdvertisement: function() {
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_SPLASH_AND_DIALOG_AD, (function(t) {
              var e = t[f.$funKey.FUN_SPLASH_AND_DIALOG_AD];
              if (e && 1 == e.enable && e.url) {
                var n = e.url;
                u.PluginApi.coolMethod("getMulCacheData", ["DialAccount", "version", "schoolID", "clientId"], (function(t) {
                  var e = "android" == getApp().globalData.phoneType ? "4" : "5",
                    i = "",
                    r = t.schoolID;
                  i += "ostype=" + e, i += "&version=" + t.version, i += "&dialupaccount=" + t.DialAccount, i += "&cid=" + r, i += "&clientid=" + t.clientId, i += "&adtype=2", i += "&key=1", n += "&" + i, f.$log.logInfoString("RequestDialogAD url ->" + n), h.httpRequest.get({
                    url: n
                  }).then((function(t) {
                    if (f.$log.logInfoJsonString(t, "ResponseDialogAD"), console.log("弹窗广告---" + JSON.stringify(t)), t.data) {
                      var e = t.data;
                      if (0 == e.status) {
                        var n = e.adid;
                        if (console.log("本地临时文件位置：" + JSON.stringify(e.data)), e.data && e.data.length > 0) {
                          var i = e.data[0].src;
                          u.PluginApi.coolMethod("loadDialogAD", [1080, 720, i, e.data[0].href, n])
                        }
                      }
                    }
                  })).catch((function(t) {
                    console.log("获取弹窗失败：" + t)
                  }))
                }))
              }
            }))
          },
          loadBalancereminderData: function() {
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_BALANCEREMINDER, (function(t) {
              var e = t[f.$funKey.FUN_BALANCEREMINDER];
              if (e && 1 == e.enable && e.url) {
                var n = e.url;
                u.PluginApi.coolMethod("getMulCacheData", ["DialAccount", "version", "schoolID"], (function(t) {
                  var e = "android" == getApp().globalData.phoneType ? "4" : "5",
                    i = "",
                    r = t.schoolID;
                  i += "ostype=" + e, i += "&version=" + t.version, i += "&dialupaccount=" + t.DialAccount, i += "&cid=" + r, n += "?" + i, f.$log.logInfoString("RequestloadBalancereminderData url ->" + n), console.log("余额提醒-------：" + n), h.httpRequest.get({
                    url: n
                  }).then((function(t) {
                    if (console.log("余额提醒：" + JSON.stringify(t)), f.$log.logInfoJsonString(t, "loadBalancereminderData"), 0 == t.status) {
                      var e = t.tooltips;
                      e = e.replace(/\r\n/g, "<br>"), e = e.replace(/\n/g, "<br>"), n = t.url, void 0 != e && "" != e && (n ? uni.showModal({
                        cancelText: "取消",
                        confirmText: "去充值",
                        content: e,
                        success: function(t) {
                          t.confirm && f.$webView.open("", n, !1)
                        }
                      }) : uni.showModal({
                        content: e,
                        showCancel: !1,
                        success: function() {}
                      }))
                    }
                  })).catch((function(t) {}))
                }))
              }
            }))
          },
          openWifi: function() {
            u.PluginApi.coolMethod("onIntentWiFiPage", [])
          },
          retryConnect: function() {
            this.mCurrentProgress = 0, this.mTotalProgress = 0, u.PluginApi.coolMethod("onRetry", [])
          },
          weakWifiConnect: function() {
            a && clearInterval(a), this.weakWifiLastTime = 5, u.PluginApi.coolMethod("onCheckNetGoon", [])
          },
          clickLogin: function() {
            if (this.isVisitorMode) this.visitorMaskClick();
            else {
              var t = this;
              u.PluginApi.coolMethod("getMulCacheData", ["DialAccount", "DialPassword"], (function(e) {
                var n = e["DialAccount"],
                  i = e["DialPassword"];
                t.isNotNull(n) && t.isNotNull(i) ? (getApp().globalData.userAccount = n, u.PluginApi.coolMethod("onAuth", [n, i, ""])) : uni.navigateTo({
                  url: "/pages/login/login"
                })
              }))
            }
          },
          updateChartProgress: function(t) {
            return console.log("-------" + parseInt(t)), 0 == parseInt(t) || void 0 == t || "" == t || NaN == t ? (this.mCurrentProgress = 0, void(this.mTotalProgress = 0)) : (this.mTotalProgress = parseInt(t), void this.progressShow())
          },
          progressShow: function() {
            if (this.mCurrentProgress < this.mTotalProgress) {
              this.mCurrentProgress++;
              var t = this.loadingText[this.mCurrentProgress];
              t && (this.currentLoadingText = t), this.newStateGlobal != l.$ESTATE.ES_PRECONNECTING && this.newStateGlobal != l.$ESTATE.ES_CONNECTING || setTimeout(this.progressShow, 100)
            }
          },
          isNotNull: function(t) {
            return void 0 != t && null != t && "" != t
          },
          toTermConnect: function() {
            u.PluginApi.coolMethod("onTerm", []), this.uploadClickModule()
          },
          showNum: function(t) {
            return t < 10 ? "0" + t : t
          },
          loginStart: function() {
            this.back_time = new Date;
            var t = this.back_time - this.login_time;
            console.log("loginStart->" + t), t += this.last_login_time, console.log("loginStart1->" + t), t = parseInt(t), f.$log.logInfoString("Login duration:" + t / 1e3), clearInterval(s), s = null;
            var e = this,
              n = Number(t / 1e3) || 0;
            s = setInterval((function() {
              n++, e.second = e.showNum(parseInt(n % 60)), e.hour = e.showNum(parseInt(n / 60 / 60)), e.minute = e.showNum(parseInt(n / 60) % 60)
            }), 1e3)
          },
          HandlePreConnectingMsg: function(t) {
            this.wifiState = (0, c.GetProcCode)(t.errorCode, t.subErrCode), this.updateChartProgress(t.extern)
          },
          getConfigInfo: function() {
            var t = this;
            f.$funCtrl.getMulFunCfg(f.$funKey.FUN_EXPERIENCE_ACCOUNT, f.$funKey.FUN_RECHARGE, f.$funKey.FUN_QRCODE, f.$funKey.FUN_CUSTOMERSERVICE_WELCOME, (function(e) {
              void 0 != e[f.$funKey.FUN_RECHARGE] && 1 == e[f.$funKey.FUN_RECHARGE].enable && (t.swiperGridList[1].isShow = !0), void 0 != e[f.$funKey.FUN_EXPERIENCE_ACCOUNT] && 1 == e[f.$funKey.FUN_EXPERIENCE_ACCOUNT].enable && (t.swiperGridList[2].isShow = !0), void 0 != e[f.$funKey.FUN_QRCODE] && 1 == e[f.$funKey.FUN_QRCODE].enable && (t.isShowQrcode = !0), void 0 != e[f.$funKey.FUN_CUSTOMERSERVICE_WELCOME] && 1 == e[f.$funKey.FUN_CUSTOMERSERVICE_WELCOME].enable && (t.isShowCustomerService = !0)
            }))
          },
          HandlePreConnectedMsg: function(t) {
            var e = this;
            this.getConfigInfo(), console.log(t), this.wifiState = (0, c.GetProcCode)(t.errorCode, t.subErrCode);
            var n = this;
            this.isInitAfterCheck && ((0, p.default)(!1), this.isInitAfterCheck = !1), u.PluginApi.coolMethod("getMulCacheData", ["DialAccount", "DialPassword", "isAutoLogin"], (function(t) {
              var e = t["DialAccount"];
              console.log("当前账号为：" + e);
              var i = t["DialPassword"],
                r = t["isAutoLogin"];
              n.isNotNull(e) && n.isNotNull(i) && "0" != r && 1 == n.mSelfLogin ? (getApp().globalData.userAccount = e, getApp().globalData.userPwd = i, n.mSelfLogin = 0, u.PluginApi.coolMethod("onAuth", [e, i, ""])) : n.mSelfLogin && (n.mSelfLogin = 0, uni.navigateTo({
                url: "/pages/login/login"
              }))
            })), f.$funCtrl.getMulFunCfg(f.$funKey.FUN_MY_CATEGORYAPP, f.$funKey.FUN_RECOMMEND_CATEGORYAPP, (function(t) {
              e.isNotNull(t) && (e.isNotNull(t[f.$funKey.FUN_MY_CATEGORYAPP]) || e.isNotNull(t[f.$funKey.FUN_RECOMMEND_CATEGORYAPP])) ? getApp().globalData.toolAppMallShow = !0 : getApp().globalData.toolAppMallShow = !1
            }))
          }
        }, "isNotNull", (function(t) {
          return void 0 != t && null != t && "" != t
        })), "HandlePreConnectFailMsg", (function(t) {
          return this.isInitAfterCheck = !1, this.showAdvertisement = !1, this.wifiState = (0, c.GetProcCode)(t.errorCode, t.subErrCode), this.helpGuideCode = (0, c.GetErrorCode)(t.errorCode, t.subErrCode), "140003" == t.errorCode || "140002" == t.errorCode ? (f.$funCtrl.getMulFunCfg(f.$funKey.FUN_HOMEPAGE, (function(t) {
            console.log("----\x3e" + JSON.stringify(t));
            var e = t[f.$funKey.FUN_HOMEPAGE];
            console.log("官网信息->" + JSON.stringify(e)), e && 1 == e.enable && e.url && uni.showModal({
              cancelText: "退出客户端",
              confirmText: "到官网下载",
              content: (0, c.GetProcCode)(140003),
              closeOnBack: !1,
              success: function(t) {
                t.confirm ? f.$webView.open("", e.url, !1) : t.cancel && u.PluginApi.coolMethod("onExitApplication", [])
              }
            })
          })), !0) : (console.log("检测失败" + t), !1)
        })), "HandleConnectingMsg", (function(t) {
          this.userAccount = getApp().globalData.userAccount, console.log("登陆中"), this.updateChartProgress(t.extern)
        })), "HandleConnectedMsg", (function(t) {
          getApp().globalData.isAgreePrivacy = !1, console.log("登录成功：" + JSON.stringify(t)), this.login_time = new Date, this.last_login_time = parseInt(t.extern), console.log(this.last_login_time), this.loginStart(), this.wifiState = (0, c.GetProcCode)(t.errorCode, t.subErrCode);
          var e = uni.getSubNVueById(l.$SUBNVUE.VERIFY);
          e.hide(250), this.mSelfLogin = 0
        })), "HandleConnectFailMsg", (function(t) {
          var e = (0, c.GetErrorCode)(t.errorCode, t.subErrCode);
          if ("140102.11060000" == e || "140102.11062000" == e || "140102.11063000" == e) {
            this.isVerifyPopup = !0;
            var n = uni.getSubNVueById(l.$SUBNVUE.VERIFY),
              i = (0, c.GetProcCode)(t.errorCode, t.subErrCode);
            n.show(i, getApp().globalData.userAccount, getApp().globalData.userPwd)
          } else {
            if ("android" == getApp().globalData.phoneType) {
              var r = (0, c.GetProcCode)(t.errorCode, t.subErrCode);
              u.PluginApi.coolMethod("postBackgroundNotification", [r])
            }
            this.$store.commit("changeNewStateGlobal", l.$ESTATE.ES_PRECONNECTED);
            var o = JSON.stringify(t),
              a = getCurrentPages(),
              s = a[a.length - 1];
            "pages/login/login" == s.route ? setTimeout((function() {
              s.$vm.HandleConnectFailMsg(t)
            }), 400) : uni.navigateTo({
              url: "/pages/login/login?data=".concat(o)
            })
          }
        })), "HandleDisConnectedMsg", (function(t) {
          uni.hideLoading()
        })), "HandleDisConnectingMsg", (function(t) {
          clearInterval(s)
        })), "getWiFiName", (function(t) {
          return "<unknown ssid>" == t ? "未获取到WiFi名称" : t
        })), "gotoPermissionView", (function() {
          u.PluginApi.coolMethod("onAskSSIDPermission", [], (function(t) {
            1 != t && uni.navigateTo({
              url: "/pages/location/location"
            })
          }))
        }))
      }
    },
    c2ae: function(t, e, n) {
      t.exports = n("e372").PassThrough
    },
    c51a: function(t, e, n) {
      var i = n("844f"),
        r = n("078a"),
        o = n("cef9"),
        a = n("493b");
      t.exports = {
        xml2js: i,
        xml2json: r,
        js2xml: o,
        json2xml: a
      }
    },
    c685: function(t, e, n) {
      "use strict";
      n("7a82");
      var i = n("4ea4").default;
      Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.$webView = e.$log = e.$funKey = e.$funCtrl = void 0, n("14d9"), n("f4b3"), n("e9c4"), n("b64b");
      var r = n("1698");
      i(n("be6e")), e.$funKey = {
        FUN_VISIBLE_TO_TOURISTS: "VisibleToTourists",
        FUN_PROVINCE: "Province",
        FUN_PREADVERT: "PreAdvert",
        FUN_ADVERT: "Advert",
        FUN_RECHARGE: "Recharge",
        FUN_EXPERIENCE_ACCOUNT: "ExperienceAccount",
        FUN_QUERY_ANNOUNCEMENT: "QueryAnnouncement",
        FUN_MANAGERINTERNET: "ManagerInternet",
        FUN_PACKAGEQUERY: "PackageQuery",
        FUN_USEDTIME: "UsedTime",
        FUN_FORGOTPWD: "ForgotPassword",
        FUN_MODIFYPWD: "ModifyPassword",
        FUN_PREVENTBROKENNETWORK: "PreventBrokenNetwork",
        FUN_STOPMACHINE: "StopMachine",
        FUN_FEEDBACK_AND_ADVICE: "FeedbackAndAdvice",
        FUN_REPORT_PHONE: "ReportPhone",
        FUN_MYFEEDBACK: "MyFeedback",
        FUN_PHONEMARKETINGDATA: "PhoneMarketingData",
        FUN_CUSTOMERSERVICE_WELCOME: "CustomerServiceWelcome",
        FUN_CUSTOMERSERVICE_QUESTION: "CustomerServiceQuestion",
        FUN_CUSTOMERSERVICE_ANSWER: "CustomerServiceAnswer",
        FUN_CUSTOMERSERVICE_MSGTiME: "CustomerServiceMsgTime",
        FUN_SPLASH_AND_DIALOG_AD: "NewSplashAndDialogAD",
        FUN_RECOMMEND_CATEGORYAPP: "RecommendCategoryApp",
        FUN_MORE_CATEGORYAPP: "MoreCategoryApp",
        FUN_MY_CATEGORYAPP: "MyCategoryApp",
        FUN_UPLOAD_MYAPP: "UploadMyApp",
        FUN_SLIDEAPP_AD: "SlideAppAD",
        FUN_APPSTORE_RESOURCE: "AppStoreResource",
        FUN_APPDETAILPAGE: "AppDetailPage",
        FUN_APPSERVER_DETECT: "AppServerDetect",
        FUN_UPLOAD_CLICK_MODULE: "UploadClickModule",
        FUN_QRCODE: "QRcode",
        FUN_HOMEPAGE: "HomePage",
        FUN_BALANCEREMINDER: "Balancereminder",
        FUN_CAMPUS: "Campus",
        FUN_BILL: "Bill",
        FUN_CAPMUSINTERFACE: "CampusInterface",
        FUN_CAMPUSNEWSTIME: "CampusNewsTime",
        FUN_PRIVACYRESET: "PrivacyReset",
        FUN_ONLINESERVER: "OnlineServer"
      }, e.$log = {
        logDebugString: function(t) {
          r.PluginApi.coolMethod("jsLog", ["debug", t])
        },
        logDebugJsonString: function(t, e) {
          r.PluginApi.coolMethod("jsLog", ["debug", (e ? e + ":" : "") + JSON.stringify(t)])
        },
        logInfoString: function(t) {
          r.PluginApi.coolMethod("jsLog", ["info", t])
        },
        logInfoJsonString: function(t, e) {
          r.PluginApi.coolMethod("jsLog", ["info", (e ? e + ":" : "") + JSON.stringify(t)])
        }
      }, e.$funCtrl = {
        getMulFunCfg: function() {
          var t = null,
            e = arguments.length;
          void 0 != arguments[e - 1] && "function" == typeof arguments[e - 1] && (t = arguments[e - 1], e--);
          for (var n = [], i = [], o = 0; o < e; o++) {
            var a = arguments[o];
            i.push(a), a = "FUN_" + a, n.push(a)
          }
          r.PluginApi.coolMethod("getMulCacheData", n, (function(n) {
            for (var r = {}, o = 0; o < e; o++) {
              var a = i[o],
                s = "FUN_" + a,
                u = n[s];
              void 0 != u && null != u && "" != u && (u = JSON.parse(u), r[a] = u)
            }
            t && t(r)
          }))
        }
      }, e.$webView = {
        open: function(t, e, n) {
          0 == n ? r.PluginApi.coolMethod("onInAppBrowser", [e]) : r.PluginApi.coolMethod("onInWebView", [e, t])
        }
      }
    },
    cef9: function(t, e, n) {
      var i, r, o = n("96c1"),
        a = n("9b12").isArray;

      function s(t, e, n) {
        return (!n && t.spaces ? "\n" : "") + Array(e + 1).join(t.spaces)
      }

      function u(t, e, n) {
        if (e.ignoreAttributes) return "";
        "attributesFn" in e && (t = e.attributesFn(t, r, i));
        var o, a, u, c, l = [];
        for (o in t) t.hasOwnProperty(o) && null !== t[o] && void 0 !== t[o] && (c = e.noQuotesForNativeAttributes && "string" !== typeof t[o] ? "" : '"', a = "" + t[o], a = a.replace(/"/g, "&quot;"), u = "attributeNameFn" in e ? e.attributeNameFn(o, a, r, i) : o, l.push(e.spaces && e.indentAttributes ? s(e, n + 1, !1) : " "), l.push(u + "=" + c + ("attributeValueFn" in e ? e.attributeValueFn(a, o, r, i) : a) + c));
        return t && Object.keys(t).length && e.spaces && e.indentAttributes && l.push(s(e, n, !1)), l.join("")
      }

      function c(t, e, n) {
        return i = t, r = "xml", e.ignoreDeclaration ? "" : "<?xml" + u(t[e.attributesKey], e, n) + "?>"
      }

      function l(t, e, n) {
        if (e.ignoreInstruction) return "";
        var o;
        for (o in t)
          if (t.hasOwnProperty(o)) break;
        var a = "instructionNameFn" in e ? e.instructionNameFn(o, t[o], r, i) : o;
        if ("object" === typeof t[o]) return i = t, r = a, "<?" + a + u(t[o][e.attributesKey], e, n) + "?>";
        var s = t[o] ? t[o] : "";
        return "instructionFn" in e && (s = e.instructionFn(s, o, r, i)), "<?" + a + (s ? " " + s : "") + "?>"
      }

      function f(t, e) {
        return e.ignoreComment ? "" : "\x3c!--" + ("commentFn" in e ? e.commentFn(t, r, i) : t) + "--\x3e"
      }

      function h(t, e) {
        return e.ignoreCdata ? "" : "<![CDATA[" + ("cdataFn" in e ? e.cdataFn(t, r, i) : t.replace("]]>", "]]]]><![CDATA[>")) + "]]>"
      }

      function d(t, e) {
        return e.ignoreDoctype ? "" : "<!DOCTYPE " + ("doctypeFn" in e ? e.doctypeFn(t, r, i) : t) + ">"
      }

      function p(t, e) {
        return e.ignoreText ? "" : (t = "" + t, t = t.replace(/&amp;/g, "&"), t = t.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;"), "textFn" in e ? e.textFn(t, r, i) : t)
      }

      function g(t, e, n, o) {
        return t.reduce((function(t, a) {
          var c = s(e, n, o && !t);
          switch (a.type) {
            case "element":
              return t + c + function(t, e, n) {
                i = t, r = t.name;
                var o = [],
                  a = "elementNameFn" in e ? e.elementNameFn(t.name, t) : t.name;
                o.push("<" + a), t[e.attributesKey] && o.push(u(t[e.attributesKey], e, n));
                var s = t[e.elementsKey] && t[e.elementsKey].length || t[e.attributesKey] && "preserve" === t[e.attributesKey]["xml:space"];
                return s || (s = "fullTagEmptyElementFn" in e ? e.fullTagEmptyElementFn(t.name, t) : e.fullTagEmptyElement), s ? (o.push(">"), t[e.elementsKey] && t[e.elementsKey].length && (o.push(g(t[e.elementsKey], e, n + 1)), i = t, r = t.name), o.push(e.spaces && function(t, e) {
                  var n;
                  if (t.elements && t.elements.length)
                    for (n = 0; n < t.elements.length; ++n) switch (t.elements[n][e.typeKey]) {
                      case "text":
                        if (e.indentText) return !0;
                        break;
                      case "cdata":
                        if (e.indentCdata) return !0;
                        break;
                      case "instruction":
                        if (e.indentInstruction) return !0;
                        break;
                      case "doctype":
                      case "comment":
                      case "element":
                        return !0;
                      default:
                        return !0
                    }
                  return !1
                }(t, e) ? "\n" + Array(n + 1).join(e.spaces) : ""), o.push("</" + a + ">")) : o.push("/>"), o.join("")
              }(a, e, n);
            case "comment":
              return t + c + f(a[e.commentKey], e);
            case "doctype":
              return t + c + d(a[e.doctypeKey], e);
            case "cdata":
              return t + (e.indentCdata ? c : "") + h(a[e.cdataKey], e);
            case "text":
              return t + (e.indentText ? c : "") + p(a[e.textKey], e);
            case "instruction":
              var m = {};
              return m[a[e.nameKey]] = a[e.attributesKey] ? a : a[e.instructionKey], t + (e.indentInstruction ? c : "") + l(m, e, n)
          }
        }), "")
      }

      function m(t, e, n) {
        var i;
        for (i in t)
          if (t.hasOwnProperty(i)) switch (i) {
            case e.parentKey:
            case e.attributesKey:
              break;
            case e.textKey:
              if (e.indentText || n) return !0;
              break;
            case e.cdataKey:
              if (e.indentCdata || n) return !0;
              break;
            case e.instructionKey:
              if (e.indentInstruction || n) return !0;
              break;
            case e.doctypeKey:
            case e.commentKey:
              return !0;
            default:
              return !0
          }
        return !1
      }

      function y(t, e, n, o, a) {
        i = t, r = e;
        var c = "elementNameFn" in n ? n.elementNameFn(e, t) : e;
        if ("undefined" === typeof t || null === t || "" === t) return "fullTagEmptyElementFn" in n && n.fullTagEmptyElementFn(e, t) || n.fullTagEmptyElement ? "<" + c + "></" + c + ">" : "<" + c + "/>";
        var l = [];
        if (e) {
          if (l.push("<" + c), "object" !== typeof t) return l.push(">" + p(t, n) + "</" + c + ">"), l.join("");
          t[n.attributesKey] && l.push(u(t[n.attributesKey], n, o));
          var f = m(t, n, !0) || t[n.attributesKey] && "preserve" === t[n.attributesKey]["xml:space"];
          if (f || (f = "fullTagEmptyElementFn" in n ? n.fullTagEmptyElementFn(e, t) : n.fullTagEmptyElement), !f) return l.push("/>"), l.join("");
          l.push(">")
        }
        return l.push(E(t, n, o + 1, !1)), i = t, r = e, e && l.push((a ? s(n, o, !1) : "") + "</" + c + ">"), l.join("")
      }

      function E(t, e, n, i) {
        var r, o, u, g = [];
        for (o in t)
          if (t.hasOwnProperty(o))
            for (u = a(t[o]) ? t[o] : [t[o]], r = 0; r < u.length; ++r) {
              switch (o) {
                case e.declarationKey:
                  g.push(c(u[r], e, n));
                  break;
                case e.instructionKey:
                  g.push((e.indentInstruction ? s(e, n, i) : "") + l(u[r], e, n));
                  break;
                case e.attributesKey:
                case e.parentKey:
                  break;
                case e.textKey:
                  g.push((e.indentText ? s(e, n, i) : "") + p(u[r], e));
                  break;
                case e.cdataKey:
                  g.push((e.indentCdata ? s(e, n, i) : "") + h(u[r], e));
                  break;
                case e.doctypeKey:
                  g.push(s(e, n, i) + d(u[r], e));
                  break;
                case e.commentKey:
                  g.push(s(e, n, i) + f(u[r], e));
                  break;
                default:
                  g.push(s(e, n, i) + y(u[r], o, e, n, m(u[r], e)))
              }
              i = i && !g.length
            }
        return g.join("")
      }
      t.exports = function(t, e) {
        e = function(t) {
          var e = o.copyOptions(t);
          return o.ensureFlagExists("ignoreDeclaration", e), o.ensureFlagExists("ignoreInstruction", e), o.ensureFlagExists("ignoreAttributes", e), o.ensureFlagExists("ignoreText", e), o.ensureFlagExists("ignoreComment", e), o.ensureFlagExists("ignoreCdata", e), o.ensureFlagExists("ignoreDoctype", e), o.ensureFlagExists("compact", e), o.ensureFlagExists("indentText", e), o.ensureFlagExists("indentCdata", e), o.ensureFlagExists("indentAttributes", e), o.ensureFlagExists("indentInstruction", e), o.ensureFlagExists("fullTagEmptyElement", e), o.ensureFlagExists("noQuotesForNativeAttributes", e), o.ensureSpacesExists(e), "number" === typeof e.spaces && (e.spaces = Array(e.spaces + 1).join(" ")), o.ensureKeyExists("declaration", e), o.ensureKeyExists("instruction", e), o.ensureKeyExists("attributes", e), o.ensureKeyExists("text", e), o.ensureKeyExists("comment", e), o.ensureKeyExists("cdata", e), o.ensureKeyExists("doctype", e), o.ensureKeyExists("type", e), o.ensureKeyExists("name", e), o.ensureKeyExists("elements", e), o.checkFnExists("doctype", e), o.checkFnExists("instruction", e), o.checkFnExists("cdata", e), o.checkFnExists("comment", e), o.checkFnExists("text", e), o.checkFnExists("instructionName", e), o.checkFnExists("elementName", e), o.checkFnExists("attributeName", e), o.checkFnExists("attributeValue", e), o.checkFnExists("attributes", e), o.checkFnExists("fullTagEmptyElement", e), e
        }(e);
        var n = [];
        return i = t, r = "_root_", e.compact ? n.push(E(t, e, 0, !0)) : (t[e.declarationKey] && n.push(c(t[e.declarationKey], e, 0)), t[e.elementsKey] && t[e.elementsKey].length && n.push(g(t[e.elementsKey], e, 0, !n.length))), n.join("")
      }
    },
    d17b: function(t, e, n) {
      t.exports = n("e372").Transform
    },
    d485: function(t, e, n) {
      t.exports = o;
      var i = n("faa1").EventEmitter,
        r = n("3fb5");

      function o() {
        i.call(this)
      }
      r(o, i), o.Readable = n("e372"), o.Writable = n("2c63"), o.Duplex = n("0960"), o.Transform = n("d17b"), o.PassThrough = n("c2ae"), o.Stream = o, o.prototype.pipe = function(t, e) {
        var n = this;

        function r(e) {
          t.writable && !1 === t.write(e) && n.pause && n.pause()
        }

        function o() {
          n.readable && n.resume && n.resume()
        }
        n.on("data", r), t.on("drain", o), t._isStdio || e && !1 === e.end || (n.on("end", s), n.on("close", u));
        var a = !1;

        function s() {
          a || (a = !0, t.end())
        }

        function u() {
          a || (a = !0, "function" === typeof t.destroy && t.destroy())
        }

        function c(t) {
          if (l(), 0 === i.listenerCount(this, "error")) throw t
        }

        function l() {
          n.removeListener("data", r), t.removeListener("drain", o), n.removeListener("end", s), n.removeListener("close", u), n.removeListener("error", c), t.removeListener("error", c), n.removeListener("end", l), n.removeListener("close", l), t.removeListener("close", l)
        }
        return n.on("error", c), t.on("error", c), n.on("end", l), n.on("close", l), t.on("close", l), t.emit("pipe", n), t
      }
    },
    dc14: function(t, e, n) {
      "use strict";
      (function(e, i) {
        var r = n("966d");

        function o(t) {
          var e = this;
          this.next = null, this.entry = null, this.finish = function() {
            (function(t, e, n) {
              var i = t.entry;
              t.entry = null;
              while (i) {
                var r = i.callback;
                e.pendingcb--, r(n), i = i.next
              }
              e.corkedRequestsFree.next = t
            })(e, t)
          }
        }
        t.exports = y;
        var a, s = !e.browser && ["v0.10", "v0.9."].indexOf(e.version.slice(0, 5)) > -1 ? setImmediate : r.nextTick;
        y.WritableState = m;
        var u = Object.create(n("3a7c"));
        u.inherits = n("3fb5");
        var c = {
            deprecate: n("b7d1")
          },
          l = n("429b"),
          f = n("8707").Buffer,
          h = ("undefined" !== typeof i ? i : "undefined" !== typeof window ? window : "undefined" !== typeof self ? self : {}).Uint8Array || function() {};
        var d, p = n("4681");

        function g() {}

        function m(t, e) {
          a = a || n("b19a"), t = t || {};
          var i = e instanceof a;
          this.objectMode = !!t.objectMode, i && (this.objectMode = this.objectMode || !!t.writableObjectMode);
          var u = t.highWaterMark,
            c = t.writableHighWaterMark,
            l = this.objectMode ? 16 : 16384;
          this.highWaterMark = u || 0 === u ? u : i && (c || 0 === c) ? c : l, this.highWaterMark = Math.floor(this.highWaterMark), this.finalCalled = !1, this.needDrain = !1, this.ending = !1, this.ended = !1, this.finished = !1, this.destroyed = !1;
          var f = !1 === t.decodeStrings;
          this.decodeStrings = !f, this.defaultEncoding = t.defaultEncoding || "utf8", this.length = 0, this.writing = !1, this.corked = 0, this.sync = !0, this.bufferProcessing = !1, this.onwrite = function(t) {
            (function(t, e) {
              var n = t._writableState,
                i = n.sync,
                o = n.writecb;
              if (function(t) {
                  t.writing = !1, t.writecb = null, t.length -= t.writelen, t.writelen = 0
                }(n), e)(function(t, e, n, i, o) {
                --e.pendingcb, n ? (r.nextTick(o, i), r.nextTick(A, t, e), t._writableState.errorEmitted = !0, t.emit("error", i)) : (o(i), t._writableState.errorEmitted = !0, t.emit("error", i), A(t, e))
              })(t, n, i, e, o);
              else {
                var a = w(n);
                a || n.corked || n.bufferProcessing || !n.bufferedRequest || v(t, n), i ? s(b, t, n, a, o) : b(t, n, a, o)
              }
            })(e, t)
          }, this.writecb = null, this.writelen = 0, this.bufferedRequest = null, this.lastBufferedRequest = null, this.pendingcb = 0, this.prefinished = !1, this.errorEmitted = !1, this.bufferedRequestCount = 0, this.corkedRequestsFree = new o(this)
        }

        function y(t) {
          if (a = a || n("b19a"), !d.call(y, this) && !(this instanceof a)) return new y(t);
          this._writableState = new m(t, this), this.writable = !0, t && ("function" === typeof t.write && (this._write = t.write), "function" === typeof t.writev && (this._writev = t.writev), "function" === typeof t.destroy && (this._destroy = t.destroy), "function" === typeof t.final && (this._final = t.final)), l.call(this)
        }

        function E(t, e, n, i, r, o, a) {
          e.writelen = i, e.writecb = a, e.writing = !0, e.sync = !0, n ? t._writev(r, e.onwrite) : t._write(r, o, e.onwrite), e.sync = !1
        }

        function b(t, e, n, i) {
          n || function(t, e) {
            0 === e.length && e.needDrain && (e.needDrain = !1, t.emit("drain"))
          }(t, e), e.pendingcb--, i(), A(t, e)
        }

        function v(t, e) {
          e.bufferProcessing = !0;
          var n = e.bufferedRequest;
          if (t._writev && n && n.next) {
            var i = e.bufferedRequestCount,
              r = new Array(i),
              a = e.corkedRequestsFree;
            a.entry = n;
            var s = 0,
              u = !0;
            while (n) r[s] = n, n.isBuf || (u = !1), n = n.next, s += 1;
            r.allBuffers = u, E(t, e, !0, e.length, r, "", a.finish), e.pendingcb++, e.lastBufferedRequest = null, a.next ? (e.corkedRequestsFree = a.next, a.next = null) : e.corkedRequestsFree = new o(e), e.bufferedRequestCount = 0
          } else {
            while (n) {
              var c = n.chunk,
                l = n.encoding,
                f = n.callback,
                h = e.objectMode ? 1 : c.length;
              if (E(t, e, !1, h, c, l, f), n = n.next, e.bufferedRequestCount--, e.writing) break
            }
            null === n && (e.lastBufferedRequest = null)
          }
          e.bufferedRequest = n, e.bufferProcessing = !1
        }

        function w(t) {
          return t.ending && 0 === t.length && null === t.bufferedRequest && !t.finished && !t.writing
        }

        function T(t, e) {
          t._final((function(n) {
            e.pendingcb--, n && t.emit("error", n), e.prefinished = !0, t.emit("prefinish"), A(t, e)
          }))
        }

        function A(t, e) {
          var n = w(e);
          return n && (function(t, e) {
            e.prefinished || e.finalCalled || ("function" === typeof t._final ? (e.pendingcb++, e.finalCalled = !0, r.nextTick(T, t, e)) : (e.prefinished = !0, t.emit("prefinish")))
          }(t, e), 0 === e.pendingcb && (e.finished = !0, t.emit("finish"))), n
        }
        u.inherits(y, l), m.prototype.getBuffer = function() {
            var t = this.bufferedRequest,
              e = [];
            while (t) e.push(t), t = t.next;
            return e
          },
          function() {
            try {
              Object.defineProperty(m.prototype, "buffer", {
                get: c.deprecate((function() {
                  return this.getBuffer()
                }), "_writableState.buffer is deprecated. Use _writableState.getBuffer instead.", "DEP0003")
              })
            } catch (t) {}
          }(), "function" === typeof Symbol && Symbol.hasInstance && "function" === typeof Function.prototype[Symbol.hasInstance] ? (d = Function.prototype[Symbol.hasInstance], Object.defineProperty(y, Symbol.hasInstance, {
            value: function(t) {
              return !!d.call(this, t) || this === y && (t && t._writableState instanceof m)
            }
          })) : d = function(t) {
            return t instanceof this
          }, y.prototype.pipe = function() {
            this.emit("error", new Error("Cannot pipe, not readable"))
          }, y.prototype.write = function(t, e, n) {
            var i = this._writableState,
              o = !1,
              a = !i.objectMode && function(t) {
                return f.isBuffer(t) || t instanceof h
              }(t);
            return a && !f.isBuffer(t) && (t = function(t) {
              return f.from(t)
            }(t)), "function" === typeof e && (n = e, e = null), a ? e = "buffer" : e || (e = i.defaultEncoding), "function" !== typeof n && (n = g), i.ended ? function(t, e) {
              var n = new Error("write after end");
              t.emit("error", n), r.nextTick(e, n)
            }(this, n) : (a || function(t, e, n, i) {
              var o = !0,
                a = !1;
              return null === n ? a = new TypeError("May not write null values to stream") : "string" === typeof n || void 0 === n || e.objectMode || (a = new TypeError("Invalid non-string/buffer chunk")), a && (t.emit("error", a), r.nextTick(i, a), o = !1), o
            }(this, i, t, n)) && (i.pendingcb++, o = function(t, e, n, i, r, o) {
              if (!n) {
                var a = function(t, e, n) {
                  t.objectMode || !1 === t.decodeStrings || "string" !== typeof e || (e = f.from(e, n));
                  return e
                }(e, i, r);
                i !== a && (n = !0, r = "buffer", i = a)
              }
              var s = e.objectMode ? 1 : i.length;
              e.length += s;
              var u = e.length < e.highWaterMark;
              u || (e.needDrain = !0);
              if (e.writing || e.corked) {
                var c = e.lastBufferedRequest;
                e.lastBufferedRequest = {
                  chunk: i,
                  encoding: r,
                  isBuf: n,
                  callback: o,
                  next: null
                }, c ? c.next = e.lastBufferedRequest : e.bufferedRequest = e.lastBufferedRequest, e.bufferedRequestCount += 1
              } else E(t, e, !1, s, i, r, o);
              return u
            }(this, i, a, t, e, n)), o
          }, y.prototype.cork = function() {
            var t = this._writableState;
            t.corked++
          }, y.prototype.uncork = function() {
            var t = this._writableState;
            t.corked && (t.corked--, t.writing || t.corked || t.bufferProcessing || !t.bufferedRequest || v(this, t))
          }, y.prototype.setDefaultEncoding = function(t) {
            if ("string" === typeof t && (t = t.toLowerCase()), !(["hex", "utf8", "utf-8", "ascii", "binary", "base64", "ucs2", "ucs-2", "utf16le", "utf-16le", "raw"].indexOf((t + "").toLowerCase()) > -1)) throw new TypeError("Unknown encoding: " + t);
            return this._writableState.defaultEncoding = t, this
          }, Object.defineProperty(y.prototype, "writableHighWaterMark", {
            enumerable: !1,
            get: function() {
              return this._writableState.highWaterMark
            }
          }), y.prototype._write = function(t, e, n) {
            n(new Error("_write() is not implemented"))
          }, y.prototype._writev = null, y.prototype.end = function(t, e, n) {
            var i = this._writableState;
            "function" === typeof t ? (n = t, t = null, e = null) : "function" === typeof e && (n = e, e = null), null !== t && void 0 !== t && this.write(t, e), i.corked && (i.corked = 1, this.uncork()), i.ending || function(t, e, n) {
              e.ending = !0, A(t, e), n && (e.finished ? r.nextTick(n) : t.once("finish", n));
              e.ended = !0, t.writable = !1
            }(this, i, n)
          }, Object.defineProperty(y.prototype, "destroyed", {
            get: function() {
              return void 0 !== this._writableState && this._writableState.destroyed
            },
            set: function(t) {
              this._writableState && (this._writableState.destroyed = t)
            }
          }), y.prototype.destroy = p.destroy, y.prototype._undestroy = p.undestroy, y.prototype._destroy = function(t, e) {
            this.end(), e(t)
          }
      }).call(this, n("4362"), n("c8ba"))
    },
    df7c: function(t, e, n) {
      (function(t) {
        function n(t, e) {
          for (var n = 0, i = t.length - 1; i >= 0; i--) {
            var r = t[i];
            "." === r ? t.splice(i, 1) : ".." === r ? (t.splice(i, 1), n++) : n && (t.splice(i, 1), n--)
          }
          if (e)
            for (; n--; n) t.unshift("..");
          return t
        }

        function i(t, e) {
          if (t.filter) return t.filter(e);
          for (var n = [], i = 0; i < t.length; i++) e(t[i], i, t) && n.push(t[i]);
          return n
        }
        e.resolve = function() {
          for (var e = "", r = !1, o = arguments.length - 1; o >= -1 && !r; o--) {
            var a = o >= 0 ? arguments[o] : t.cwd();
            if ("string" !== typeof a) throw new TypeError("Arguments to path.resolve must be strings");
            a && (e = a + "/" + e, r = "/" === a.charAt(0))
          }
          return e = n(i(e.split("/"), (function(t) {
            return !!t
          })), !r).join("/"), (r ? "/" : "") + e || "."
        }, e.normalize = function(t) {
          var o = e.isAbsolute(t),
            a = "/" === r(t, -1);
          return t = n(i(t.split("/"), (function(t) {
            return !!t
          })), !o).join("/"), t || o || (t = "."), t && a && (t += "/"), (o ? "/" : "") + t
        }, e.isAbsolute = function(t) {
          return "/" === t.charAt(0)
        }, e.join = function() {
          var t = Array.prototype.slice.call(arguments, 0);
          return e.normalize(i(t, (function(t, e) {
            if ("string" !== typeof t) throw new TypeError("Arguments to path.join must be strings");
            return t
          })).join("/"))
        }, e.relative = function(t, n) {
          function i(t) {
            for (var e = 0; e < t.length; e++)
              if ("" !== t[e]) break;
            for (var n = t.length - 1; n >= 0; n--)
              if ("" !== t[n]) break;
            return e > n ? [] : t.slice(e, n - e + 1)
          }
          t = e.resolve(t).substr(1), n = e.resolve(n).substr(1);
          for (var r = i(t.split("/")), o = i(n.split("/")), a = Math.min(r.length, o.length), s = a, u = 0; u < a; u++)
            if (r[u] !== o[u]) {
              s = u;
              break
            } var c = [];
          for (u = s; u < r.length; u++) c.push("..");
          return c = c.concat(o.slice(s)), c.join("/")
        }, e.sep = "/", e.delimiter = ":", e.dirname = function(t) {
          if ("string" !== typeof t && (t += ""), 0 === t.length) return ".";
          for (var e = t.charCodeAt(0), n = 47 === e, i = -1, r = !0, o = t.length - 1; o >= 1; --o)
            if (e = t.charCodeAt(o), 47 === e) {
              if (!r) {
                i = o;
                break
              }
            } else r = !1;
          return -1 === i ? n ? "/" : "." : n && 1 === i ? "/" : t.slice(0, i)
        }, e.basename = function(t, e) {
          var n = function(t) {
            "string" !== typeof t && (t += "");
            var e, n = 0,
              i = -1,
              r = !0;
            for (e = t.length - 1; e >= 0; --e)
              if (47 === t.charCodeAt(e)) {
                if (!r) {
                  n = e + 1;
                  break
                }
              } else - 1 === i && (r = !1, i = e + 1);
            return -1 === i ? "" : t.slice(n, i)
          }(t);
          return e && n.substr(-1 * e.length) === e && (n = n.substr(0, n.length - e.length)), n
        }, e.extname = function(t) {
          "string" !== typeof t && (t += "");
          for (var e = -1, n = 0, i = -1, r = !0, o = 0, a = t.length - 1; a >= 0; --a) {
            var s = t.charCodeAt(a);
            if (47 !== s) - 1 === i && (r = !1, i = a + 1), 46 === s ? -1 === e ? e = a : 1 !== o && (o = 1) : -1 !== e && (o = -1);
            else if (!r) {
              n = a + 1;
              break
            }
          }
          return -1 === e || -1 === i || 0 === o || 1 === o && e === i - 1 && e === n + 1 ? "" : t.slice(e, i)
        };
        var r = "b" === "ab".substr(-1) ? function(t, e, n) {
          return t.substr(e, n)
        } : function(t, e, n) {
          return e < 0 && (e = t.length + e), t.substr(e, n)
        }
      }).call(this, n("4362"))
    },
    e372: function(t, e, n) {
      e = t.exports = n("ad71"), e.Stream = e, e.Readable = e, e.Writable = n("dc14"), e.Duplex = n("b19a"), e.Transform = n("27bf"), e.PassThrough = n("780f")
    },
    e3db: function(t, e) {
      var n = {}.toString;
      t.exports = Array.isArray || function(t) {
        return "[object Array]" == n.call(t)
      }
    },
    faa1: function(t, e, n) {
      "use strict";
      var i, r = "object" === typeof Reflect ? Reflect : null,
        o = r && "function" === typeof r.apply ? r.apply : function(t, e, n) {
          return Function.prototype.apply.call(t, e, n)
        };
      i = r && "function" === typeof r.ownKeys ? r.ownKeys : Object.getOwnPropertySymbols ? function(t) {
        return Object.getOwnPropertyNames(t).concat(Object.getOwnPropertySymbols(t))
      } : function(t) {
        return Object.getOwnPropertyNames(t)
      };
      var a = Number.isNaN || function(t) {
        return t !== t
      };

      function s() {
        s.init.call(this)
      }
      t.exports = s, t.exports.once = function(t, e) {
        return new Promise((function(n, i) {
          function r(n) {
            t.removeListener(e, o), i(n)
          }

          function o() {
            "function" === typeof t.removeListener && t.removeListener("error", r), n([].slice.call(arguments))
          }
          y(t, e, o, {
            once: !0
          }), "error" !== e && function(t, e, n) {
            "function" === typeof t.on && y(t, "error", e, n)
          }(t, r, {
            once: !0
          })
        }))
      }, s.EventEmitter = s, s.prototype._events = void 0, s.prototype._eventsCount = 0, s.prototype._maxListeners = void 0;
      var u = 10;

      function c(t) {
        if ("function" !== typeof t) throw new TypeError('The "listener" argument must be of type Function. Received type ' + typeof t)
      }

      function l(t) {
        return void 0 === t._maxListeners ? s.defaultMaxListeners : t._maxListeners
      }

      function f(t, e, n, i) {
        var r, o, a;
        if (c(n), o = t._events, void 0 === o ? (o = t._events = Object.create(null), t._eventsCount = 0) : (void 0 !== o.newListener && (t.emit("newListener", e, n.listener ? n.listener : n), o = t._events), a = o[e]), void 0 === a) a = o[e] = n, ++t._eventsCount;
        else if ("function" === typeof a ? a = o[e] = i ? [n, a] : [a, n] : i ? a.unshift(n) : a.push(n), r = l(t), r > 0 && a.length > r && !a.warned) {
          a.warned = !0;
          var s = new Error("Possible EventEmitter memory leak detected. " + a.length + " " + String(e) + " listeners added. Use emitter.setMaxListeners() to increase limit");
          s.name = "MaxListenersExceededWarning", s.emitter = t, s.type = e, s.count = a.length,
            function(t) {
              console && console.warn && console.warn(t)
            }(s)
        }
        return t
      }

      function h() {
        if (!this.fired) return this.target.removeListener(this.type, this.wrapFn), this.fired = !0, 0 === arguments.length ? this.listener.call(this.target) : this.listener.apply(this.target, arguments)
      }

      function d(t, e, n) {
        var i = {
            fired: !1,
            wrapFn: void 0,
            target: t,
            type: e,
            listener: n
          },
          r = h.bind(i);
        return r.listener = n, i.wrapFn = r, r
      }

      function p(t, e, n) {
        var i = t._events;
        if (void 0 === i) return [];
        var r = i[e];
        return void 0 === r ? [] : "function" === typeof r ? n ? [r.listener || r] : [r] : n ? function(t) {
          for (var e = new Array(t.length), n = 0; n < e.length; ++n) e[n] = t[n].listener || t[n];
          return e
        }(r) : m(r, r.length)
      }

      function g(t) {
        var e = this._events;
        if (void 0 !== e) {
          var n = e[t];
          if ("function" === typeof n) return 1;
          if (void 0 !== n) return n.length
        }
        return 0
      }

      function m(t, e) {
        for (var n = new Array(e), i = 0; i < e; ++i) n[i] = t[i];
        return n
      }

      function y(t, e, n, i) {
        if ("function" === typeof t.on) i.once ? t.once(e, n) : t.on(e, n);
        else {
          if ("function" !== typeof t.addEventListener) throw new TypeError('The "emitter" argument must be of type EventEmitter. Received type ' + typeof t);
          t.addEventListener(e, (function r(o) {
            i.once && t.removeEventListener(e, r), n(o)
          }))
        }
      }
      Object.defineProperty(s, "defaultMaxListeners", {
        enumerable: !0,
        get: function() {
          return u
        },
        set: function(t) {
          if ("number" !== typeof t || t < 0 || a(t)) throw new RangeError('The value of "defaultMaxListeners" is out of range. It must be a non-negative number. Received ' + t + ".");
          u = t
        }
      }), s.init = function() {
        void 0 !== this._events && this._events !== Object.getPrototypeOf(this)._events || (this._events = Object.create(null), this._eventsCount = 0), this._maxListeners = this._maxListeners || void 0
      }, s.prototype.setMaxListeners = function(t) {
        if ("number" !== typeof t || t < 0 || a(t)) throw new RangeError('The value of "n" is out of range. It must be a non-negative number. Received ' + t + ".");
        return this._maxListeners = t, this
      }, s.prototype.getMaxListeners = function() {
        return l(this)
      }, s.prototype.emit = function(t) {
        for (var e = [], n = 1; n < arguments.length; n++) e.push(arguments[n]);
        var i = "error" === t,
          r = this._events;
        if (void 0 !== r) i = i && void 0 === r.error;
        else if (!i) return !1;
        if (i) {
          var a;
          if (e.length > 0 && (a = e[0]), a instanceof Error) throw a;
          var s = new Error("Unhandled error." + (a ? " (" + a.message + ")" : ""));
          throw s.context = a, s
        }
        var u = r[t];
        if (void 0 === u) return !1;
        if ("function" === typeof u) o(u, this, e);
        else {
          var c = u.length,
            l = m(u, c);
          for (n = 0; n < c; ++n) o(l[n], this, e)
        }
        return !0
      }, s.prototype.addListener = function(t, e) {
        return f(this, t, e, !1)
      }, s.prototype.on = s.prototype.addListener, s.prototype.prependListener = function(t, e) {
        return f(this, t, e, !0)
      }, s.prototype.once = function(t, e) {
        return c(e), this.on(t, d(this, t, e)), this
      }, s.prototype.prependOnceListener = function(t, e) {
        return c(e), this.prependListener(t, d(this, t, e)), this
      }, s.prototype.removeListener = function(t, e) {
        var n, i, r, o, a;
        if (c(e), i = this._events, void 0 === i) return this;
        if (n = i[t], void 0 === n) return this;
        if (n === e || n.listener === e) 0 === --this._eventsCount ? this._events = Object.create(null) : (delete i[t], i.removeListener && this.emit("removeListener", t, n.listener || e));
        else if ("function" !== typeof n) {
          for (r = -1, o = n.length - 1; o >= 0; o--)
            if (n[o] === e || n[o].listener === e) {
              a = n[o].listener, r = o;
              break
            } if (r < 0) return this;
          0 === r ? n.shift() : function(t, e) {
            for (; e + 1 < t.length; e++) t[e] = t[e + 1];
            t.pop()
          }(n, r), 1 === n.length && (i[t] = n[0]), void 0 !== i.removeListener && this.emit("removeListener", t, a || e)
        }
        return this
      }, s.prototype.off = s.prototype.removeListener, s.prototype.removeAllListeners = function(t) {
        var e, n, i;
        if (n = this._events, void 0 === n) return this;
        if (void 0 === n.removeListener) return 0 === arguments.length ? (this._events = Object.create(null), this._eventsCount = 0) : void 0 !== n[t] && (0 === --this._eventsCount ? this._events = Object.create(null) : delete n[t]), this;
        if (0 === arguments.length) {
          var r, o = Object.keys(n);
          for (i = 0; i < o.length; ++i) r = o[i], "removeListener" !== r && this.removeAllListeners(r);
          return this.removeAllListeners("removeListener"), this._events = Object.create(null), this._eventsCount = 0, this
        }
        if (e = n[t], "function" === typeof e) this.removeListener(t, e);
        else if (void 0 !== e)
          for (i = e.length - 1; i >= 0; i--) this.removeListener(t, e[i]);
        return this
      }, s.prototype.listeners = function(t) {
        return p(this, t, !0)
      }, s.prototype.rawListeners = function(t) {
        return p(this, t, !1)
      }, s.listenerCount = function(t, e) {
        return "function" === typeof t.listenerCount ? t.listenerCount(e) : g.call(t, e)
      }, s.prototype.listenerCount = g, s.prototype.eventNames = function() {
        return this._eventsCount > 0 ? i(this._events) : []
      }
    }
  }
]);