package i4;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i4.e f4688a = g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.logging.Logger f4689b = java.util.logging.Logger.getLogger(c4.v.class.getName());

    public static java.util.List<java.lang.String> b(java.util.List<c4.w> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            c4.w wVar = list.get(i5);
            if (wVar != c4.w.HTTP_1_0) {
                arrayList.add(wVar.toString());
            }
        }
        return arrayList;
    }

    public static byte[] d(java.util.List<c4.w> list) {
        okio.Buffer buffer = new okio.Buffer();
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            c4.w wVar = list.get(i5);
            if (wVar != c4.w.HTTP_1_0) {
                buffer.writeByte(wVar.toString().length());
                buffer.writeUtf8(wVar.toString());
            }
        }
        return buffer.readByteArray();
    }

    public static i4.e g() {
        i4.e eVarN = i4.a.n();
        if (eVarN != null) {
            return eVarN;
        }
        i4.b bVarN = i4.b.n();
        if (bVarN != null) {
            return bVarN;
        }
        i4.e eVarN2 = i4.c.n();
        return eVarN2 != null ? eVarN2 : new i4.e();
    }

    public static i4.e h() {
        return f4688a;
    }

    public static <T> T l(java.lang.Object obj, java.lang.Class<T> cls, java.lang.String str) {
        java.lang.Object objL;
        for (java.lang.Class<?> superclass = obj.getClass(); superclass != java.lang.Object.class; superclass = superclass.getSuperclass()) {
            try {
                java.lang.reflect.Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                java.lang.Object obj2 = declaredField.get(obj);
                if (obj2 != null && cls.isInstance(obj2)) {
                    return cls.cast(obj2);
                }
                return null;
            } catch (java.lang.IllegalAccessException unused) {
                throw new java.lang.AssertionError();
            } catch (java.lang.NoSuchFieldException unused2) {
            }
        }
        if (str.equals("delegate") || (objL = l(obj, java.lang.Object.class, "delegate")) == null) {
            return null;
        }
        return (T) l(objL, cls, str);
    }

    public void a(javax.net.ssl.SSLSocket sSLSocket) {
    }

    public j4.b c(javax.net.ssl.X509TrustManager x509TrustManager) {
        return new j4.a(j4.e.b(x509TrustManager));
    }

    public void e(javax.net.ssl.SSLSocket sSLSocket, java.lang.String str, java.util.List<c4.w> list) {
    }

    public void f(java.net.Socket socket, java.net.InetSocketAddress inetSocketAddress, int i5) throws java.io.IOException {
        socket.connect(inetSocketAddress, i5);
    }

    public java.lang.String i(javax.net.ssl.SSLSocket sSLSocket) {
        return null;
    }

    public boolean j(java.lang.String str) {
        return true;
    }

    public void k(int i5, java.lang.String str, java.lang.Throwable th) {
        f4689b.log(i5 == 5 ? java.util.logging.Level.WARNING : java.util.logging.Level.INFO, str, th);
    }

    public javax.net.ssl.X509TrustManager m(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        try {
            java.lang.Object objL = l(sSLSocketFactory, java.lang.Class.forName("sun.security.ssl.SSLContextImpl"), "context");
            if (objL == null) {
                return null;
            }
            return (javax.net.ssl.X509TrustManager) l(objL, javax.net.ssl.X509TrustManager.class, "trustManager");
        } catch (java.lang.ClassNotFoundException unused) {
            return null;
        }
    }
}
