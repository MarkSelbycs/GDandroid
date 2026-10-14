package i4;

/* JADX INFO: compiled from: JdkWithJettyBootPlatform.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends i4.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.reflect.Method f4677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Method f4678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.reflect.Method f4679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.Class<?> f4680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.Class<?> f4681g;

    /* JADX INFO: compiled from: JdkWithJettyBootPlatform.java */
    public static class a implements java.lang.reflect.InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.List<java.lang.String> f4682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.String f4684c;

        public a(java.util.List<java.lang.String> list) {
            this.f4682a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            java.lang.String name = method.getName();
            java.lang.Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = d4.c.f3966b;
            }
            if (name.equals("supports") && java.lang.Boolean.TYPE == returnType) {
                return java.lang.Boolean.TRUE;
            }
            if (name.equals("unsupported") && java.lang.Void.TYPE == returnType) {
                this.f4683b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f4682a;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || java.lang.String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof java.util.List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.f4684c = (java.lang.String) objArr[0];
                return null;
            }
            java.util.List list = (java.util.List) objArr[0];
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                if (this.f4682a.contains(list.get(i5))) {
                    java.lang.String str = (java.lang.String) list.get(i5);
                    this.f4684c = str;
                    return str;
                }
            }
            java.lang.String str2 = this.f4682a.get(0);
            this.f4684c = str2;
            return str2;
        }
    }

    public c(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.Class<?> cls, java.lang.Class<?> cls2) {
        this.f4677c = method;
        this.f4678d = method2;
        this.f4679e = method3;
        this.f4680f = cls;
        this.f4681g = cls2;
    }

    public static i4.e n() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("org.eclipse.jetty.alpn.ALPN");
            java.lang.Class<?> cls2 = java.lang.Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new i4.c(cls.getMethod("put", javax.net.ssl.SSLSocket.class, cls2), cls.getMethod("get", javax.net.ssl.SSLSocket.class), cls.getMethod("remove", javax.net.ssl.SSLSocket.class), java.lang.Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), java.lang.Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // i4.e
    public void a(javax.net.ssl.SSLSocket sSLSocket) {
        try {
            this.f4679e.invoke(null, sSLSocket);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            throw new java.lang.AssertionError();
        }
    }

    @Override // i4.e
    public void e(javax.net.ssl.SSLSocket sSLSocket, java.lang.String str, java.util.List<c4.w> list) {
        try {
            this.f4677c.invoke(null, sSLSocket, java.lang.reflect.Proxy.newProxyInstance(i4.e.class.getClassLoader(), new java.lang.Class[]{this.f4680f, this.f4681g}, new i4.c.a(i4.e.b(list))));
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    @Override // i4.e
    public java.lang.String i(javax.net.ssl.SSLSocket sSLSocket) {
        try {
            i4.c.a aVar = (i4.c.a) java.lang.reflect.Proxy.getInvocationHandler(this.f4678d.invoke(null, sSLSocket));
            if (!aVar.f4683b && aVar.f4684c == null) {
                i4.e.h().k(4, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (aVar.f4683b) {
                return null;
            }
            return aVar.f4684c;
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            throw new java.lang.AssertionError();
        }
    }
}
