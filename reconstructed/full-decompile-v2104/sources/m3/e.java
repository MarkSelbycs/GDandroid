package m3;

/* JADX INFO: compiled from: ClassReference.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e implements q3.b<java.lang.Object>, m3.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m3.e.a f5180b = new m3.e.a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<? extends a3.b<?>>, java.lang.Integer> f5181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, java.lang.String> f5182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, java.lang.String> f5183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, java.lang.String> f5184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.Map<java.lang.String, java.lang.String> f5185g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f5186a;

    /* JADX INFO: compiled from: ClassReference.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final java.lang.String a(java.lang.Class<?> cls) {
            java.lang.String str;
            m3.k.e(cls, "jClass");
            java.lang.String str2 = null;
            if (!cls.isAnonymousClass()) {
                if (cls.isLocalClass()) {
                    java.lang.String simpleName = cls.getSimpleName();
                    java.lang.reflect.Method enclosingMethod = cls.getEnclosingMethod();
                    if (enclosingMethod != null) {
                        m3.k.d(simpleName, "name");
                        java.lang.String strS = s3.m.S(simpleName, enclosingMethod.getName() + '$', null, 2, null);
                        if (strS != null) {
                            return strS;
                        }
                    }
                    java.lang.reflect.Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                    if (enclosingConstructor == null) {
                        m3.k.d(simpleName, "name");
                        return s3.m.R(simpleName, '$', null, 2, null);
                    }
                    m3.k.d(simpleName, "name");
                    return s3.m.S(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
                }
                if (!cls.isArray()) {
                    java.lang.String str3 = (java.lang.String) m3.e.f5185g.get(cls.getName());
                    return str3 == null ? cls.getSimpleName() : str3;
                }
                java.lang.Class<?> componentType = cls.getComponentType();
                if (componentType.isPrimitive() && (str = (java.lang.String) m3.e.f5185g.get(componentType.getName())) != null) {
                    str2 = str + "Array";
                }
                if (str2 == null) {
                    return "Array";
                }
            }
            return str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i5 = 0;
        java.util.List listG = b3.o.g(l3.a.class, l3.l.class, l3.p.class, l3.q.class, l3.r.class, l3.s.class, l3.t.class, l3.u.class, l3.v.class, l3.w.class, l3.b.class, l3.c.class, l3.d.class, l3.e.class, l3.f.class, l3.g.class, l3.h.class, l3.i.class, l3.j.class, l3.k.class, l3.m.class, l3.n.class, l3.o.class);
        java.util.ArrayList arrayList = new java.util.ArrayList(b3.p.l(listG, 10));
        for (java.lang.Object obj : listG) {
            int i6 = i5 + 1;
            if (i5 < 0) {
                b3.o.k();
            }
            arrayList.add(a3.l.a((java.lang.Class) obj, java.lang.Integer.valueOf(i5)));
            i5 = i6;
        }
        f5181c = b3.h0.l(arrayList);
        java.util.HashMap<java.lang.String, java.lang.String> map = new java.util.HashMap<>();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        f5182d = map;
        java.util.HashMap<java.lang.String, java.lang.String> map2 = new java.util.HashMap<>();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        f5183e = map2;
        java.util.HashMap<java.lang.String, java.lang.String> map3 = new java.util.HashMap<>();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        java.util.Collection<java.lang.String> collectionValues = map.values();
        m3.k.d(collectionValues, "primitiveFqNames.values");
        for (java.lang.String str : collectionValues) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("kotlin.jvm.internal.");
            m3.k.d(str, "kotlinName");
            sb.append(s3.m.U(str, '.', null, 2, null));
            sb.append("CompanionObject");
            a3.h hVarA = a3.l.a(sb.toString(), str + ".Companion");
            map3.put(hVarA.e(), hVarA.f());
        }
        for (java.util.Map.Entry<java.lang.Class<? extends a3.b<?>>, java.lang.Integer> entry : f5181c.entrySet()) {
            map3.put(entry.getKey().getName(), "kotlin.Function" + entry.getValue().intValue());
        }
        f5184f = map3;
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(b3.g0.d(map3.size()));
        for (java.util.Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), s3.m.U((java.lang.String) entry2.getValue(), '.', null, 2, null));
        }
        f5185g = linkedHashMap;
    }

    public e(java.lang.Class<?> cls) {
        m3.k.e(cls, "jClass");
        this.f5186a = cls;
    }

    @Override // q3.b
    public java.lang.String a() {
        return f5180b.a(b());
    }

    @Override // m3.d
    public java.lang.Class<?> b() {
        return this.f5186a;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof m3.e) && m3.k.a(k3.a.a(this), k3.a.a((q3.b) obj));
    }

    public int hashCode() {
        return k3.a.a(this).hashCode();
    }

    public java.lang.String toString() {
        return b().toString() + " (Kotlin reflection is not available)";
    }
}
