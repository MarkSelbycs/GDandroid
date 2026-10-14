package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static com.msec.b f3851a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3852b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f3853c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static java.lang.String f3854d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static java.lang.String f3855e = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static java.lang.String f3856j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f3857k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f3858l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f3859m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f3860n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private java.lang.String f3861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private java.lang.String f3862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3864i;

    /* JADX INFO: renamed from: com.msec.i$1, reason: invalid class name */
    public static class AnonymousClass1 implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f3865a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.content.Context f3866b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.util.concurrent.SynchronousQueue f3867c;

        public AnonymousClass1(int i5, android.content.Context context, java.util.concurrent.SynchronousQueue synchronousQueue) {
            this.f3865a = i5;
            this.f3866b = context;
            this.f3867c = synchronousQueue;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.msec.vvv.a(1749, new java.lang.Object[]{this});
        }
    }

    public static class a extends android.content.BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            com.msec.vvv.a(1659, new java.lang.Object[]{this, context, intent});
        }
    }

    private i(java.lang.String str) {
        this.f3862g = "";
        if (com.msec.X3.Q1 == null || !f3860n) {
            throw new java.lang.RuntimeException(com.msec.vvv.a(1175));
        }
        if (str == null) {
            com.msec.h.a(4001);
            str = "";
        } else {
            try {
                new java.net.URL(str);
            } catch (java.net.MalformedURLException unused) {
                com.msec.h.a(4001);
                str = "";
            }
        }
        this.f3862g = str;
        java.lang.String strS = com.msec.X3.s(str);
        this.f3861f = strS;
        this.f3863h = com.msec.X3.p(strS);
        this.f3864i = com.msec.X3.N(this.f3861f);
    }

    @android.annotation.TargetApi(24)
    public static int a(android.webkit.WebView webView, android.webkit.WebViewClient webViewClient) throws java.lang.IllegalArgumentException {
        return ((java.lang.Integer) com.msec.vvv.a(1705, new java.lang.Object[]{webView, webViewClient})).intValue();
    }

    public static java.lang.Object a(android.content.Context context, java.lang.Class cls) throws java.lang.Throwable {
        return com.msec.X3.W(context, cls);
    }

    public static java.lang.String a(android.content.Context context) {
        return (java.lang.String) com.msec.vvv.a(1704, new java.lang.Object[]{context});
    }

    public static synchronized void a() {
        com.msec.vvv.a(1623, null);
    }

    public static void a(int i5) {
        com.msec.vvv.a(1622, new java.lang.Object[]{java.lang.Integer.valueOf(i5)});
    }

    public static void a(int i5, java.lang.String str) {
        com.msec.X3.U(str);
        a(i5);
    }

    private static synchronized void a(android.content.Context context, java.lang.String str) {
        com.msec.vvv.a(1621, new java.lang.Object[]{context, str});
    }

    private static void a(android.content.Context context, java.lang.String str, int i5) {
        com.msec.vvv.a(1620, new java.lang.Object[]{context, str, java.lang.Integer.valueOf(i5)});
    }

    public static void a(java.lang.Object obj) {
        com.msec.X3.Q(obj);
    }

    public static void a(java.lang.String str) {
        if (com.msec.X3.Q1 == null) {
            throw new java.lang.RuntimeException(com.msec.vvv.a(1175));
        }
        com.msec.c.a(str);
    }

    public static void a(java.lang.StringBuilder sb, java.lang.String str) {
        com.msec.vvv.a(1619, new java.lang.Object[]{sb, str});
    }

    public static void a(boolean z4) {
        com.msec.h.a(1010);
        com.msec.h.f3849a = z4;
    }

    public static synchronized void b() {
        a();
    }

    public static void b(java.lang.String str) {
        com.msec.c.a(str, false);
    }

    private static synchronized boolean b(android.content.Context context) {
        return ((java.lang.Boolean) com.msec.vvv.a(1618, new java.lang.Object[]{context})).booleanValue();
    }

    public static com.msec.i c(java.lang.String str) {
        return new com.msec.i(str);
    }

    public static void c() {
        com.msec.h.a(1102);
        f3857k = true;
        com.msec.bd.a(com.msec.X3.Q1);
    }

    private static void c(android.content.Context context) {
        com.msec.vvv.a(1617, new java.lang.Object[]{context});
    }

    public static java.lang.String e() {
        com.msec.h.c(5001);
        if (f3855e == null) {
            f3855e = com.msec.X3.A();
        }
        return f3855e;
    }

    public static boolean e(java.lang.String str) {
        return com.msec.X3.J(str);
    }

    public static boolean f(java.lang.String str) {
        return com.msec.X3.K(str);
    }

    public static byte[] f(byte[] bArr) {
        if (bArr != null) {
            return com.msec.X3.M(bArr);
        }
        return null;
    }

    public static boolean g() {
        return f3857k;
    }

    public static boolean g(java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1616, new java.lang.Object[]{str})).booleanValue();
    }

    public static boolean g(byte[] bArr) {
        return com.msec.X3.P(bArr);
    }

    public static java.lang.String h() {
        return com.msec.X3.C();
    }

    public static void h(java.lang.String str) {
        com.msec.X3.V(str);
    }

    public static java.lang.String i() {
        return com.msec.X3.D();
    }

    public static java.lang.String i(java.lang.String str) {
        return com.msec.X3.Y(str);
    }

    public static java.lang.String j() {
        return com.msec.X3.E();
    }

    private static void j(java.lang.String str) {
        com.msec.vvv.a(1631, new java.lang.Object[]{str});
    }

    public static boolean k() {
        return com.msec.h.f3849a;
    }

    public static boolean l() {
        return f3858l;
    }

    public static java.lang.String m() {
        return com.msec.X3.Q1 == null ? "" : com.msec.X3.y();
    }

    public static java.lang.String n() {
        return com.msec.X3.Q1 == null ? "" : com.msec.X3.X();
    }

    public java.io.InputStream a(java.io.InputStream inputStream) {
        return !this.f3864i ? inputStream : new com.msec.q(inputStream, this);
    }

    public java.io.OutputStream a(java.io.OutputStream outputStream) {
        return !this.f3864i ? outputStream : new com.msec.s(outputStream, this);
    }

    public byte[] a(byte[] bArr) {
        return (byte[]) com.msec.vvv.a(1630, new java.lang.Object[]{this, bArr});
    }

    public java.lang.String b(int i5) {
        com.msec.h.c(5002);
        return com.msec.X3.q(this.f3863h, i5, this.f3861f, this.f3862g);
    }

    public java.lang.String b(byte[] bArr) {
        return com.msec.X3.R(bArr);
    }

    public byte[] c(byte[] bArr) {
        return (byte[]) com.msec.vvv.a(1629, new java.lang.Object[]{this, bArr});
    }

    public int d(java.lang.String str) {
        return ((java.lang.Integer) com.msec.vvv.a(1628, new java.lang.Object[]{this, str})).intValue();
    }

    public java.lang.String d() {
        return b(0);
    }

    public byte[] d(byte[] bArr) {
        return com.msec.X3.F(this.f3863h, this.f3861f, bArr);
    }

    public byte[] e(byte[] bArr) {
        return com.msec.X3.G(this.f3863h, this.f3861f, bArr);
    }

    public boolean f() {
        return com.msec.X3.N(this.f3861f);
    }
}
