package q0;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.Object f5702a = new java.lang.Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile q0.n f5703b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5704c = 20;

    /* JADX INFO: compiled from: Logger.java */
    public static class a extends q0.n {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f5705d;

        public a(int i5) {
            super(i5);
            this.f5705d = i5;
        }

        @Override // q0.n
        public void a(java.lang.String str, java.lang.String str2) {
            if (this.f5705d <= 3) {
                android.util.Log.d(str, str2);
            }
        }

        @Override // q0.n
        public void b(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
            if (this.f5705d <= 3) {
                android.util.Log.d(str, str2, th);
            }
        }

        @Override // q0.n
        public void c(java.lang.String str, java.lang.String str2) {
            if (this.f5705d <= 6) {
                android.util.Log.e(str, str2);
            }
        }

        @Override // q0.n
        public void d(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
            if (this.f5705d <= 6) {
                android.util.Log.e(str, str2, th);
            }
        }

        @Override // q0.n
        public void f(java.lang.String str, java.lang.String str2) {
            if (this.f5705d <= 4) {
                android.util.Log.i(str, str2);
            }
        }

        @Override // q0.n
        public void g(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
            if (this.f5705d <= 4) {
                android.util.Log.i(str, str2, th);
            }
        }

        @Override // q0.n
        public void j(java.lang.String str, java.lang.String str2) {
            if (this.f5705d <= 2) {
                android.util.Log.v(str, str2);
            }
        }

        @Override // q0.n
        public void k(java.lang.String str, java.lang.String str2) {
            if (this.f5705d <= 5) {
                android.util.Log.w(str, str2);
            }
        }

        @Override // q0.n
        public void l(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
            if (this.f5705d <= 5) {
                android.util.Log.w(str, str2, th);
            }
        }
    }

    public n(int i5) {
    }

    public static q0.n e() {
        q0.n nVar;
        synchronized (f5702a) {
            if (f5703b == null) {
                f5703b = new q0.n.a(3);
            }
            nVar = f5703b;
        }
        return nVar;
    }

    public static void h(q0.n nVar) {
        synchronized (f5702a) {
            f5703b = nVar;
        }
    }

    public static java.lang.String i(java.lang.String str) {
        int length = str.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(23);
        sb.append("WM-");
        int i5 = f5704c;
        if (length >= i5) {
            sb.append(str.substring(0, i5));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public abstract void a(java.lang.String str, java.lang.String str2);

    public abstract void b(java.lang.String str, java.lang.String str2, java.lang.Throwable th);

    public abstract void c(java.lang.String str, java.lang.String str2);

    public abstract void d(java.lang.String str, java.lang.String str2, java.lang.Throwable th);

    public abstract void f(java.lang.String str, java.lang.String str2);

    public abstract void g(java.lang.String str, java.lang.String str2, java.lang.Throwable th);

    public abstract void j(java.lang.String str, java.lang.String str2);

    public abstract void k(java.lang.String str, java.lang.String str2);

    public abstract void l(java.lang.String str, java.lang.String str2, java.lang.Throwable th);
}
