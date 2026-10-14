package o1;

/* JADX INFO: compiled from: EnumConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class x extends n1.a<java.lang.Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a2.b0<java.lang.Class<?>, java.util.Map<java.lang.Class<?>, java.lang.reflect.Method>> f5317b = new a2.b0<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class f5318a;

    public x(java.lang.Class cls) {
        this.f5318a = cls;
    }

    public static java.util.Map<java.lang.Class<?>, java.lang.reflect.Method> F(final java.lang.Class<?> cls) {
        return f5317b.computeIfAbsent(cls, new java.util.function.Function() { // from class: o1.q
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return o1.x.H(cls, (java.lang.Class) obj);
            }
        });
    }

    public static /* synthetic */ java.util.Map H(final java.lang.Class cls, java.lang.Class cls2) {
        return (java.util.Map) java.util.Arrays.stream(cls.getMethods()).filter(new java.util.function.Predicate() { // from class: o1.w
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return e2.n.f((java.lang.reflect.Method) obj);
            }
        }).filter(new java.util.function.Predicate() { // from class: o1.t
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return o1.x.I(cls, (java.lang.reflect.Method) obj);
            }
        }).filter(new java.util.function.Predicate() { // from class: o1.u
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return o1.x.M((java.lang.reflect.Method) obj);
            }
        }).filter(new java.util.function.Predicate() { // from class: o1.v
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return o1.x.P((java.lang.reflect.Method) obj);
            }
        }).collect(java.util.stream.Collectors.toMap(new java.util.function.Function() { // from class: o1.r
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return o1.x.T((java.lang.reflect.Method) obj);
            }
        }, new java.util.function.Function() { // from class: o1.s
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return o1.x.U((java.lang.reflect.Method) obj);
            }
        }, new java.util.function.BinaryOperator() { // from class: o1.p
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object obj, java.lang.Object obj2) {
                return o1.x.V((java.lang.reflect.Method) obj, (java.lang.reflect.Method) obj2);
            }
        }));
    }

    public static /* synthetic */ boolean I(java.lang.Class cls, java.lang.reflect.Method method) {
        return method.getReturnType() == cls;
    }

    public static /* synthetic */ boolean M(java.lang.reflect.Method method) {
        return method.getParameterCount() == 1;
    }

    public static /* synthetic */ boolean P(java.lang.reflect.Method method) {
        return !"valueOf".equals(method.getName());
    }

    public static /* synthetic */ java.lang.Class T(java.lang.reflect.Method method) {
        return method.getParameterTypes()[0];
    }

    public static /* synthetic */ java.lang.reflect.Method U(java.lang.reflect.Method method) {
        return method;
    }

    public static /* synthetic */ java.lang.reflect.Method V(java.lang.reflect.Method method, java.lang.reflect.Method method2) {
        return method;
    }

    public static java.lang.Enum W(java.lang.Object obj, java.lang.Class cls) {
        v1.h hVar;
        if (obj == null) {
            return null;
        }
        if (v1.h.class.isAssignableFrom(cls) && (hVar = (v1.h) e2.l.a(cls, 0)) != null) {
            if (obj instanceof java.lang.Integer) {
                return (java.lang.Enum) hVar.v((java.lang.Integer) obj);
            }
            if (obj instanceof java.lang.String) {
                return (java.lang.Enum) hVar.A(obj.toString());
            }
        }
        try {
            java.util.Map<java.lang.Class<?>, java.lang.reflect.Method> mapF = F(cls);
            if (a2.i.i(mapF)) {
                java.lang.Class<?> cls2 = obj.getClass();
                for (java.util.Map.Entry<java.lang.Class<?>, java.lang.reflect.Method> entry : mapF.entrySet()) {
                    if (e2.k.j(entry.getKey(), cls2)) {
                        return (java.lang.Enum) e2.x.w(entry.getValue(), obj);
                    }
                }
            }
        } catch (java.lang.Exception unused) {
        }
        if (obj instanceof java.lang.Integer) {
            return e2.l.a(cls, ((java.lang.Integer) obj).intValue());
        }
        if (!(obj instanceof java.lang.String)) {
            return null;
        }
        try {
            return java.lang.Enum.valueOf(cls, (java.lang.String) obj);
        } catch (java.lang.IllegalArgumentException unused2) {
            return null;
        }
    }

    @Override // n1.a
    public java.lang.Object c(java.lang.Object obj) {
        java.lang.Enum enumW = W(obj, this.f5318a);
        if (enumW == null && !(obj instanceof java.lang.String)) {
            enumW = java.lang.Enum.valueOf(this.f5318a, e(obj));
        }
        if (enumW != null) {
            return enumW;
        }
        throw new n1.d("Can not convert {} to {}", obj, this.f5318a);
    }

    @Override // n1.a
    public java.lang.Class<java.lang.Object> f() {
        return this.f5318a;
    }
}
