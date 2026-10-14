(window["webpackJsonp"] = window["webpackJsonp"] || []).push([
  ["pages-personalInfoPreview-personalInfoDetail"], {
    "079f": function(t, n, e) {
      "use strict";
      e.d(n, "b", (function() {
        return i
      })), e.d(n, "c", (function() {
        return o
      })), e.d(n, "a", (function() {
        return a
      }));
      var a = {
          uniList: e("1e86").default,
          uniListItem: e("fe74").default
        },
        i = function() {
          var t = this.$createElement,
            n = this._self._c || t;
          return n("uni-list", {
            staticClass: "list"
          }, this._l(this.infoList, (function(t, e) {
            return n("uni-list-item", {
              staticClass: "list-item",
              attrs: {
                title: t.text
              }
            })
          })), 1)
        },
        o = []
    },
    "0e45": function(t, n, e) {
      var a = e("4bad");
      n = a(!1), n.push([t.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/[data-v-a6fa1618] .uni-list-item{border-bottom:%?3?% solid #f1f1f1}[data-v-a6fa1618] .uni-list--border:after{background-color:initial}[data-v-a6fa1618] .uni-list-item__extra-text{font-size:%?25?%}[data-v-a6fa1618] .uni-list-item__content-title{font-size:%?32?%}[data-v-a6fa1618] .uniui-arrowright{font-size:%?36?%!important}[data-v-a6fa1618] .uni-list-item{min-height:3.5rem!important}[data-v-a6fa1618] .uni-list--base{width:1.5rem!important;height:1.5rem!important}', ""]), t.exports = n
    },
    "107a": function(t, n, e) {
      "use strict";
      var a = e("8831"),
        i = e.n(a);
      i.a
    },
    "17b6": function(t, n, e) {
      "use strict";
      e.r(n);
      var a = e("ae0c"),
        i = e.n(a);
      for (var o in a)["default"].indexOf(o) < 0 && function(t) {
        e.d(n, t, (function() {
          return a[t]
        }))
      }(o);
      n["default"] = i.a
    },
    "7d3c": function(t, n, e) {
      "use strict";
      e.r(n);
      var a = e("079f"),
        i = e("17b6");
      for (var o in i)["default"].indexOf(o) < 0 && function(t) {
        e.d(n, t, (function() {
          return i[t]
        }))
      }(o);
      e("107a");
      var r = e("f0c5"),
        s = Object(r["a"])(i["default"], a["b"], a["c"], !1, null, "a6fa1618", null, !1, a["a"], void 0);
      n["default"] = s.exports
    },
    8831: function(t, n, e) {
      var a = e("0e45");
      a.__esModule && (a = a.default), "string" === typeof a && (a = [
        [t.i, a, ""]
      ]), a.locals && (t.exports = a.locals);
      var i = e("4f06").default;
      i("9862018a", a, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    ae0c: function(t, n, e) {
      "use strict";
      e("7a82"), Object.defineProperty(n, "__esModule", {
        value: !0
      }), n.default = void 0, e("b64b");
      n.default = {
        data: function() {
          return {
            nativeTitle: "列表详情",
            infoList: []
          }
        },
        onLoad: function(t) {
          t.title && uni.setNavigationBarTitle({
            title: t.title
          }), t.param && this.onInitPageData(t.param)
        },
        created: function() {
          document.addEventListener("backbutton", this.handleBackButtonEvent, !1)
        },
        destroyed: function() {
          document.removeEventListener("backbutton", this.handleBackButtonEvent, !1)
        },
        methods: {
          handleBackButtonEvent: function() {
            var t = getCurrentPages(),
              n = t[t.length - 1].route;
            n == this.$mp.page.route && uni.navigateBack()
          },
          onInitPageData: function(t) {
            var n = JSON.parse(t);
            this.infoList = n
          }
        }
      }
    }
  }
]);