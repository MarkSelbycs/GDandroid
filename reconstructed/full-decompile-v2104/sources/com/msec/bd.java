package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3692a;

    public static class a extends android.os.Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final android.webkit.WebView f3693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final android.os.Handler f3694b;

        public a(android.webkit.WebView webView, android.os.Handler handler) {
            this.f3693a = webView;
            this.f3694b = handler;
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            com.msec.vvv.a(1612, new java.lang.Object[]{this, message});
        }
    }

    public static class b implements android.os.Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.msec.bd.a f3695a;

        public b(com.msec.bd.a aVar) {
            this.f3695a = aVar;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            this.f3695a.handleMessage(message);
            return true;
        }
    }

    public static class c implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private java.lang.Object f3696a;

        public c(java.lang.Object obj) {
            this.f3696a = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            return com.msec.vvv.a(1667, new java.lang.Object[]{this, obj, method, objArr});
        }
    }

    public static class d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final java.util.List<com.msec.bd.d> f3697d = new java.util.ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.ref.WeakReference<android.webkit.WebView> f3698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.ref.WeakReference<java.lang.Object> f3699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.ref.WeakReference<java.lang.Object> f3700c;

        public d(android.webkit.WebView webView, java.lang.Object obj, java.lang.Object obj2) {
            this.f3698a = new java.lang.ref.WeakReference<>(webView);
            this.f3699b = new java.lang.ref.WeakReference<>(obj);
            this.f3700c = new java.lang.ref.WeakReference<>(obj2);
        }

        public static void a(android.webkit.WebView webView) {
            com.msec.vvv.a(1716, new java.lang.Object[]{webView});
        }

        public static void a(com.msec.bd.d dVar) {
            com.msec.vvv.a(1715, new java.lang.Object[]{dVar});
        }

        public static com.msec.bd.d b(android.webkit.WebView webView) {
            return (com.msec.bd.d) com.msec.vvv.a(1714, new java.lang.Object[]{webView});
        }
    }

    public static class e implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final android.webkit.WebView f3701a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private java.lang.Object f3702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.msec.ba f3703c = new com.msec.ba();

        public e(android.webkit.WebView webView, java.lang.Object obj) {
            this.f3701a = webView;
            this.f3702b = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            return com.msec.vvv.a(1762, new java.lang.Object[]{this, obj, method, objArr});
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    private static java.lang.reflect.Field a(java.lang.Class cls) {
        byte b5;
        java.lang.Class<? super java.lang.Object> superclass;
        if (cls == null) {
            return null;
        }
        try {
            if (cls.isPrimitive()) {
                return null;
            }
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            java.lang.reflect.Field field = null;
            for (java.lang.reflect.Field field2 : cls.getDeclaredFields()) {
                java.lang.Class<?> type = field2.getType();
                if (!type.isPrimitive()) {
                    java.lang.String name = type.getName();
                    switch (name.hashCode()) {
                        case -2014788097:
                            if (name.equals(com.msec.vvv.a(1445))) {
                                b5 = 4;
                            } else {
                                b5 = -1;
                            }
                            break;
                        case -673598235:
                            if (name.equals(com.msec.vvv.a(731))) {
                                b5 = 0;
                            } else {
                                b5 = -1;
                            }
                            break;
                        case 883841129:
                            if (name.equals(com.msec.vvv.a(729))) {
                                b5 = 2;
                            } else {
                                b5 = -1;
                            }
                            break;
                        case 1425157036:
                            if (name.equals(com.msec.vvv.a(728))) {
                                b5 = 3;
                            } else {
                                b5 = -1;
                            }
                            break;
                        case 1929767290:
                            if (name.equals(com.msec.vvv.a(730))) {
                                b5 = 1;
                            } else {
                                b5 = -1;
                            }
                            break;
                        default:
                            b5 = -1;
                            break;
                    }
                    if (b5 == 0) {
                        z4 = true;
                    } else if (b5 == 1) {
                        z6 = true;
                    } else if (b5 == 2) {
                        z5 = true;
                    } else if (b5 == 3) {
                        z7 = true;
                    } else if (b5 == 4 || ((superclass = type.getSuperclass()) != null && com.msec.vvv.a(1445).equals(superclass.getName()))) {
                        field = field2;
                    }
                }
            }
            if (z4 && z5 && z6 && z7 && field != null) {
                return field;
            }
            return a(cls.getSuperclass());
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    private static java.lang.reflect.Field a(java.lang.Class cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        return (java.lang.reflect.Field) com.msec.vvv.a(1683, new java.lang.Object[]{cls, str});
    }

    public static synchronized void a(android.content.Context context) {
        com.msec.vvv.a(1682, new java.lang.Object[]{context});
    }

    private static void a(android.webkit.WebView webView, java.lang.Object obj, java.lang.reflect.Field field, java.lang.reflect.Field field2) throws java.lang.IllegalAccessException {
        com.msec.vvv.a(1681, new java.lang.Object[]{webView, obj, field, field2});
    }

    private static boolean a(android.webkit.WebView webView, java.lang.Object obj, java.lang.Class cls) throws java.lang.IllegalAccessException {
        return ((java.lang.Boolean) com.msec.vvv.a(1680, new java.lang.Object[]{webView, obj, cls})).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(android.webkit.WebView webView, java.lang.Object obj) {
        com.msec.vvv.a(1695, new java.lang.Object[]{webView, obj});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(android.webkit.WebView webView, boolean z4) {
        com.msec.vvv.a(1694, new java.lang.Object[]{webView, java.lang.Boolean.valueOf(z4)});
    }
}
