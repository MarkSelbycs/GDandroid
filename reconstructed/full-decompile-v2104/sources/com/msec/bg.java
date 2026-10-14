package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bg {

    public static class a {
        @android.webkit.JavascriptInterface
        public java.lang.String NWE5NzRkYjhmYzM4() {
            return com.msec.i.n();
        }

        @android.webkit.JavascriptInterface
        public java.lang.String bmF0aXZlRmlVyUHJ() {
            return com.msec.i.m();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static java.util.Map<java.lang.String, com.msec.i> f3709a = new java.util.HashMap();

        private com.msec.i a(java.lang.String str) {
            return (com.msec.i) com.msec.vvv.a(1731, new java.lang.Object[]{this, str});
        }

        @android.webkit.JavascriptInterface
        public java.lang.String GQxdTQzc2E3bGIzC(java.lang.String str, java.lang.String str2) throws java.io.UnsupportedEncodingException {
            return (java.lang.String) com.msec.vvv.a(1730, new java.lang.Object[]{this, str, str2});
        }

        @android.webkit.JavascriptInterface
        public void ODd0Z3ZiOTg3dHl(java.lang.String str, java.lang.String str2) {
            com.msec.i iVarA = a(str);
            if (iVarA == null) {
                return;
            }
            iVarA.d(str2);
            f3709a.remove(str);
        }

        @android.webkit.JavascriptInterface
        public java.lang.String XTAJDANTIXT(java.lang.String str) {
            return com.msec.vvv.a(com.msec.X3.O(str) ? 1458 : 1461);
        }

        @android.webkit.JavascriptInterface
        public java.lang.String cG84OXl0cjc2ZT() {
            return com.msec.i.e();
        }

        @android.webkit.JavascriptInterface
        public java.lang.String nvdhiuherosdjf(java.lang.String str, java.lang.String str2) {
            return (java.lang.String) com.msec.vvv.a(1729, new java.lang.Object[]{this, str, str2});
        }
    }
}
