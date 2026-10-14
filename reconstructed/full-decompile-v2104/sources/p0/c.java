package p0;

/* JADX INFO: compiled from: WebViewGlueCommunicator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: compiled from: WebViewGlueCommunicator.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final p0.d f5441a = p0.c.a();
    }

    public static p0.d a() {
        try {
            return new p0.e((org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface) org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.castToSuppLibClass(org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface.class, b()));
        } catch (java.lang.ClassNotFoundException unused) {
            return new p0.b();
        } catch (java.lang.IllegalAccessException e5) {
            throw new java.lang.RuntimeException(e5);
        } catch (java.lang.NoSuchMethodException e6) {
            throw new java.lang.RuntimeException(e6);
        } catch (java.lang.reflect.InvocationTargetException e7) {
            throw new java.lang.RuntimeException(e7);
        }
    }

    public static java.lang.reflect.InvocationHandler b() throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.reflect.InvocationTargetException {
        return (java.lang.reflect.InvocationHandler) java.lang.Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, d()).getDeclaredMethod("createWebViewProviderFactory", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
    }

    public static p0.d c() {
        return p0.c.a.f5441a;
    }

    public static java.lang.ClassLoader d() {
        return p0.a.b();
    }
}
