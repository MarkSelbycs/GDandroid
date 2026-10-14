package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class cg implements java.lang.reflect.InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static java.util.Set<java.lang.String> f3836a = new java.util.HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private java.lang.Object f3837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.app.Activity f3838c;

    public cg(java.lang.Object obj, android.app.Activity activity) {
        this.f3837b = obj;
        this.f3838c = activity;
    }

    private java.util.List<java.lang.String> a(float f5, float f6) {
        java.util.LinkedList linkedList = new java.util.LinkedList();
        try {
            java.util.HashSet<java.lang.String> hashSet = new java.util.HashSet(f3836a);
            android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(this.f3838c.getApplicationContext());
            for (java.lang.String str : hashSet) {
                try {
                    android.view.View viewFindViewById = this.f3838c.findViewById(origApplicationContext.getResources().getIdentifier(str, com.msec.vvv.a(573), origApplicationContext.getPackageName()));
                    if (viewFindViewById != null && viewFindViewById.getVisibility() != 8) {
                        int[] iArr = new int[2];
                        viewFindViewById.getLocationInWindow(iArr);
                        int i5 = iArr[0];
                        int i6 = iArr[1];
                        if (f5 >= i5 && f5 <= i5 + viewFindViewById.getWidth() && f6 >= i6 && f6 <= i6 + viewFindViewById.getHeight()) {
                            linkedList.add(str);
                        }
                    }
                } catch (java.lang.Throwable unused) {
                }
            }
        } catch (java.lang.Throwable unused2) {
        }
        return linkedList;
    }

    @Override // java.lang.reflect.InvocationHandler
    public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        return com.msec.vvv.a(1546, new java.lang.Object[]{this, obj, method, objArr});
    }
}
