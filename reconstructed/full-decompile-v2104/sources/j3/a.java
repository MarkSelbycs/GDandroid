package j3;

/* JADX INFO: compiled from: Closeable.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    public static final void a(java.io.Closeable closeable, java.lang.Throwable th) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (java.lang.Throwable th2) {
                a3.a.a(th, th2);
            }
        }
    }
}
