package v1;

/* JADX INFO: compiled from: Assert.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {
    public static void e(boolean z4, final java.lang.String str, final java.lang.Object... objArr) throws java.lang.Throwable {
        f(z4, new java.util.function.Supplier() { // from class: v1.b
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return v1.e.g(str, objArr);
            }
        });
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <X extends java.lang.Throwable> void f(boolean z4, java.util.function.Supplier<? extends X> supplier) throws java.lang.Throwable {
        if (!z4) {
            throw supplier.get();
        }
    }

    public static /* synthetic */ java.lang.IllegalArgumentException g(java.lang.String str, java.lang.Object[] objArr) {
        return new java.lang.IllegalArgumentException(b2.c.i(str, objArr));
    }

    public static /* synthetic */ java.lang.IllegalArgumentException h(java.lang.String str, java.lang.Object[] objArr) {
        return new java.lang.IllegalArgumentException(b2.c.i(str, objArr));
    }

    public static /* synthetic */ java.lang.IllegalArgumentException i(java.lang.String str, java.lang.Object[] objArr) {
        return new java.lang.IllegalArgumentException(b2.c.i(str, objArr));
    }

    public static /* synthetic */ java.lang.IllegalArgumentException j(java.lang.String str, java.lang.Object[] objArr) {
        return new java.lang.IllegalArgumentException(b2.c.i(str, objArr));
    }

    public static <T extends java.lang.CharSequence> T k(T t5, final java.lang.String str, final java.lang.Object... objArr) throws java.lang.IllegalArgumentException {
        return (T) l(t5, new java.util.function.Supplier() { // from class: v1.a
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return v1.e.h(str, objArr);
            }
        });
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <T extends java.lang.CharSequence, X extends java.lang.Throwable> T l(T t5, java.util.function.Supplier<X> supplier) throws java.lang.Throwable {
        if (b2.c.q(t5)) {
            throw supplier.get();
        }
        return t5;
    }

    public static <T extends java.lang.CharSequence> T m(T t5) throws java.lang.IllegalArgumentException {
        return (T) n(t5, "[Assertion failed] - this String argument must have length; it must not be null or empty", new java.lang.Object[0]);
    }

    public static <T extends java.lang.CharSequence> T n(T t5, final java.lang.String str, final java.lang.Object... objArr) throws java.lang.IllegalArgumentException {
        return (T) o(t5, new java.util.function.Supplier() { // from class: v1.c
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return v1.e.i(str, objArr);
            }
        });
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <T extends java.lang.CharSequence, X extends java.lang.Throwable> T o(T t5, java.util.function.Supplier<X> supplier) throws java.lang.Throwable {
        if (b2.c.r(t5)) {
            throw supplier.get();
        }
        return t5;
    }

    public static <T> T p(T t5) throws java.lang.IllegalArgumentException {
        return (T) q(t5, "[Assertion failed] - this argument is required; it must not be null", new java.lang.Object[0]);
    }

    public static <T> T q(T t5, final java.lang.String str, final java.lang.Object... objArr) throws java.lang.IllegalArgumentException {
        return (T) r(t5, new java.util.function.Supplier() { // from class: v1.d
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return v1.e.j(str, objArr);
            }
        });
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <T, X extends java.lang.Throwable> T r(T t5, java.util.function.Supplier<X> supplier) throws java.lang.Throwable {
        if (t5 != null) {
            return t5;
        }
        throw supplier.get();
    }
}
