package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class cd {

    /* JADX INFO: renamed from: com.msec.cd$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
    }

    public static class a implements java.lang.reflect.InvocationHandler {
        private a() {
        }

        public /* synthetic */ a(com.msec.cd.AnonymousClass1 anonymousClass1) {
            this();
        }

        public static c4.v.b a(c4.v.b bVar) {
            return (c4.v.b) com.msec.vvv.a(1660, new java.lang.Object[]{bVar});
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
            if (!com.msec.vvv.a(1092).equals(method.getName())) {
                if (com.msec.vvv.a(1926).equals(method.getName())) {
                    return toString();
                }
                return null;
            }
            c4.v.b bVar = new c4.v.b();
            java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
            c4.v.b bVarA = bVar.d(0L, timeUnit).i(0L, timeUnit).l(0L, timeUnit).f(new com.facebook.react.modules.network.ReactCookieJarContainer()).a(new com.msec.cb());
            try {
                java.security.Security.insertProviderAt((java.security.Provider) java.lang.Class.forName(com.msec.vvv.a(958)).newInstance(), 1);
            } catch (java.lang.Exception unused) {
                a(bVarA);
            }
            return bVarA.b();
        }
    }

    public static void a() {
        com.msec.vvv.a(1721, null);
    }
}
