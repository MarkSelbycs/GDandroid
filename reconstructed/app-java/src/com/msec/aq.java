package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class aq implements java.lang.reflect.InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final java.lang.Object f3663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3664b;

    public aq(java.lang.Object obj, boolean z4) {
        this.f3664b = z4;
        this.f3663a = obj;
    }

    private static java.lang.Object a(java.lang.Object[] objArr, java.lang.String str) {
        return com.msec.vvv.a(1700, new java.lang.Object[]{objArr, str});
    }

    private static void a(java.lang.Object[] objArr) {
        java.lang.Object objA = a(objArr, com.msec.vvv.a(726));
        if (objA == null) {
            objA = a(objArr, com.msec.vvv.a(725));
        }
        com.msec.as.a(objA);
    }

    @Override // java.lang.reflect.InvocationHandler
    public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        return com.msec.vvv.a(1699, new java.lang.Object[]{this, obj, method, objArr});
    }
}
