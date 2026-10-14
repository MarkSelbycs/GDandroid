package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bh {

    public static class a implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Object f3710a;

        public a(java.lang.Object obj) {
            this.f3710a = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            return com.msec.vvv.a(1548, new java.lang.Object[]{this, obj, method, objArr});
        }
    }

    public static <T> T a(java.lang.Class<T> cls, T t5, java.lang.String str) {
        return (T) com.msec.vvv.a(1708, new java.lang.Object[]{cls, t5, str});
    }

    public static <T> T a(T t5) {
        return (T) com.msec.vvv.a(1707, new java.lang.Object[]{t5});
    }

    public static void a(java.lang.String str, boolean z4) {
        java.lang.String strA = com.msec.bj.a(str);
        if ("".equals(strA) || z4) {
            return;
        }
        com.msec.bf.a(strA);
    }
}
