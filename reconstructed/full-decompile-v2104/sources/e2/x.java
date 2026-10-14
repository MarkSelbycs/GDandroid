package e2;

/* JADX INFO: compiled from: ReflectUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a2.b0<java.lang.Class<?>, java.lang.reflect.Constructor<?>[]> f4102a = new a2.b0<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a2.b0<java.lang.Class<?>, java.lang.reflect.Field[]> f4103b = new a2.b0<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a2.b0<java.lang.Class<?>, java.lang.reflect.Method[]> f4104c = new a2.b0<>();

    public static /* synthetic */ java.lang.reflect.Field[] B(java.lang.Class cls) throws java.lang.Exception {
        return l(cls, true);
    }

    public static /* synthetic */ java.lang.reflect.Method[] C(java.lang.Class cls) throws java.lang.Exception {
        return r(cls, true, true);
    }

    public static <T> T D(java.lang.Class<T> cls, java.lang.Object... objArr) throws r1.c {
        if (e2.c.u(objArr)) {
            java.lang.reflect.Constructor constructorE = e(cls, new java.lang.Class[0]);
            if (constructorE == null) {
                throw new r1.c("No constructor for [{}]", cls);
            }
            try {
                return (T) constructorE.newInstance(new java.lang.Object[0]);
            } catch (java.lang.Exception e5) {
                throw new r1.c(e5, "Instance class [{}] error!", cls);
            }
        }
        java.lang.Class<?>[] clsArrB = e2.k.b(objArr);
        java.lang.reflect.Constructor constructorE2 = e(cls, clsArrB);
        if (constructorE2 == null) {
            throw new r1.c("No Constructor matched for parameter types: [{}]", clsArrB);
        }
        try {
            return (T) constructorE2.newInstance(objArr);
        } catch (java.lang.Exception e6) {
            throw new r1.c(e6, "Instance class [{}] error!", cls);
        }
    }

    public static <T> T E(java.lang.Class<T> cls) {
        v1.e.p(cls);
        if (cls.isPrimitive()) {
            return (T) e2.k.e(cls);
        }
        if (cls.isAssignableFrom(java.util.AbstractMap.class)) {
            cls = (java.lang.Class<T>) java.util.HashMap.class;
        } else if (cls.isAssignableFrom(java.util.List.class)) {
            cls = (java.lang.Class<T>) java.util.ArrayList.class;
        } else if (cls.isAssignableFrom(java.util.Set.class)) {
            cls = (java.lang.Class<T>) java.util.HashSet.class;
        }
        try {
            return (T) D(cls, new java.lang.Object[0]);
        } catch (java.lang.Exception unused) {
            if (cls.isEnum()) {
                return cls.getEnumConstants()[0];
            }
            if (cls.isArray()) {
                return (T) java.lang.reflect.Array.newInstance(cls.getComponentType(), 0);
            }
            java.lang.reflect.Constructor[] constructorArrF = f(cls);
            int length = constructorArrF.length;
            for (int i5 = 0; i5 < length; i5++) {
                java.lang.reflect.Constructor constructor = constructorArrF[i5];
                java.lang.Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes.length != 0) {
                    F(constructor);
                    try {
                        return (T) constructor.newInstance(e2.k.d(parameterTypes));
                    } catch (java.lang.Exception unused2) {
                        continue;
                    }
                }
            }
            return null;
        }
    }

    public static <T extends java.lang.reflect.AccessibleObject> T F(T t5) {
        if (t5 != null && !t5.isAccessible()) {
            t5.setAccessible(true);
        }
        return t5;
    }

    public static void G(java.lang.Object obj, java.lang.reflect.Field field, java.lang.Object obj2) throws r1.c {
        java.lang.Object objA;
        v1.e.q(field, "Field in [{}] not exist !", obj);
        java.lang.Class<?> type = field.getType();
        if (obj2 == null) {
            obj2 = e2.k.c(type);
        } else if (!type.isAssignableFrom(obj2.getClass()) && (objA = n1.c.a(type, obj2)) != null) {
            obj2 = objA;
        }
        F(field);
        try {
            field.set(obj instanceof java.lang.Class ? null : obj, obj2);
        } catch (java.lang.IllegalAccessException e5) {
            throw new r1.c(e5, "IllegalAccess for {}.{}", obj, field.getName());
        }
    }

    public static <T> java.lang.reflect.Constructor<T> e(java.lang.Class<T> cls, java.lang.Class<?>... clsArr) {
        if (cls == null) {
            return null;
        }
        for (java.lang.reflect.Constructor<T> constructor : f(cls)) {
            if (e2.k.i(constructor.getParameterTypes(), clsArr)) {
                F(constructor);
                return constructor;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> java.lang.reflect.Constructor<T>[] f(java.lang.Class<T> cls) throws java.lang.SecurityException {
        v1.e.p(cls);
        return f4102a.y(cls, new e2.w(cls));
    }

    public static java.lang.reflect.Constructor<?>[] g(java.lang.Class<?> cls) throws java.lang.SecurityException {
        return cls.getDeclaredConstructors();
    }

    public static java.util.List<java.lang.reflect.Method> h(java.lang.Class<?> cls) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Class<?> cls2 : cls.getInterfaces()) {
            for (java.lang.reflect.Method method : cls2.getMethods()) {
                if (!e2.n.c(method)) {
                    arrayList.add(method);
                }
            }
        }
        return arrayList;
    }

    public static java.lang.String i(java.lang.reflect.Field field) {
        if (field == null) {
            return null;
        }
        g1.a aVar = (g1.a) field.getAnnotation(g1.a.class);
        return aVar != null ? aVar.value() : field.getName();
    }

    public static java.lang.Object j(java.lang.Object obj, java.lang.reflect.Field field) throws r1.c {
        if (field == null) {
            return null;
        }
        if (obj instanceof java.lang.Class) {
            obj = null;
        }
        F(field);
        try {
            return field.get(obj);
        } catch (java.lang.IllegalAccessException e5) {
            throw new r1.c(e5, "IllegalAccess for {}.{}", field.getDeclaringClass(), field.getName());
        }
    }

    public static java.lang.reflect.Field[] k(java.lang.Class<?> cls) throws java.lang.SecurityException {
        v1.e.p(cls);
        return f4103b.y(cls, new e2.u(cls));
    }

    public static java.lang.reflect.Field[] l(java.lang.Class<?> cls, boolean z4) throws java.lang.SecurityException {
        v1.e.p(cls);
        java.lang.reflect.Field[] fieldArr = null;
        while (cls != null) {
            java.lang.reflect.Field[] declaredFields = cls.getDeclaredFields();
            fieldArr = fieldArr == null ? declaredFields : (java.lang.reflect.Field[]) e2.c.h(fieldArr, declaredFields);
            cls = z4 ? cls.getSuperclass() : null;
        }
        return fieldArr;
    }

    public static java.lang.reflect.Method m(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.SecurityException {
        return n(cls, false, str, clsArr);
    }

    public static java.lang.reflect.Method n(java.lang.Class<?> cls, boolean z4, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.SecurityException {
        java.lang.reflect.Method method = null;
        if (cls != null && !b2.c.q(str)) {
            java.lang.reflect.Method[] methodArrP = p(cls);
            if (e2.c.v(methodArrP)) {
                for (java.lang.reflect.Method method2 : methodArrP) {
                    if (b2.c.h(str, method2.getName(), z4) && e2.k.i(method2.getParameterTypes(), clsArr) && (method == null || method.getReturnType().isAssignableFrom(method2.getReturnType()))) {
                        method = method2;
                    }
                }
            }
        }
        return method;
    }

    public static java.lang.reflect.Method o(java.lang.Object obj, java.lang.String str, java.lang.Object... objArr) throws java.lang.SecurityException {
        if (obj == null || b2.c.q(str)) {
            return null;
        }
        return m(obj.getClass(), str, e2.k.b(objArr));
    }

    public static java.lang.reflect.Method[] p(java.lang.Class<?> cls) throws java.lang.SecurityException {
        v1.e.p(cls);
        return f4104c.y(cls, new e2.v(cls));
    }

    public static java.lang.reflect.Method[] q(java.lang.Class<?> cls, v1.i<java.lang.reflect.Method> iVar) throws java.lang.SecurityException {
        if (cls == null) {
            return null;
        }
        return (java.lang.reflect.Method[]) e2.c.m(p(cls), iVar);
    }

    public static java.lang.reflect.Method[] r(java.lang.Class<?> cls, boolean z4, boolean z5) throws java.lang.SecurityException {
        v1.e.p(cls);
        if (cls.isInterface()) {
            return z4 ? cls.getMethods() : cls.getDeclaredMethods();
        }
        l1.q qVar = new l1.q(true, (java.util.function.Function) new java.util.function.Function() { // from class: e2.t
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return e2.x.s((java.lang.reflect.Method) obj);
            }
        });
        while (cls != null && (z5 || java.lang.Object.class != cls)) {
            qVar.b(java.util.Arrays.asList(cls.getDeclaredMethods()));
            qVar.b(h(cls));
            cls = (!z4 || cls.isInterface()) ? null : cls.getSuperclass();
        }
        return (java.lang.reflect.Method[]) qVar.toArray(new java.lang.reflect.Method[0]);
    }

    public static java.lang.String s(java.lang.reflect.Method method) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(method.getReturnType().getName());
        sb.append('#');
        sb.append(method.getName());
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        for (int i5 = 0; i5 < parameterTypes.length; i5++) {
            if (i5 == 0) {
                sb.append(':');
            } else {
                sb.append(',');
            }
            sb.append(parameterTypes[i5].getName());
        }
        return sb.toString();
    }

    public static <T> T t(java.lang.Object obj, java.lang.String str, java.lang.Object... objArr) throws r1.c {
        v1.e.q(obj, "Object to get method must be not null!", new java.lang.Object[0]);
        v1.e.k(str, "Method name must be not blank!", new java.lang.Object[0]);
        java.lang.reflect.Method methodO = o(obj, str, objArr);
        if (methodO != null) {
            return (T) u(obj, methodO, objArr);
        }
        throw new r1.c("No such method: [{}] from [{}]", str, obj.getClass());
    }

    public static <T> T u(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object... objArr) throws r1.c {
        try {
            return (T) v(obj, method, objArr);
        } catch (java.lang.IllegalAccessException e5) {
            throw new r1.c(e5);
        } catch (java.lang.reflect.InvocationTargetException e6) {
            throw new r1.b(e6);
        }
    }

    public static <T> T v(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object... objArr) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        F(method);
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length;
        java.lang.Object[] objArr2 = new java.lang.Object[length];
        if (objArr != null) {
            for (int i5 = 0; i5 < length; i5++) {
                if (i5 >= objArr.length || objArr[i5] == null) {
                    objArr2[i5] = e2.k.c(parameterTypes[i5]);
                } else if (objArr[i5] instanceof h1.i) {
                    objArr2[i5] = null;
                } else if (parameterTypes[i5].isAssignableFrom(objArr[i5].getClass())) {
                    objArr2[i5] = objArr[i5];
                } else {
                    java.lang.Object objF = n1.c.f(parameterTypes[i5], objArr[i5], null, true);
                    if (objF != null) {
                        objArr2[i5] = objF;
                    } else {
                        objArr2[i5] = objArr[i5];
                    }
                }
            }
        }
        if (method.isDefault()) {
            return (T) z1.d.b(obj, method, objArr);
        }
        if (e2.k.o(method)) {
            obj = null;
        }
        return (T) method.invoke(obj, objArr2);
    }

    public static <T> T w(java.lang.reflect.Method method, java.lang.Object... objArr) throws r1.c {
        return (T) u(null, method, objArr);
    }

    public static boolean x(java.lang.reflect.Method method, boolean z4) {
        int parameterCount;
        if (method == null || (parameterCount = method.getParameterCount()) > 1) {
            return false;
        }
        java.lang.String name = method.getName();
        if ("getClass".equals(name)) {
            return false;
        }
        if (z4) {
            name = name.toLowerCase();
        }
        if (parameterCount == 0) {
            return name.startsWith("get") || name.startsWith("is");
        }
        if (parameterCount != 1) {
            return false;
        }
        return name.startsWith("set");
    }

    public static boolean y(java.lang.reflect.Method method) {
        return x(method, true);
    }

    public static boolean z(java.lang.reflect.Field field) {
        return "this$0".equals(field.getName());
    }
}
