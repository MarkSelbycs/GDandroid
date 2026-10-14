package z1;

/* JADX INFO: compiled from: MethodHandleUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {
    public static <T> T a(boolean z4, java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object... objArr) {
        v1.e.q(method, "Method must be not null!", new java.lang.Object[0]);
        java.lang.Class<?> declaringClass = method.getDeclaringClass();
        java.lang.invoke.MethodHandles.Lookup lookupC = c(declaringClass);
        try {
            java.lang.invoke.MethodHandle methodHandleUnreflectSpecial = z4 ? lookupC.unreflectSpecial(method, declaringClass) : lookupC.unreflect(method);
            if (obj != null) {
                methodHandleUnreflectSpecial = methodHandleUnreflectSpecial.bindTo(obj);
            }
            return (T) methodHandleUnreflectSpecial.invokeWithArguments(objArr);
        } catch (java.lang.Throwable th) {
            throw new r1.c(th);
        }
    }

    public static <T> T b(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object... objArr) {
        return (T) a(true, obj, method, objArr);
    }

    public static java.lang.invoke.MethodHandles.Lookup c(java.lang.Class<?> cls) {
        return z1.c.a(cls);
    }
}
