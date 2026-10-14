(window["webpackJsonp"] = window["webpackJsonp"] || []).push([
  ["pages-noticeList-noticeList"], {
    "036c": function(n, t, e) {
      "use strict";
      var i = e("84d1"),
        o = e.n(i);
      o.a
    },
    "353b": function(n, t, e) {
      "use strict";
      e.r(t);
      var i = e("f4ed"),
        o = e.n(i);
      for (var a in i)["default"].indexOf(a) < 0 && function(n) {
        e.d(t, n, (function() {
          return i[n]
        }))
      }(a);
      t["default"] = o.a
    },
    4612: function(n, t, e) {
      "use strict";
      e.r(t);
      var i = e("70b0"),
        o = e("353b");
      for (var a in o)["default"].indexOf(a) < 0 && function(n) {
        e.d(t, n, (function() {
          return o[n]
        }))
      }(a);
      e("036c");
      var c = e("f0c5"),
        u = Object(c["a"])(o["default"], i["b"], i["c"], !1, null, "d9e5f67c", null, !1, i["a"], void 0);
      t["default"] = u.exports
    },
    "70b0": function(n, t, e) {
      "use strict";
      e.d(t, "b", (function() {
        return o
      })), e.d(t, "c", (function() {
        return a
      })), e.d(t, "a", (function() {
        return i
      }));
      var i = {
          uniList: e("1e86").default,
          uniListItem: e("fe74").default
        },
        o = function() {
          var n = this,
            t = n.$createElement,
            e = n._self._c || t;
          return e("uni-list", n._l(n.noticeList, (function(t, i) {
            return e("uni-list-item", {
              attrs: {
                clickable: !0,
                title: t.title,
                note: t.content
              },
              on: {
                click: function(t) {
                  arguments[0] = t = n.$handleEvent(t), n.noticeDetail(i)
                }
              }
            })
          })), 1)
        },
        a = []
    },
    "84d1": function(n, t, e) {
      var i = e("a5e8");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [n.i, i, ""]
      ]), i.locals && (n.exports = i.locals);
      var o = e("4f06").default;
      o("0c4961c6", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    a5e8: function(n, t, e) {
      var i = e("4bad");
      t = i(!1), t.push([n.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/[data-v-d9e5f67c] .uni-list-item__content-note{overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:1;-webkit-box-orient:vertical}', ""]), n.exports = t
    },
    f4ed: function(n, t, e) {
      "use strict";
      e("7a82");
      var i = e("4ea4").default;
      Object.defineProperty(t, "__esModule", {
        value: !0
      }), t.default = void 0, e("99af");
      var o = i(e("5530")),
        a = e("c685"),
        c = e("26cb");
      e("c51a"), t.default = {
        data: function() {
          return {}
        },
        onLoad: function() {
          console.log(this.noticeList)
        },
        computed: (0, o.default)({}, (0, c.mapState)(["noticeList"])),
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
          noticeDetail: function(n) {
            var t = this.noticeList[n].title;
            if ("GD" == getApp().globalData.province) {
              var e = this.noticeList[n].url;
              a.$webView.open(t, e, !0)
            } else {
              var i = this.noticeList[n].content;
              uni.navigateTo({
                url: "/pages/noticeDetail/noticeDetail?title=".concat(t, "&content=").concat(encodeURIComponent(i))
              })
            }
          }
        }
      }
    }
  }
]);