package o1;

/* JADX INFO: compiled from: PrimitiveConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i0 extends n1.a<java.lang.Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f5298a;

    public i0(java.lang.Class<?> cls) {
        java.util.Objects.requireNonNull(cls, "PrimitiveConverter not allow null target type!");
        if (cls.isPrimitive()) {
            this.f5298a = cls;
            return;
        }
        throw new java.lang.IllegalArgumentException("[" + cls + "] is not a primitive class!");
    }

    public static java.lang.Object h(java.lang.Object obj, java.lang.Class<?> cls, java.util.function.Function<java.lang.Object, java.lang.String> function) {
        if (java.lang.Byte.TYPE == cls) {
            return e2.p.c(o1.c0.h(obj, java.lang.Byte.class, function), 0);
        }
        if (java.lang.Short.TYPE == cls) {
            return e2.p.c(o1.c0.h(obj, java.lang.Short.class, function), 0);
        }
        if (java.lang.Integer.TYPE == cls) {
            return e2.p.c(o1.c0.h(obj, java.lang.Integer.class, function), 0);
        }
        if (java.lang.Long.TYPE == cls) {
            return e2.p.c(o1.c0.h(obj, java.lang.Long.class, function), 0);
        }
        if (java.lang.Float.TYPE == cls) {
            return e2.p.c(o1.c0.h(obj, java.lang.Float.class, function), 0);
        }
        if (java.lang.Double.TYPE == cls) {
            return e2.p.c(o1.c0.h(obj, java.lang.Double.class, function), 0);
        }
        if (java.lang.Character.TYPE == cls) {
            return n1.c.a(java.lang.Character.class, obj);
        }
        if (java.lang.Boolean.TYPE == cls) {
            return n1.c.a(java.lang.Boolean.class, obj);
        }
        throw new n1.d("Unsupported target type: {}", cls);
    }

    @Override // n1.a
    public java.lang.Object c(java.lang.Object obj) {
        return h(obj, this.f5298a, new java.util.function.Function() { // from class: o1.h0
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj2) {
                return this.f5297a.e(obj2);
            }
        });
    }

    @Override // n1.a
    public java.lang.String e(java.lang.Object obj) {
        return b2.c.W(super.e(obj));
    }

    @Override // n1.a
    public java.lang.Class<java.lang.Object> f() {
        return this.f5298a;
    }
}
