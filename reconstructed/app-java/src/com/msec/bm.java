package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static java.lang.reflect.Field f3729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static java.lang.reflect.Method f3730c;

    /* JADX INFO: renamed from: com.msec.bm$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
    }

    public static class a extends java.lang.ThreadLocal<com.koushikdutta.async.AsyncServer> {
        private a() {
        }

        public /* synthetic */ a(com.msec.bm.AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(com.koushikdutta.async.AsyncServer asyncServer) {
            super.set(asyncServer);
            com.msec.bm.b(asyncServer);
        }
    }

    public static class b extends java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.AsyncServer> {
        private b() {
        }

        public /* synthetic */ b(com.msec.bm.AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.koushikdutta.async.AsyncServer put(java.lang.Thread thread, com.koushikdutta.async.AsyncServer asyncServer) {
            super.put(thread, asyncServer);
            com.msec.bm.b(asyncServer);
            return asyncServer;
        }
    }

    public static void a() {
        com.msec.vvv.a(1788, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(com.koushikdutta.async.http.AsyncHttpClient asyncHttpClient) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        com.msec.vvv.a(1787, new java.lang.Object[]{asyncHttpClient});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.koushikdutta.async.AsyncServer asyncServer) {
        com.msec.vvv.a(1786, new java.lang.Object[]{asyncServer});
    }
}
