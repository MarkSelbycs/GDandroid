package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f3666a;

    public static class a implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private java.lang.Object f3667a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3668b;

        public a(java.lang.Object obj, boolean z4) {
            this.f3667a = obj;
            this.f3668b = z4;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            return com.msec.vvv.a(1592, new java.lang.Object[]{this, obj, method, objArr});
        }
    }

    public static void a(android.content.Context context) {
        com.msec.vvv.a(1698, new java.lang.Object[]{context});
    }
}
