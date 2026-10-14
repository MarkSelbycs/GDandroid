package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static java.lang.String f3720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final java.lang.String f3721b;

    public enum a {
        f3722a(com.msec.vvv.a(735), 2),
        f3723b(com.msec.vvv.a(733), 2);


        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.String f3725c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3726d;

        a(java.lang.String str, int i5) {
            this.f3725c = str;
            this.f3726d = i5;
        }
    }

    static {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.String str = java.io.File.separator;
        sb.append(str);
        sb.append(com.msec.vvv.a(732));
        sb.append(str);
        f3721b = sb.toString();
        f3720a = null;
    }

    public static android.util.Pair<byte[], java.lang.String> a(java.io.InputStream inputStream) {
        return (android.util.Pair) com.msec.vvv.a(1784, new java.lang.Object[]{inputStream});
    }

    public static java.lang.String a(java.lang.String str) {
        return (java.lang.String) com.msec.vvv.a(1767, new java.lang.Object[]{str});
    }

    public static boolean a(java.lang.String str, com.msec.bj.a aVar) {
        return ((java.lang.Boolean) com.msec.vvv.a(1766, new java.lang.Object[]{str, aVar})).booleanValue();
    }

    public static java.lang.String b(java.lang.String str) {
        return (java.lang.String) com.msec.vvv.a(1765, new java.lang.Object[]{str});
    }

    public static int c(java.lang.String str) {
        return ((java.lang.Integer) com.msec.vvv.a(1764, new java.lang.Object[]{str})).intValue();
    }

    public static android.util.Pair<byte[], java.lang.String> d(java.lang.String str) {
        return (android.util.Pair) com.msec.vvv.a(1763, new java.lang.Object[]{str});
    }
}
