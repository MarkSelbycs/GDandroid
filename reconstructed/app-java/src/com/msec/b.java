package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements java.lang.Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static java.lang.String f3682a = com.msec.vvv.a(749);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static android.content.Context f3683b = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static java.util.concurrent.locks.ReentrantReadWriteLock f3684f = new java.util.concurrent.locks.ReentrantReadWriteLock();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static java.lang.String f3685g = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private java.lang.String f3686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private java.lang.String f3687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private java.lang.Thread.UncaughtExceptionHandler f3688e;

    /* JADX INFO: renamed from: com.msec.b$1, reason: invalid class name */
    public class AnonymousClass1 implements java.lang.Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.msec.vvv.a(1688, new java.lang.Object[]{this});
        }
    }

    public b(android.content.Context context, java.lang.String str) {
        f3683b = context;
        f3682a = com.msec.i.i();
        this.f3688e = java.lang.Thread.getDefaultUncaughtExceptionHandler();
        java.lang.Thread.setDefaultUncaughtExceptionHandler(this);
        this.f3686c = str + com.msec.vvv.a(751);
        this.f3687d = str + com.msec.vvv.a(750);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        return (java.lang.String) com.msec.vvv.a(1581, new java.lang.Object[]{this, str, str2});
    }

    private java.lang.String a(java.lang.Throwable th) {
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        java.io.PrintWriter printWriter = new java.io.PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.io.OutputStream outputStream, byte[] bArr, int i5) throws java.io.IOException {
        com.msec.vvv.a(1580, new java.lang.Object[]{this, outputStream, bArr, java.lang.Integer.valueOf(i5)});
    }

    private byte[] a(int i5) {
        return new byte[]{(byte) ((i5 >> 0) & 255), (byte) ((i5 >> 8) & 255), (byte) ((i5 >> 16) & 255), (byte) ((i5 >> 24) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(byte[] bArr) {
        return (byte[]) com.msec.vvv.a(1579, new java.lang.Object[]{this, bArr});
    }

    public static java.lang.String b() {
        return (java.lang.String) com.msec.vvv.a(1578, null);
    }

    public static void b(java.lang.String str) {
        com.msec.vvv.a(1577, new java.lang.Object[]{str});
    }

    public static void c() {
        com.msec.vvv.a(1576, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.String g() {
        return (java.lang.String) com.msec.vvv.a(2007, new java.lang.Object[]{this});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.msec.vvv.a(2006, new java.lang.Object[]{this});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.String i() {
        return (java.lang.String) com.msec.vvv.a(2005, new java.lang.Object[]{this});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j() {
        com.msec.vvv.a(2004, null);
    }

    private static long k() {
        return ((java.lang.Long) com.msec.vvv.a(2003, null)).longValue();
    }

    public java.lang.String a(java.lang.String str) {
        return (java.lang.String) com.msec.vvv.a(2002, new java.lang.Object[]{this, str});
    }

    public void a() {
        com.msec.vvv.a(2001, new java.lang.Object[]{this});
    }

    public void a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.msec.vvv.a(2000, new java.lang.Object[]{this, str, str2, str3});
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
        com.msec.vvv.a(2015, new java.lang.Object[]{this, thread, th});
    }
}
