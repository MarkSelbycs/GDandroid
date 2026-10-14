package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f3933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f3935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f3936d;

    /* JADX INFO: renamed from: com.msec.z$1, reason: invalid class name */
    public static class AnonymousClass1 implements com.msec.y {
        @Override // com.msec.y
        public void a(java.lang.String str) {
        }

        @Override // com.msec.y
        public void b(java.lang.String str) {
            com.msec.z.f3934b = true;
        }
    }

    public static class a implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private java.lang.Object f3937a;

        public a(java.lang.Object obj) {
            this.f3937a = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            return com.msec.vvv.a(1666, new java.lang.Object[]{this, obj, method, objArr});
        }
    }

    public static class b extends java.util.ArrayList<java.lang.Object> {
        private b() {
        }

        public /* synthetic */ b(com.msec.z.AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(java.lang.Object obj) {
            return ((java.lang.Boolean) com.msec.vvv.a(1665, new java.lang.Object[]{this, obj})).booleanValue();
        }
    }

    public static void a(android.content.Context context) {
        com.msec.vvv.a(1562, new java.lang.Object[]{context});
    }

    private static void a(java.lang.Object obj, java.lang.Class cls) {
        com.msec.vvv.a(1561, new java.lang.Object[]{obj, cls});
    }

    private static boolean a(java.lang.Object obj, boolean z4) {
        return ((java.lang.Boolean) com.msec.vvv.a(1560, new java.lang.Object[]{obj, java.lang.Boolean.valueOf(z4)})).booleanValue();
    }

    private static boolean b(android.content.Context context) {
        return ((java.lang.Boolean) com.msec.vvv.a(1543, new java.lang.Object[]{context})).booleanValue();
    }

    private static boolean c(android.content.Context context) {
        return ((java.lang.Boolean) com.msec.vvv.a(1542, new java.lang.Object[]{context})).booleanValue();
    }

    private static void d(android.content.Context context) {
        com.msec.vvv.a(1541, new java.lang.Object[]{context});
    }
}
