package z1;

/* JADX INFO: compiled from: ActualTypeMapperPool.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a2.b0<java.lang.reflect.Type, java.util.Map<java.lang.reflect.Type, java.lang.reflect.Type>> f7112a = new a2.b0<>();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Class] */
    public static java.util.Map<java.lang.reflect.Type, java.lang.reflect.Type> b(java.lang.reflect.Type type) {
        java.util.HashMap map = new java.util.HashMap();
        while (type != 0) {
            java.lang.reflect.ParameterizedType parameterizedTypeS = e2.d0.s(type);
            if (parameterizedTypeS == null) {
                break;
            }
            java.lang.reflect.Type[] actualTypeArguments = parameterizedTypeS.getActualTypeArguments();
            type = (java.lang.Class) parameterizedTypeS.getRawType();
            java.lang.reflect.TypeVariable[] typeParameters = type.getTypeParameters();
            for (int i5 = 0; i5 < typeParameters.length; i5++) {
                java.lang.reflect.Type type2 = actualTypeArguments[i5];
                if (!(type2 instanceof java.lang.reflect.TypeVariable)) {
                    map.put(typeParameters[i5], type2);
                }
            }
        }
        return map;
    }

    public static java.util.Map<java.lang.reflect.Type, java.lang.reflect.Type> c(final java.lang.reflect.Type type) {
        return f7112a.computeIfAbsent(type, new java.util.function.Function() { // from class: z1.a
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return z1.b.f(type, (java.lang.reflect.Type) obj);
            }
        });
    }

    public static java.lang.reflect.Type d(java.lang.reflect.Type type, java.lang.reflect.TypeVariable<?> typeVariable) {
        java.util.Map<java.lang.reflect.Type, java.lang.reflect.Type> mapC = c(type);
        java.lang.reflect.Type type2 = mapC.get(typeVariable);
        while (true) {
            java.lang.reflect.Type type3 = type2;
            if (!(type3 instanceof java.lang.reflect.TypeVariable)) {
                return type3;
            }
            type2 = mapC.get(type3);
        }
    }

    public static java.lang.reflect.Type[] e(java.lang.reflect.Type type, java.lang.reflect.Type... typeArr) {
        java.lang.reflect.Type[] typeArr2 = new java.lang.reflect.Type[typeArr.length];
        for (int i5 = 0; i5 < typeArr.length; i5++) {
            typeArr2[i5] = typeArr[i5] instanceof java.lang.reflect.TypeVariable ? d(type, (java.lang.reflect.TypeVariable) typeArr[i5]) : typeArr[i5];
        }
        return typeArr2;
    }

    public static /* synthetic */ java.util.Map f(java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        return b(type);
    }
}
