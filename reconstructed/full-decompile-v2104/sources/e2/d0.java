package e2;

/* JADX INFO: compiled from: TypeUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d0 {
    public static java.lang.reflect.Type a(java.lang.reflect.Type type, java.lang.reflect.ParameterizedType parameterizedType) {
        if (!q(parameterizedType.getActualTypeArguments())) {
            return parameterizedType;
        }
        java.lang.reflect.Type[] typeArrC = c(type, parameterizedType.getActualTypeArguments());
        return e2.c.v(typeArrC) ? new v1.m(typeArrC, parameterizedType.getOwnerType(), parameterizedType.getRawType()) : parameterizedType;
    }

    public static java.lang.reflect.Type b(java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        if (type2 instanceof java.lang.reflect.ParameterizedType) {
            return a(type, (java.lang.reflect.ParameterizedType) type2);
        }
        return type2 instanceof java.lang.reflect.TypeVariable ? z1.b.d(type, (java.lang.reflect.TypeVariable) type2) : type2;
    }

    public static java.lang.reflect.Type[] c(java.lang.reflect.Type type, java.lang.reflect.Type... typeArr) {
        return z1.b.e(type, typeArr);
    }

    public static java.lang.Class<?> d(java.lang.reflect.Field field) {
        if (field == null) {
            return null;
        }
        return field.getType();
    }

    public static java.lang.Class<?> e(java.lang.reflect.Type type) {
        if (type == null) {
            return null;
        }
        if (type instanceof java.lang.Class) {
            return (java.lang.Class) type;
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return (java.lang.Class) ((java.lang.reflect.ParameterizedType) type).getRawType();
        }
        if (type instanceof java.lang.reflect.TypeVariable) {
            return (java.lang.Class) ((java.lang.reflect.TypeVariable) type).getBounds()[0];
        }
        if (!(type instanceof java.lang.reflect.WildcardType)) {
            return null;
        }
        java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
        if (upperBounds.length == 1) {
            return e(upperBounds[0]);
        }
        return null;
    }

    public static java.lang.Class<?> f(java.lang.reflect.Method method) {
        return g(method, 0);
    }

    public static java.lang.Class<?> g(java.lang.reflect.Method method, int i5) {
        java.lang.Class<?>[] clsArrH = h(method);
        if (clsArrH == null || clsArrH.length <= i5) {
            return null;
        }
        return clsArrH[i5];
    }

    public static java.lang.Class<?>[] h(java.lang.reflect.Method method) {
        if (method == null) {
            return null;
        }
        return method.getParameterTypes();
    }

    public static java.lang.reflect.Type i(java.lang.reflect.Method method, int i5) {
        java.lang.reflect.Type[] typeArrJ = j(method);
        if (typeArrJ == null || typeArrJ.length <= i5) {
            return null;
        }
        return typeArrJ[i5];
    }

    public static java.lang.reflect.Type[] j(java.lang.reflect.Method method) {
        if (method == null) {
            return null;
        }
        return method.getGenericParameterTypes();
    }

    public static java.lang.Class<?> k(java.lang.reflect.Method method) {
        if (method == null) {
            return null;
        }
        return method.getReturnType();
    }

    public static java.lang.reflect.Type l(java.lang.reflect.Method method) {
        if (method == null) {
            return null;
        }
        return method.getGenericReturnType();
    }

    public static java.lang.reflect.Type m(java.lang.reflect.Field field) {
        if (field == null) {
            return null;
        }
        return field.getGenericType();
    }

    public static java.lang.reflect.Type n(java.lang.reflect.Type type) {
        return o(type, 0);
    }

    public static java.lang.reflect.Type o(java.lang.reflect.Type type, int i5) {
        java.lang.reflect.Type[] typeArrP = p(type);
        if (typeArrP == null || typeArrP.length <= i5) {
            return null;
        }
        return typeArrP[i5];
    }

    public static java.lang.reflect.Type[] p(java.lang.reflect.Type type) {
        java.lang.reflect.ParameterizedType parameterizedTypeS;
        if (type == null || (parameterizedTypeS = s(type)) == null) {
            return null;
        }
        return parameterizedTypeS.getActualTypeArguments();
    }

    public static boolean q(java.lang.reflect.Type... typeArr) {
        for (java.lang.reflect.Type type : typeArr) {
            if (type instanceof java.lang.reflect.TypeVariable) {
                return true;
            }
        }
        return false;
    }

    public static boolean r(java.lang.reflect.Type type) {
        return type == null || (type instanceof java.lang.reflect.TypeVariable);
    }

    public static java.lang.reflect.ParameterizedType s(java.lang.reflect.Type type) {
        if (type instanceof java.lang.reflect.ParameterizedType) {
            return (java.lang.reflect.ParameterizedType) type;
        }
        if (!(type instanceof java.lang.Class)) {
            return null;
        }
        java.lang.Class cls = (java.lang.Class) type;
        java.lang.reflect.Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass == null || java.lang.Object.class.equals(genericSuperclass)) {
            java.lang.reflect.Type[] genericInterfaces = cls.getGenericInterfaces();
            if (e2.c.v(genericInterfaces)) {
                genericSuperclass = genericInterfaces[0];
            }
        }
        return s(genericSuperclass);
    }
}
