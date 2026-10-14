package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bt {

    public static class a implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private java.lang.Object f3746a;

        public a(java.lang.Object obj) {
            this.f3746a = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            return com.msec.vvv.a(1750, new java.lang.Object[]{this, obj, method, objArr});
        }
    }

    public static void a() {
        com.msec.vvv.a(1769, null);
    }

    private static void a(java.lang.Object obj) {
        com.msec.vvv.a(1768, new java.lang.Object[]{obj});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c() {
        return ((java.lang.Boolean) com.msec.vvv.a(1687, null)).booleanValue();
    }
}
