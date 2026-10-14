(window["webpackJsonp"] = window["webpackJsonp"] || []).push([
  ["pages-networkCheck-networkCheck"], {
    "0099": function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.default = void 0, n("d401"), n("c975"), n("14d9"), n("a434"), n("a9e3"), n("d3b7"), n("ac1f"), n("25f0"), n("159b");
      e.default = {
        name: "uniCollapseItem",
        props: {
          title: {
            type: String,
            default: ""
          },
          name: {
            type: [Number, String],
            default: ""
          },
          disabled: {
            type: Boolean,
            default: !1
          },
          showAnimation: {
            type: Boolean,
            default: !0
          },
          open: {
            type: Boolean,
            default: !1
          },
          thumb: {
            type: String,
            default: ""
          },
          titleBorder: {
            type: String,
            default: "auto"
          },
          border: {
            type: Boolean,
            default: !0
          },
          showArrow: {
            type: Boolean,
            default: !0
          }
        },
        data: function() {
          var t = "Uni_".concat(Math.ceil(1e6 * Math.random()).toString(36));
          return {
            isOpen: !1,
            isheight: null,
            height: 0,
            elId: t,
            nameSync: 0
          }
        },
        watch: {
          open: function(t) {
            this.isOpen = t, this.onClick(t, "init")
          }
        },
        updated: function(t) {
          var e = this;
          this.$nextTick((function() {
            e.init(!0)
          }))
        },
        created: function() {
          this.collapse = this.getCollapse(), this.oldHeight = 0, this.onClick(this.open, "init")
        },
        destroyed: function() {
          this.__isUnmounted || this.uninstall()
        },
        mounted: function() {
          this.collapse && ("" !== this.name ? this.nameSync = this.name : this.nameSync = this.collapse.childrens.length + "", -1 === this.collapse.names.indexOf(this.nameSync) ? this.collapse.names.push(this.nameSync) : console.warn("name 值 ".concat(this.nameSync, " 重复")), -1 === this.collapse.childrens.indexOf(this) && this.collapse.childrens.push(this), this.init())
        },
        methods: {
          init: function(t) {
            this.getCollapseHeight(t)
          },
          uninstall: function() {
            var t = this;
            this.collapse && (this.collapse.childrens.forEach((function(e, n) {
              e === t && t.collapse.childrens.splice(n, 1)
            })), this.collapse.names.forEach((function(e, n) {
              e === t.nameSync && t.collapse.names.splice(n, 1)
            })))
          },
          onClick: function(t, e) {
            this.disabled || (this.isOpen = t, this.isOpen && this.collapse && this.collapse.setAccordion(this), "init" !== e && this.collapse.onChange(t, this))
          },
          getCollapseHeight: function(t) {
            var e = this,
              n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : 0,
              i = uni.createSelectorQuery().in(this);
            i.select("#".concat(this.elId)).fields({
              size: !0
            }, (function(i) {
              if (!(n >= 10)) {
                if (!i) return n++, void e.getCollapseHeight(!1, n);
                e.height = i.height, e.isheight = !0, t || e.onClick(e.isOpen, "init")
              }
            })).exec()
          },
          getNvueHwight: function(t) {
            var e = this;
            dom.getComponentRect(this.$refs["collapse--hook"], (function(n) {
              if (n && n.result && n.size) {
                if (e.height = n.size.height, e.isheight = !0, t) return;
                e.onClick(e.open, "init")
              }
            }))
          },
          getCollapse: function() {
            var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "uniCollapse",
              e = this.$parent,
              n = e.$options.name;
            while (n !== t) {
              if (e = e.$parent, !e) return !1;
              n = e.$options.name
            }
            return e
          }
        }
      }
    },
    "06ee": function(t, e, n) {
      t.exports = n.p + "static/img/img_networktest_loading.b94cceaf.gif"
    },
    "090c": function(t, e) {
      t.exports = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAmCAYAAACoPemuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjU4RDcxOEM4Q0M1ODExRThBNzc0RjQ0REY2NjU5OTFEIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjU4RDcxOEM5Q0M1ODExRThBNzc0RjQ0REY2NjU5OTFEIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NThENzE4QzZDQzU4MTFFOEE3NzRGNDRERjY2NTk5MUQiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NThENzE4QzdDQzU4MTFFOEE3NzRGNDRERjY2NTk5MUQiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7MWxepAAADzklEQVR42syYSUwTURiA/0LLDiHsAmWzQLHGCJGgosgBBWI4qIkmmngR0Ch40ptGFg2RkwscygHjBRMTTx4Mi+xCiKAxytKwKcQLIEYoZS31f9M/ZSgwzJQW+JOPMDDz3jcz7/3z/iczmUywH0POflz6KpN6XTSSiZxCEpBIxJv+N4v8QvqRdqQWGZXS+LtEk1lMZDgjl5EC5ASy1d34E0nINYS9kk6kAnmLGMV05iRSKgP5gdQgJwWkNgsZXVNDbWTYQ8wN0SL1iNoOQ0dNbWmpbZvEApFWJN8BYzuf2g6UKsYuaEOSHTjxkqmPQLFiHsh7JH4XskI89eUhRuw5krKLKSuF+hQUYzMmdw/yaa71bHWy+v3FHib7l5QrN4hdoSy+V6GmBL5B7M4++EQWWItFU3Z2WAS4REBJbBMEuUQLncY+dTF8sSyJnxlJEeQSBaWxLaDxSie5KKHPVyZfLNVRUsGuMSjTbJHxVYTAAddYoUtSLcseDI0jpEJcD0Kxqglfo5I7Xlqdh/LRi/Bttl7oskN8MaW9pUJd46A4thH8FGHc8eKqAZ6OXECpuu0ujeS/Sm8xnXk6+4qSCnNTo1TTOqmykRwxUiy8pKzH4Kx/HjxL6AW1p/BwDHdLgBIVkwolqTl4Mnwevs82SnriTrzl8JYR53kccpUVXGdsVmUF3N70PKWbhntSbICzWFjVQ+lwNvTqm6U46fli44KFgcwFDMZ/5vW1TAF5ykoojHwNCqe1tV6k+xFO2lcezB3PG2fgMUr169ukDs8xvlif0Jl9+la4rzsGQ4bPlr+l+12HsrgOLg1Eux+FItVH8JGbl1bsJko5qXZb5k0vX2zbFqaWxuDBYBo0/qleK5XcE6E8vhseqRpQKsAiVTKcCbq5Dlsn9Ce+WC1VM4KxvLoAlWM3QDt+C5ZNi+bpLPfn4AaH8S8UDWXA4FyXrVImcrGIjSCib7FuSgsPB8/A9PLvtRFrnIZilBo2dO8k/XWSy7p0USmlBfZU7g0k4YxrgZmVKSgazIARw5ed5uUKy0eTbRFQJe5MdZ+kMs1ZJgd/RThMLP3cqdQAcpgVxKwS5z8xViEXSm3NaFqxhxSLu/wq3TrzNyCv9mCBWE2FsGCVxFaRXbso1bXZm9pMzIDkILpdkNJRXwaxlfgkkob0OFCqh/qYlLp3MYGcRqocIFVFe2sTtu72zCM3kXN2erU6aou1uWCP/bF6Wn5fpewsdX+0kzbxNNazb8sVjZSUhbwhWA2WTa+DJeQIxIfOm6GlywAtDj6AxK1OS+bfj/FfgAEAHqkKsiZ7AREAAAAASUVORK5CYII="
    },
    "0c5a": function(t, e) {
      t.exports = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAmCAYAAACoPemuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjY1NDEwMEU4Q0M1NzExRTg4MzVBOTU1QTVFMUJDQkU1IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjY1NDEwMEU5Q0M1NzExRTg4MzVBOTU1QTVFMUJDQkU1Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NjU0MTAwRTZDQzU3MTFFODgzNUE5NTVBNUUxQkNCRTUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NjU0MTAwRTdDQzU3MTFFODgzNUE5NTVBNUUxQkNCRTUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5mXCdpAAAAn0lEQVR42mL8//8/w2AEjKMOG3XYqMNGHTbqsFGHjTps1GG0dZjH3M8D5pgdybxwNhMONWxAPBGI3wLxOyibjYpq3xFSy4LDgC4gzkPig9jfgbiCXmpxRSXI90JoakE+FMZiGdXUEhOVAw5wOWwxFrE59FSLK42VgaIZiGORDKylp9pBW1yMlvyjDht12KjDRh026rBRh406bIQ4DCDAAAwcjQE7IdpsAAAAAElFTkSuQmCC"
    },
    "1d79": function(t, e, n) {
      var i = n("474a");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [t.i, i, ""]
      ]), i.locals && (t.exports = i.locals);
      var a = n("4f06").default;
      a("6061994a", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    "20f7": function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("6ea3"),
        a = n.n(i);
      for (var o in i)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return i[t]
        }))
      }(o);
      e["default"] = a.a
    },
    "23f9": function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("ca92"),
        a = n("9edc");
      for (var o in a)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return a[t]
        }))
      }(o);
      n("66c9");
      var c = n("f0c5"),
        l = Object(c["a"])(a["default"], i["b"], i["c"], !1, null, "1de8c812", null, !1, i["a"], void 0);
      e["default"] = l.exports
    },
    "2e61": function(t, e, n) {
      t.exports = n.p + "static/img/img_networktest_wrong.3b9ad713.png"
    },
    "35d1": function(t, e, n) {
      var i = n("640e");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [t.i, i, ""]
      ]), i.locals && (t.exports = i.locals);
      var a = n("4f06").default;
      a("222d2e8d", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    "3dab": function(t, e, n) {
      "use strict";
      var i = n("ea81"),
        a = n.n(i);
      a.a
    },
    "474a": function(t, e, n) {
      var i = n("4bad"),
        a = n("ffbf"),
        o = n("94a6"),
        c = n("b0ec");
      e = i(!1);
      var l = a(o),
        s = a(c);
      e.push([t.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/[data-v-0cbaecf0] .uni-collapse-item{background-color:#fff}[data-v-0cbaecf0] .uni-collapse{margin:%?20?% 0}.wrapper[data-v-0cbaecf0]{height:100vh}.container[data-v-0cbaecf0]{display:flex;flex-direction:column;height:100vh;overflow:hidden}.container .check_container[data-v-0cbaecf0]{height:30%;position:relative}.container .check_container .img_wrapper[data-v-0cbaecf0]{position:absolute;left:0;top:0;width:100%;height:100%}.container .check_container uni-image[data-v-0cbaecf0]{width:100%;height:100%;object-fit:cover}.container .check_container span[data-v-0cbaecf0]{display:block;width:100%;text-align:center;position:absolute;bottom:%?50?%;color:#fff;font-size:%?32?%}.container .list_container[data-v-0cbaecf0]{position:relative;height:58%;width:100%;overflow-y:auto;background-color:#f1f1f1;-webkit-overflow-scrolling:touch}.container .list_container[data-v-0cbaecf0]:-webkit-scrollbar{display:none}.container .list_container .title[data-v-0cbaecf0]{border-bottom:%?1?% solid #f1f1f1}.container .list_container .title .top[data-v-0cbaecf0]{display:flex;height:%?80?%;justify-content:space-between;align-items:center;border-bottom:%?1?% solid #f1f1f1;padding:0 %?30?%}.container .list_container .title .top[data-v-0cbaecf0]:active{background-color:#f1f1f1}.container .list_container .title .top .top_left[data-v-0cbaecf0]{display:flex;align-items:center;font-size:%?32?%}.container .list_container .title .top .top_left i[data-v-0cbaecf0]{display:inline-block;width:%?4?%;height:%?4?%;background-color:#000;border-radius:50%;margin-right:%?10?%}.container .list_container .title .top .top_right[data-v-0cbaecf0]{width:%?45?%;height:%?45?%}.container .list_container .title .bottom[data-v-0cbaecf0]{color:#c1c1c1;font-size:%?28?%;height:%?50?%;line-height:%?50?%;padding-left:%?40?%;box-sizing:border-box}.container .list_container .collapse_container[data-v-0cbaecf0]{padding:%?15?% %?30?%;font-size:%?26?%}.container .list_container .collapse_container .collapse_title[data-v-0cbaecf0]{color:red;font-size:%?32?%}.container .btn_container[data-v-0cbaecf0]{width:100%;height:12%;bottom:0;border-top:%?1?% solid #f1f1f1;background-color:#fff;display:flex;justify-content:center;align-items:center;padding-top:%?20?%;box-sizing:initial}.container .btn_container .check_btn[data-v-0cbaecf0]{width:80%;display:block;background:url(' + l + ") no-repeat;background-size:100% 100%;background-position:100% 70%;color:#fff;height:%?150?%;line-height:%?110?%;text-align:center;font-size:%?36?%;position:relative}.container .btn_container .check_btn[data-v-0cbaecf0]:active{top:%?4?%;background-image:url(" + s + ")}", ""]), t.exports = e
    },
    "5a7d": function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("7078"),
        a = n("b874");
      for (var o in a)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return a[t]
        }))
      }(o);
      n("87f7");
      var c = n("f0c5"),
        l = Object(c["a"])(a["default"], i["b"], i["c"], !1, null, "335e5506", null, !1, i["a"], void 0);
      e["default"] = l.exports
    },
    "5c10": function(t, e, n) {
      "use strict";
      n.d(e, "b", (function() {
        return a
      })), n.d(e, "c", (function() {
        return o
      })), n.d(e, "a", (function() {
        return i
      }));
      var i = {
          templatePage: n("d29d").default,
          uniCollapse: n("23f9").default,
          uniCollapseItem: n("5a7d").default
        },
        a = function() {
          var t = this,
            e = t.$createElement,
            i = t._self._c || e;
          return i("v-uni-view", {
            staticClass: "container"
          }, [i("template-page", {
            attrs: {
              state: t.pageState,
              retry: t.retry
            },
            scopedSlots: t._u([{
              key: "loadSuccess",
              fn: function() {
                return [i("v-uni-view", {
                  staticClass: "check_container"
                }, ["wrongCheck" == t.checkState ? i("v-uni-image", {
                  attrs: {
                    src: n("2e61")
                  }
                }) : "loadCheck" == t.checkState ? i("v-uni-image", {
                  attrs: {
                    src: n("ab717")
                  }
                }) : i("v-uni-image", {
                  attrs: {
                    src: n("7222")
                  }
                }), i("span", [t._v(t._s(t.message))])], 1), i("v-uni-view", {
                  staticClass: "list_container"
                }, t._l(t.checkArr, (function(e, a) {
                  return i("uni-collapse", {
                    staticClass: "list_collapse",
                    attrs: {
                      id: "item" + a
                    }
                  }, [i("uni-collapse-item", {
                    attrs: {
                      disabled: !e.collapseState,
                      open: e.collapseState,
                      "show-arrow": !1,
                      "title-border": "show",
                      "show-animation": !0
                    },
                    scopedSlots: t._u([{
                      key: "title",
                      fn: function() {
                        return [i("v-uni-view", {
                          staticClass: "title"
                        }, [i("v-uni-view", {
                          staticClass: "top"
                        }, [i("v-uni-view", {
                          staticClass: "top_left"
                        }, [i("i"), t._v(t._s(e.title))]), 1 == e.state ? i("v-uni-image", {
                          staticClass: "top_right",
                          attrs: {
                            src: n("0c5a"),
                            mode: ""
                          }
                        }) : 2 == e.state ? i("v-uni-image", {
                          staticClass: "top_right",
                          attrs: {
                            src: n("06ee"),
                            mode: ""
                          }
                        }) : 0 == e.state ? i("v-uni-image", {
                          staticClass: "top_right",
                          attrs: {
                            src: n("090c"),
                            mode: ""
                          }
                        }) : i("v-uni-image", {
                          staticClass: "top_right",
                          attrs: {
                            src: n("b000"),
                            mode: ""
                          }
                        })], 1), i("v-uni-view", {
                          staticClass: "bottom"
                        }, [t._v(t._s(e.littleTitle))])], 1)]
                      },
                      proxy: !0
                    }], null, !0)
                  }, [i("v-uni-view", {
                    staticClass: "collapse_container"
                  }, [i("v-uni-view", {
                    staticClass: "collapse_title"
                  }, [t._v(t._s(e.collapseTitle))]), i("p", [t._v("请按照以下方式处理")]), t._l(e.handleArr, (function(e) {
                    return i("p", [t._v(t._s(e))])
                  }))], 2)], 1)], 1)
                })), 1), i("v-uni-view", {
                  staticClass: "btn_container"
                }, [i("span", {
                  staticClass: "check_btn",
                  on: {
                    click: function(e) {
                      arguments[0] = e = t.$handleEvent(e), t.btnCheck.apply(void 0, arguments)
                    }
                  }
                }, [t._v(t._s(t.btnText))])])]
              },
              proxy: !0
            }])
          })], 1)
        },
        o = []
    },
    "640e": function(t, e, n) {
      var i = n("4bad");
      e = i(!1), e.push([t.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/.uni-collapse[data-v-1de8c812]{width:100%;display:flex;flex-direction:column;background-color:#fff}', ""]), t.exports = e
    },
    "651e": function(t, e, n) {
      "use strict";
      n.d(e, "b", (function() {
        return i
      })), n.d(e, "c", (function() {
        return a
      })), n.d(e, "a", (function() {}));
      var i = function() {
          var t = this,
            e = t.$createElement,
            n = t._self._c || e;
          return n("v-uni-view", {
            staticClass: "wrapper"
          }, [t._t("loadSuccess"), "loading" == t.state ? n("v-uni-view", {
            staticClass: "loading_info"
          }, [t._v("正在加载中...")]) : "loadFail" == t.state ? n("v-uni-view", {
            staticClass: "loadFail_info"
          }, [n("v-uni-view", {
            staticClass: "info"
          }, [n("v-uni-view", [t._v(t._s(t.loadFaliMessage))]), n("v-uni-button", {
            on: {
              click: function(e) {
                arguments[0] = e = t.$handleEvent(e), t.retry.apply(void 0, arguments)
              }
            }
          }, [t._v("请重试")])], 1)], 1) : t._e()], 2)
        },
        a = []
    },
    "66c9": function(t, e, n) {
      "use strict";
      var i = n("35d1"),
        a = n.n(i);
      a.a
    },
    "6ea3": function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.default = void 0;
      e.default = {
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
    7078: function(t, e, n) {
      "use strict";
      n.d(e, "b", (function() {
        return a
      })), n.d(e, "c", (function() {
        return o
      })), n.d(e, "a", (function() {
        return i
      }));
      var i = {
          uniIcons: n("1a49").default
        },
        a = function() {
          var t = this,
            e = t.$createElement,
            n = t._self._c || e;
          return n("v-uni-view", {
            staticClass: "uni-collapse-item"
          }, [n("v-uni-view", {
            staticClass: "uni-collapse-item__title",
            class: {
              "is-open": t.isOpen && "auto" === t.titleBorder,
              "uni-collapse-item-border": "none" !== t.titleBorder
            },
            on: {
              click: function(e) {
                arguments[0] = e = t.$handleEvent(e), t.onClick(!t.isOpen)
              }
            }
          }, [n("v-uni-view", {
            staticClass: "uni-collapse-item__title-wrap"
          }, [t._t("title", [n("v-uni-view", {
            staticClass: "uni-collapse-item__title-box",
            class: {
              "is-disabled": t.disabled
            }
          }, [t.thumb ? n("v-uni-image", {
            staticClass: "uni-collapse-item__title-img",
            attrs: {
              src: t.thumb
            }
          }) : t._e(), n("v-uni-text", {
            staticClass: "uni-collapse-item__title-text"
          }, [t._v(t._s(t.title))])], 1)])], 2), t.showArrow ? n("v-uni-view", {
            staticClass: "uni-collapse-item__title-arrow",
            class: {
              "uni-collapse-item__title-arrow-active": t.isOpen,
              "uni-collapse-item--animation": !0 === t.showAnimation
            }
          }, [n("uni-icons", {
            attrs: {
              color: t.disabled ? "#ddd" : "#bbb",
              size: "14",
              type: "bottom"
            }
          })], 1) : t._e()], 1), n("v-uni-view", {
            staticClass: "uni-collapse-item__wrap",
            class: {
              "is--transition": t.showAnimation
            },
            style: {
              height: (t.isOpen ? t.height : 0) + "px"
            }
          }, [n("v-uni-view", {
            ref: "collapse--hook",
            staticClass: "uni-collapse-item__wrap-content",
            class: {
              open: t.isheight,
              "uni-collapse-item--border": t.border && t.isOpen
            },
            attrs: {
              id: t.elId
            }
          }, [t._t("default")], 2)], 1)], 1)
        },
        o = []
    },
    7222: function(t, e, n) {
      t.exports = n.p + "static/img/img_networktest_waiting.7b2019fd.png"
    },
    "7c99": function(t, e, n) {
      var i = n("4bad");
      e = i(!1), e.push([t.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/[data-v-4aa361d3] .uni-nav-bar-text{font-size:%?36?%}.wrapper[data-v-4aa361d3]{min-height:100vh;position:relative}.loading_info[data-v-4aa361d3],\n.loadFail_info[data-v-4aa361d3]{position:absolute;top:0;font-size:%?36?%;width:100vw;height:100vh;background-color:#fff;display:flex;justify-content:center;align-items:center;color:#000;z-index:99}.loading_info .info[data-v-4aa361d3],\n.loadFail_info .info[data-v-4aa361d3]{text-align:center}.loading_info .info uni-button[data-v-4aa361d3],\n.loadFail_info .info uni-button[data-v-4aa361d3]{margin-top:%?10?%;width:%?200?%}.ddddd[data-v-4aa361d3]{background-color:#000}', ""]), t.exports = e
    },
    "7d38": function(t, e, n) {
      "use strict";
      var i = n("1d79"),
        a = n.n(i);
      a.a
    },
    8702: function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.default = void 0, n("14d9"), n("d3b7"), n("159b");
      e.default = {
        name: "uniCollapse",
        emits: ["change", "activeItem", "input", "update:modelValue"],
        props: {
          value: {
            type: [String, Array],
            default: ""
          },
          modelValue: {
            type: [String, Array],
            default: ""
          },
          accordion: {
            type: [Boolean, String],
            default: !1
          }
        },
        data: function() {
          return {}
        },
        computed: {
          dataValue: function() {
            var t = "string" === typeof this.value && "" === this.value || Array.isArray(this.value) && 0 === this.value.length;
            "string" === typeof this.modelValue && "" === this.modelValue || Array.isArray(this.modelValue) && this.modelValue.length;
            return t ? this.modelValue : this.value
          }
        },
        watch: {
          dataValue: function(t) {
            this.setOpen(t)
          }
        },
        created: function() {
          this.childrens = [], this.names = []
        },
        mounted: function() {
          var t = this;
          this.$nextTick((function() {
            t.setOpen(t.dataValue)
          }))
        },
        methods: {
          setOpen: function(t) {
            var e = this,
              n = "string" === typeof t,
              i = Array.isArray(t);
            this.childrens.forEach((function(a, o) {
              if (n && t === a.nameSync) {
                if (!e.accordion) return void console.warn("accordion 属性为 false ,v-model 类型应该为 array");
                a.isOpen = !0
              }
              i && t.forEach((function(t) {
                if (t === a.nameSync) {
                  if (e.accordion) return void console.warn("accordion 属性为 true ,v-model 类型应该为 string");
                  a.isOpen = !0
                }
              }))
            })), this.emit(t)
          },
          setAccordion: function(t) {
            this.accordion && this.childrens.forEach((function(e, n) {
              t !== e && (e.isOpen = !1)
            }))
          },
          resize: function() {
            this.childrens.forEach((function(t, e) {
              t.getCollapseHeight()
            }))
          },
          onChange: function(t, e) {
            var n = [];
            this.accordion ? n = t ? e.nameSync : "" : this.childrens.forEach((function(t, e) {
              t.isOpen && n.push(t.nameSync)
            })), this.$emit("change", n), this.emit(n)
          },
          emit: function(t) {
            this.$emit("input", t), this.$emit("update:modelValue", t)
          }
        }
      }
    },
    "87f7": function(t, e, n) {
      "use strict";
      var i = n("babb"),
        a = n.n(i);
      a.a
    },
    "93fd": function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("f566"),
        a = n.n(i);
      for (var o in i)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return i[t]
        }))
      }(o);
      e["default"] = a.a
    },
    "94a6": function(t, e, n) {
      t.exports = n.p + "static/img/btn_networktest_nor.9d18b3a0.png"
    },
    "9edc": function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("8702"),
        a = n.n(i);
      for (var o in i)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return i[t]
        }))
      }(o);
      e["default"] = a.a
    },
    "9ff9": function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("5c10"),
        a = n("93fd");
      for (var o in a)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return a[t]
        }))
      }(o);
      n("7d38");
      var c = n("f0c5"),
        l = Object(c["a"])(a["default"], i["b"], i["c"], !1, null, "0cbaecf0", null, !1, i["a"], void 0);
      e["default"] = l.exports
    },
    ab717: function(t, e, n) {
      t.exports = n.p + "static/img/gif_networktest_loading.5548f29c.gif"
    },
    b000: function(t, e) {
      t.exports = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAmCAYAAACoPemuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjc2OTI3QzY4Q0M1ODExRThBQjZDRjEwNDdGNDFERUQ1IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjc2OTI3QzY5Q0M1ODExRThBQjZDRjEwNDdGNDFERUQ1Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NzY5MjdDNjZDQzU4MTFFOEFCNkNGMTA0N0Y0MURFRDUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NzY5MjdDNjdDQzU4MTFFOEFCNkNGMTA0N0Y0MURFRDUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7gp027AAAB5klEQVR42syYv0sDMRTH3xWhUNBJxHYRxy6K4qZQF0Gl/pgER9FBN52q6JDBFp36F/gPuCpVcKiLky7+CQ5qcRXFTudLm5QouV4uucvlC98Sernjcy8vecl5vu+Di8qAoxro/F57uvePoQ/Ry+hRdAvdQJ+hX7Spyj54naHUA1tEX6IHJdc+0RvoW10w3aEsoW8CoID9T68v2M4xotiPDqlnC4xGa16x7zR60xYYidj/FJ1NGixKtLjG0btJgxHNnDxBDyUFphMtrmF0JSmw4GiNLOHC8NY1bcu1jy7EDdY/WpMXmN75rmlbrlyUVMjEn1t9l60tdDEusPDcet4BaGOZ/HnF9nZYba4pvZ5CrWwaJH2Q5tAPJrWylAAU1bnpUKrlltqsFDWLXtcFU4+W2qz8r1pvPxgRTH0mUiBZu7+KbJZGAksqt2Qvn4sCRsCOCqwiKIHZihZXhdXSUDACdkV3HcdhYLajxbXH9m2BYATSUZbtdKVgaUWLi54NpmRgBNKVJ5YqDlZOOVpc9By6IoIdGT2u/S60W6ZwByLYhNGj1PdjKpoBoYiafYv6aADc5ePMtV7EnsAdPYpgdYfA6iLYFbrqAFSVsfxZx+hpeY3t8b/Q3xaB7tGrjEE4jDgoZ7/B/gowABI8XkqJL8cEAAAAAElFTkSuQmCC"
    },
    b0ec: function(t, e, n) {
      t.exports = n.p + "static/img/btn_networktest_click.b61e4dc4.png"
    },
    b874: function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("0099"),
        a = n.n(i);
      for (var o in i)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return i[t]
        }))
      }(o);
      e["default"] = a.a
    },
    b941: function(t, e, n) {
      var i = n("4bad");
      e = i(!1), e.push([t.i, '@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */\n/*绝对定位-左上角*/\n/*绝对定位-左下角*/\n/*绝对定位-右上角*/\n/*绝对定位-右下角*/\n/*绝对定位-垂直水平居中*/\n/*绝对定位-底部水平居中*/\n/*绝对定位-顶部水平居中*/\n/*固定定位 元素居中*/\n/*粘性定位*/\n/*固定定位*/\n/*-------flexible box--------*/\n/*水平排列*/\n/*水平排列允许换行*/\n/*水平排列 上下居中*/\n/*左右顶头*/\n/*左右顶头 上下居中*/\n/*水平垂直居中*/\n/*水平居中*/\n/*列居中*/\n/*上下顶边*/\n/*-----字号------*/\n/*文字超出省略号*/\n/*背景*/\n/*背景图*/\n/*边框*/\n/*底部边框*/\n/*顶部边框*/\n/*左侧边框*/\n/*右侧边框*/\n/*四边边框*/\n/*过渡动画*/.uni-collapse-item[data-v-335e5506]{box-sizing:border-box}.uni-collapse-item__title[data-v-335e5506]{display:flex;width:100%;box-sizing:border-box;flex-direction:row;align-items:center;transition:border-bottom-color .3s}.uni-collapse-item__title-wrap[data-v-335e5506]{width:100%;flex:1}.uni-collapse-item__title-box[data-v-335e5506]{padding:0 %?15?%;display:flex;width:100%;box-sizing:border-box;flex-direction:row;justify-content:space-between;align-items:center;height:%?48?%;line-height:%?48?%;background-color:#fff;color:#303133;font-size:%?13?%;font-weight:500;cursor:pointer;outline:none}.uni-collapse-item__title-box.is-disabled .uni-collapse-item__title-text[data-v-335e5506]{color:#999}.uni-collapse-item__title.uni-collapse-item-border[data-v-335e5506]{border-bottom:%?1?% solid #ebeef5}.uni-collapse-item__title.is-open[data-v-335e5506]{border-bottom-color:transparent}.uni-collapse-item__title-img[data-v-335e5506]{height:%?22?%;width:%?22?%;margin-right:%?10?%}.uni-collapse-item__title-text[data-v-335e5506]{flex:1;font-size:%?14?%;white-space:nowrap;color:inherit;overflow:hidden;text-overflow:ellipsis}.uni-collapse-item__title-arrow[data-v-335e5506]{display:flex;box-sizing:border-box;align-items:center;justify-content:center;width:%?20?%;height:%?20?%;margin-right:%?10?%;-webkit-transform:rotate(0deg);transform:rotate(0deg)}.uni-collapse-item__title-arrow-active[data-v-335e5506]{-webkit-transform:rotate(-180deg);transform:rotate(-180deg)}.uni-collapse-item__wrap[data-v-335e5506]{will-change:height;box-sizing:border-box;background-color:#fff;overflow:hidden;position:relative;height:0}.uni-collapse-item__wrap.is--transition[data-v-335e5506]{transition-property:height,border-bottom-width;transition-duration:.3s;will-change:height}.uni-collapse-item__wrap-content[data-v-335e5506]{position:absolute;font-size:%?13?%;color:#303133;border-bottom-color:transparent;border-bottom-style:solid;border-bottom-width:0}.uni-collapse-item__wrap-content.uni-collapse-item--border[data-v-335e5506]{border-bottom-width:%?1?%;border-bottom-color:red;border-bottom-color:#ebeef5}.uni-collapse-item__wrap-content.open[data-v-335e5506]{position:relative}.uni-collapse-item--animation[data-v-335e5506]{transition-property:-webkit-transform;transition-property:transform;transition-property:transform,-webkit-transform;transition-duration:.3s;transition-timing-function:ease}', ""]), t.exports = e
    },
    babb: function(t, e, n) {
      var i = n("b941");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [t.i, i, ""]
      ]), i.locals && (t.exports = i.locals);
      var a = n("4f06").default;
      a("58223deb", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    ca92: function(t, e, n) {
      "use strict";
      n.d(e, "b", (function() {
        return i
      })), n.d(e, "c", (function() {
        return a
      })), n.d(e, "a", (function() {}));
      var i = function() {
          var t = this.$createElement,
            e = this._self._c || t;
          return e("v-uni-view", {
            staticClass: "uni-collapse"
          }, [this._t("default")], 2)
        },
        a = []
    },
    d29d: function(t, e, n) {
      "use strict";
      n.r(e);
      var i = n("651e"),
        a = n("20f7");
      for (var o in a)["default"].indexOf(o) < 0 && function(t) {
        n.d(e, t, (function() {
          return a[t]
        }))
      }(o);
      n("3dab");
      var c = n("f0c5"),
        l = Object(c["a"])(a["default"], i["b"], i["c"], !1, null, "4aa361d3", null, !1, i["a"], void 0);
      e["default"] = l.exports
    },
    ea81: function(t, e, n) {
      var i = n("7c99");
      i.__esModule && (i = i.default), "string" === typeof i && (i = [
        [t.i, i, ""]
      ]), i.locals && (t.exports = i.locals);
      var a = n("4f06").default;
      a("4326e34c", i, !0, {
        sourceMap: !1,
        shadowMode: !1
      })
    },
    f566: function(t, e, n) {
      "use strict";
      n("7a82"), Object.defineProperty(e, "__esModule", {
        value: !0
      }), e.default = void 0, n("f4b3"), n("e9c4"), n("a9e3"), n("d3b7"), n("159b");
      var i = n("1698"),
        a = n("c685");
      uni.requireNativePlugin("dom"), e.default = {
        data: function() {
          return {
            scrollTopHeight: 9999,
            pageState: "loadSuccess",
            btnText: "开始检测",
            message: "等待检测",
            checkState: "waitCheck",
            checkArr: [{
              title: "无线开关检测",
              littleTitle: "检测是否已开启手机无线",
              collapseTitle: "无线开关检测出错",
              errorTitle: "无线开关未打开",
              loadTitle: "正在检测无线开关",
              state: 1,
              collapseState: !1,
              handleArr: ['1.请打开"设置" - 无线局域网，将无线局域网开关打开']
            }, {
              title: "校园无线检测",
              littleTitle: "检测是否已连接校园无线",
              collapseTitle: "校园无线检测出错",
              errorTitle: "未连接校园无线",
              loadTitle: "正在检测校园无线",
              state: 1,
              collapseState: !1,
              handleArr: ["1.请打开“设置”-无线局域网，将无线局域网开关打开", "2.请选择校园无线SSID连接"]
            }, {
              title: "路由检测",
              littleTitle: "检测路由",
              collapseTitle: "路由检测出错",
              errorTitle: "路由配置不正确",
              loadTitle: "正在检测路由",
              state: 1,
              collapseState: !1,
              handleArr: ["1.请无线路由器管理页面中关闭DHCP服务", "2.将接入网线接入LAN接口，以桥接方式接入校园网"]
            }, {
              title: "认证服务器连通性检测",
              littleTitle: "检测是否能连接认证服务器",
              collapseTitle: "认证服务连通性检查",
              errorTitle: "认证服务器连通性出错",
              loadTitle: "正在检测认证服务器连通性",
              state: 1,
              collapseState: !1,
              handleArr: ["认证服务连通性检查：", "1.请连接校园无线网络", "2.无线网络请使用DHCP获取IP地址，不要手动指定该地址"]
            }, {
              title: "客户端服务器连通性检测",
              littleTitle: "检测是否能转到校园官网",
              collapseTitle: "客户端服务器连通性出错：",
              errorTitle: "客户端服务器连通性出错",
              loadTitle: "正在检测客户端服务器连通性",
              state: 1,
              collapseState: !1,
              handleArr: ["认证服务连通性检查：", "1.请连接校园无线网络", "2.无线网络请使用DHCP获取IP地址，不要手动指定该地址"]
            }]
          }
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
              e = t[t.length - 1].route;
            e == this.$mp.page.route && uni.navigateBack()
          },
          retry: function() {
            console.log("自定义重试方法")
          },
          btnCheck: function() {
            var t = this;
            if ("停止检测" != this.btnText) this.btnText = "停止检测", this.checkState = "loadCheck", this.checkArr.forEach((function(t) {
              t.state = 1, t.collapseState = !1
            })), this.checkArr[0].state = 2, this.message = this.checkArr[0].loadTitle, i.PluginApi.coolMethod("onStartNetCheckTool", [1], (function(e) {
              console.log("onStartNetCheckTool>" + JSON.stringify(e)), a.$log.logInfoJsonString(e, "onStartNetCheckTool_js");
              var n = e.checkItem;
              if (-1 != e.checkItem) {
                var i = Number(e.result);
                if (-1 == i && (t.checkArr[n - 1].collapseState = !0), t.checkArr[n - 1].state = i, 5 == n) {
                  t.btnText = "重新检测";
                  for (var o = 0; o < t.checkArr.length; o++) {
                    if (-1 == t.checkArr[o].state) return t.message = t.checkArr[o].errorTitle, void(t.checkState = "wrongCheck");
                    o == t.checkArr.length - 1 && (t.message = "检测成功", t.checkState = "waitCheck")
                  }
                } else t.checkArr[n].state = 2, t.message = t.checkArr[n].loadTitle
              }
            }));
            else {
              i.PluginApi.coolMethod("onStartNetCheckTool", [2], (function(t) {
                console.log("onStopNetCheckTool->" + JSON.stringify(t))
              })), this.checkState = "waitCheck", this.message = "等待检测", this.btnText = "重新检测";
              for (var e = 0; e < this.checkArr.length; e++)
                if (2 == this.checkArr[e].state) return void(this.checkArr[e].state = 1)
            }
          }
        }
      }
    }
  }
]);