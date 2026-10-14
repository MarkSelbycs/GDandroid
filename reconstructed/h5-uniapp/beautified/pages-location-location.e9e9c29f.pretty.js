(window["webpackJsonp"] = window["webpackJsonp"] || []).push([
  ["pages-location-location"], {
    "06a2": function(n, t, e) {
      var i = e("7202");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [n.i, i, ""]
      ]), i.locals && (n.exports = i.locals);
      var o = e("4f06").default;
      o("1ce1b1d8", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    1698: function(n, t, e) {
      "use strict";
      e("7a82"), Object.defineProperty(t, "__esModule", {
        value: !0
      }), t.PluginApi = void 0, e("c975");
      var i = uni.requireNativePlugin("PortalMananger"),
        o = t.PluginApi = {
          coolMethod: function(n, t, e) {
            (void 0 == e || void 0 != e && "function" != typeof e) && (e = function() {});
            var o = {
              action: n,
              args: t
            };
            i.coolMethod(o, e)
          }
        };

      function a() {
        uni.addInterceptor("showModal", {
          invoke: function(n) {
            var t = null,
              e = {};
            for (var i in n) {
              var a = n[i];
              void 0 != a && ("function" == typeof a ? t = a : e[i] = a)
            }
            return o.coolMethod("showModal", [e], (function(n) {
              t && t(n)
            })), !1
          }
        }), uni.addInterceptor("showToast", {
          invoke: function(n) {
            return o.coolMethod("showToast", [n]), !1
          }
        }), uni.addInterceptor("showLoading", {
          invoke: function(n) {
            return o.coolMethod("showLoading", [n]), !1
          }
        }), uni.addInterceptor("hideLoading", {
          invoke: function(n) {
            return o.coolMethod("hideLoading", []), !1
          }
        })
      }
      uni.addInterceptor("request", {
        invoke: function(n) {
          return !0
        }
      }), getApp().globalData.phoneType ? "android" === getApp().globalData.phoneType.toLowerCase() ? a() : uni.addInterceptor("showToast", {
        invoke: function(n) {
          n.position = "bottom"
        }
      }) : uni.getSystemInfo({
        success: function(n) {
          "android" == n.osName ? a() : uni.addInterceptor("showToast", {
            invoke: function(n) {
              n.position = "bottom"
            }
          })
        }
      })
    },
    "20f7": function(n, t, e) {
      "use strict";
      e.r(t);
      var i = e("6ea3"),
        o = e.n(i);
      for (var a in i)["default"].indexOf(a) < 0 && function(n) {
        e.d(t, n, (function() {
          return i[n]
        }))
      }(a);
      t["default"] = o.a
    },
    "3dab": function(n, t, e) {
      "use strict";
      var i = e("ea81"),
        o = e.n(i);
      o.a
    },
    5875: function(n, t, e) {
      "use strict";
      e.r(t);
      var i = e("abc9"),
        o = e("cbfd");
      for (var a in o)["default"].indexOf(a) < 0 && function(n) {
        e.d(t, n, (function() {
          return o[n]
        }))
      }(a);
      e("8484");
      var c = e("f0c5"),
        d = Object(c["a"])(o["default"], i["b"], i["c"], !1, null, "72ce3b06", null, !1, i["a"], void 0);
      t["default"] = d.exports
    },
    "651e": function(n, t, e) {
      "use strict";
      e.d(t, "b", (function() {
        return i
      })), e.d(t, "c", (function() {
        return o
      })), e.d(t, "a", (function() {}));
      var i = function() {
          var n = this,
            t = n.$createElement,
            e = n._self._c || t;
          return e("v-uni-view", {
            staticClass: "wrapper"
          }, [n._t("loadSuccess"), "loading" == n.state ? e("v-uni-view", {
            staticClass: "loading_info"
          }, [n._v("正在加载中...")]) : "loadFail" == n.state ? e("v-uni-view", {
            staticClass: "loadFail_info"
          }, [e("v-uni-view", {
            staticClass: "info"
          }, [e("v-uni-view", [n._v(n._s(n.loadFaliMessage))]), e("v-uni-button", {
            on: {
              click: function(t) {
                arguments[0] = t = n.$handleEvent(t), n.retry.apply(void 0, arguments)
              }
            }
          }, [n._v("请重试")])], 1)], 1) : n._e()], 2)
        },
        o = []
    },
    "686f": function(n, t, e) {
      "use strict";
      e("7a82"), Object.defineProperty(t, "__esModule", {
        value: !0
      }), t.default = void 0;
      var i = e("1698");
      t.default = {
        data: function() {
          return {
            pageState: "loadSuccess",
            isCheckedSSID: !1,
            isCheckedExperience: !1,
            hasLocation: !1
          }
        },
        onLoad: function() {
          var n = this;
          plus.globalEvent.addEventListener("HandleQueryPermissionResult", (function(t) {
            var e = t.phoneType;
            "android" == e ? t.location ? n.hasLocation = !0 : n.hasLocation = !1 : t.locationService ? n.hasLocation = !0 : n.hasLocation = !1
          })), i.PluginApi.coolMethod("onQueryPermission", []), i.PluginApi.coolMethod("getMulCacheData", ["isOpenExperience", "isOpenSSID"], (function(t) {
            n.isCheckedSSID = "1" == t.isOpenSSID, n.isCheckedExperience = "1" == t.isOpenExperience
          }))
        },
        created: function() {
          document.addEventListener("backbutton", this.handleBackButtonEvent, !1)
        },
        destroyed: function() {
          document.removeEventListener("backbutton", this.handleBackButtonEvent, !1)
        },
        methods: {
          handleBackButtonEvent: function() {
            var n = getCurrentPages(),
              t = n[n.length - 1].route;
            t == this.$mp.page.route && uni.navigateBack()
          },
          retry: function() {},
          gotoSettingView: function() {
            var n = getApp().globalData.phoneType;
            "android" != n ? i.PluginApi.coolMethod("onIntentPermissionPage", []) : i.PluginApi.coolMethod("onAskPermission", ["location"])
          },
          onSSIDSwitchChange: function(n) {
            this.isCheckedSSID = n.value;
            var t = this.isCheckedSSID ? "1" : "0";
            i.PluginApi.coolMethod("setCacheData", ["isOpenSSID", t]), i.PluginApi.coolMethod("updateNetworkInfo", [t])
          },
          onExperienceSwitchChange: function(n) {
            this.isCheckedExperience = n.value, i.PluginApi.coolMethod("setCacheData", ["isOpenExperience", this.isCheckedExperience ? "1" : "0"])
          }
        }
      }
    },
    "6ea3": function(n, t, e) {
      "use strict";
      e("7a82"), Object.defineProperty(t, "__esModule", {
        value: !0
      }), t.default = void 0;
      t.default = {
        name: "template-page",
        props: {
          title: {
            type: String,
            default: ""
          },
          color: {
            type: String,
            default: ""
          },
          state: {
            type: String,
            default: "loading"
          },
          retry: {
            type: Function,
            default: function() {}
          },
          loadFaliMessage: {
            type: String,
            default: ""
          }
        },
        data: function() {
          return {}
        },
        onLoad: function() {
          console.log("刷新了")
        },
        methods: {}
      }
    },
    7202: function(n, t, e) {
      var i = e("4bad");
      t = i(!1), t.push([n.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/.container[data-v-72ce3b06]{height:100vh;width:100vw;background-color:#f1f1f1;padding-top:%?20?%;box-sizing:border-box}.icon-container[data-v-72ce3b06]{width:100%;display:flex;flex-direction:column}.icon-container .text[data-v-72ce3b06]{font-size:%?36?%;text-align:center;font-weight:700}.sub-text[data-v-72ce3b06]{padding:%?20?%;font-size:%?36?%}.link-text[data-v-72ce3b06]{display:inline;color:#007aff;font-weight:700;text-decoration:underline}[data-v-72ce3b06].uni-list{margin:%?20?%}[data-v-72ce3b06] .uni-list-item{border-bottom:%?3?% solid #f1f1f1}[data-v-72ce3b06] .uni-list-item__content-title{font-size:%?34?%}[data-v-72ce3b06] .uni-list-item__content-note{padding-top:%?5?%;font-size:%?28?%}[data-v-72ce3b06] .uni-switch-input-checked{background-color:#42a5f5!important;border-color:#42a5f5!important}[data-v-72ce3b06] .uni-stat__select{width:30%;background-color:#fff;margin-left:%?20?%}[data-v-72ce3b06] .uni-list-item--disabled,[data-v-72ce3b06] uni-switch[disabled] .uni-switch-input{opacity:1}[data-v-72ce3b06] .uni-list-item{min-height:3.5rem!important}', ""]), n.exports = t
    },
    "7c99": function(n, t, e) {
      var i = e("4bad");
      t = i(!1), t.push([n.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/[data-v-4aa361d3] .uni-nav-bar-text{font-size:%?36?%}.wrapper[data-v-4aa361d3]{min-height:100vh;position:relative}.loading_info[data-v-4aa361d3],\n.loadFail_info[data-v-4aa361d3]{position:absolute;top:0;font-size:%?36?%;width:100vw;height:100vh;background-color:#fff;display:flex;justify-content:center;align-items:center;color:#000;z-index:99}.loading_info .info[data-v-4aa361d3],\n.loadFail_info .info[data-v-4aa361d3]{text-align:center}.loading_info .info uni-button[data-v-4aa361d3],\n.loadFail_info .info uni-button[data-v-4aa361d3]{margin-top:%?10?%;width:%?200?%}.ddddd[data-v-4aa361d3]{background-color:#000}', ""]), n.exports = t
    },
    8484: function(n, t, e) {
      "use strict";
      var i = e("06a2"),
        o = e.n(i);
      o.a
    },
    abc9: function(n, t, e) {
      "use strict";
      e.d(t, "b", (function() {
        return o
      })), e.d(t, "c", (function() {
        return a
      })), e.d(t, "a", (function() {
        return i
      }));
      var i = {
          templatePage: e("d29d").default,
          uniIcons: e("1a49").default,
          uniList: e("1e86").default,
          uniListItem: e("fe74").default
        },
        o = function() {
          var n = this,
            t = n.$createElement,
            e = n._self._c || t;
          return e("template-page", {
            staticClass: "container",
            attrs: {
              state: n.pageState,
              retry: n.retry
            },
            scopedSlots: n._u([{
              key: "loadSuccess",
              fn: function() {
                return [e("v-uni-view", {
                  staticClass: "icon-container"
                }, [e("uni-icons", {
                  attrs: {
                    type: "location",
                    size: "60"
                  }
                }), e("v-uni-view", {
                  staticClass: "text"
                }, [n._v("位置信息")])], 1), e("v-uni-view", {
                  staticClass: "sub-text"
                }, [n._v("获取当前位置信息，提供与位置相关的功能。你可以设置是否允许以下功能使用该权限，也可前往"), e("v-uni-view", {
                  staticClass: "link-text",
                  on: {
                    click: function(t) {
                      arguments[0] = t = n.$handleEvent(t), n.gotoSettingView.apply(void 0, arguments)
                    }
                  }
                }, [n._v("系统设置")]), n._v("更改对广东校园的授权。")], 1), e("uni-list", [e("uni-list-item", {
                  attrs: {
                    title: "位置",
                    clickable: !0,
                    disabled: !0,
                    showSwitch: !0,
                    switchChecked: n.hasLocation,
                    note: "前往系统设置更改位置权限"
                  },
                  on: {
                    click: function(t) {
                      arguments[0] = t = n.$handleEvent(t), n.gotoSettingView.apply(void 0, arguments)
                    }
                  }
                })], 1), e("v-uni-view", {
                  staticClass: "sub-text"
                }, [n._v("以下功能需在已授权“位置信息”权限的前提下开启才能生效：")]), e("uni-list", [e("uni-list-item", {
                  attrs: {
                    title: "SSID显示",
                    showSwitch: !0,
                    switchChecked: n.isCheckedSSID,
                    note: "准确识别当前连接的WIFI名称信息"
                  },
                  on: {
                    switchChange: function(t) {
                      arguments[0] = t = n.$handleEvent(t), n.onSSIDSwitchChange.apply(void 0, arguments)
                    }
                  }
                })], 1)]
              },
              proxy: !0
            }])
          })
        },
        a = []
    },
    cbfd: function(n, t, e) {
      "use strict";
      e.r(t);
      var i = e("686f"),
        o = e.n(i);
      for (var a in i)["default"].indexOf(a) < 0 && function(n) {
        e.d(t, n, (function() {
          return i[n]
        }))
      }(a);
      t["default"] = o.a
    },
    d29d: function(n, t, e) {
      "use strict";
      e.r(t);
      var i = e("651e"),
        o = e("20f7");
      for (var a in o)["default"].indexOf(a) < 0 && function(n) {
        e.d(t, n, (function() {
          return o[n]
        }))
      }(a);
      e("3dab");
      var c = e("f0c5"),
        d = Object(c["a"])(o["default"], i["b"], i["c"], !1, null, "4aa361d3", null, !1, i["a"], void 0);
      t["default"] = d.exports
    },
    ea81: function(n, t, e) {
      var i = e("7c99");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [n.i, i, ""]
      ]), i.locals && (n.exports = i.locals);
      var o = e("4f06").default;
      o("4326e34c", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    }
  }
]);