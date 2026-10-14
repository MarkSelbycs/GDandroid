package h4;

/* JADX INFO: compiled from: HttpHeaders.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {
    public static long a(c4.q qVar) {
        return h(qVar.a("Content-Length"));
    }

    public static long b(c4.a0 a0Var) {
        return a(a0Var.I());
    }

    public static boolean c(c4.a0 a0Var) {
        if (a0Var.P().k().equals("HEAD")) {
            return false;
        }
        int iY = a0Var.y();
        return (((iY >= 100 && iY < 200) || iY == 204 || iY == 304) && b(a0Var) == -1 && !"chunked".equalsIgnoreCase(a0Var.C("Transfer-Encoding"))) ? false : true;
    }

    public static int d(java.lang.String str, int i5) {
        try {
            long j5 = java.lang.Long.parseLong(str);
            if (j5 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j5 < 0) {
                return 0;
            }
            return (int) j5;
        } catch (java.lang.NumberFormatException unused) {
            return i5;
        }
    }

    public static void e(c4.m mVar, c4.r rVar, c4.q qVar) {
        if (mVar == c4.m.f3182a) {
            return;
        }
        java.util.List<c4.l> listF = c4.l.f(rVar, qVar);
        if (listF.isEmpty()) {
            return;
        }
        mVar.a(rVar, listF);
    }

    public static int f(java.lang.String str, int i5, java.lang.String str2) {
        while (i5 < str.length() && str2.indexOf(str.charAt(i5)) == -1) {
            i5++;
        }
        return i5;
    }

    public static int g(java.lang.String str, int i5) {
        char cCharAt;
        while (i5 < str.length() && ((cCharAt = str.charAt(i5)) == ' ' || cCharAt == '\t')) {
            i5++;
        }
        return i5;
    }

    public static long h(java.lang.String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.NumberFormatException unused) {
            return -1L;
        }
    }
}
