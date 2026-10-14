package u2;

/* JADX INFO: compiled from: $Gson$Types.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.reflect.Type[] f6294a = new java.lang.reflect.Type[0];

    /* JADX INFO: compiled from: $Gson$Types.java */
    public static final class a implements java.lang.reflect.GenericArrayType, java.io.Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.reflect.Type f6295a;

        public a(java.lang.reflect.Type type) {
            this.f6295a = u2.b.b(type);
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof java.lang.reflect.GenericArrayType) && u2.b.f(this, (java.lang.reflect.GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public java.lang.reflect.Type getGenericComponentType() {
            return this.f6295a;
        }

        public int hashCode() {
            return this.f6295a.hashCode();
        }

        public java.lang.String toString() {
            return u2.b.t(this.f6295a) + "[]";
        }
    }

    /* JADX INFO: renamed from: u2.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: $Gson$Types.java */
    public static final class C0086b implements java.lang.reflect.ParameterizedType, java.io.Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.reflect.Type f6296a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.reflect.Type f6297b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.reflect.Type[] f6298c;

        public C0086b(java.lang.reflect.Type type, java.lang.reflect.Type type2, java.lang.reflect.Type... typeArr) {
            int i5 = 0;
            if (type2 instanceof java.lang.Class) {
                java.lang.Class cls = (java.lang.Class) type2;
                boolean z4 = true;
                boolean z5 = java.lang.reflect.Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z5) {
                    z4 = false;
                }
                u2.a.a(z4);
            }
            this.f6296a = type == null ? null : u2.b.b(type);
            this.f6297b = u2.b.b(type2);
            this.f6298c = (java.lang.reflect.Type[]) typeArr.clone();
            while (true) {
                java.lang.reflect.Type[] typeArr2 = this.f6298c;
                if (i5 >= typeArr2.length) {
                    return;
                }
                u2.a.b(typeArr2[i5]);
                u2.b.c(this.f6298c[i5]);
                java.lang.reflect.Type[] typeArr3 = this.f6298c;
                typeArr3[i5] = u2.b.b(typeArr3[i5]);
                i5++;
            }
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof java.lang.reflect.ParameterizedType) && u2.b.f(this, (java.lang.reflect.ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public java.lang.reflect.Type[] getActualTypeArguments() {
            return (java.lang.reflect.Type[]) this.f6298c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public java.lang.reflect.Type getOwnerType() {
            return this.f6296a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public java.lang.reflect.Type getRawType() {
            return this.f6297b;
        }

        public int hashCode() {
            return (java.util.Arrays.hashCode(this.f6298c) ^ this.f6297b.hashCode()) ^ u2.b.m(this.f6296a);
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder((this.f6298c.length + 1) * 30);
            sb.append(u2.b.t(this.f6297b));
            if (this.f6298c.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(u2.b.t(this.f6298c[0]));
            for (int i5 = 1; i5 < this.f6298c.length; i5++) {
                sb.append(", ");
                sb.append(u2.b.t(this.f6298c[i5]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: compiled from: $Gson$Types.java */
    public static final class c implements java.lang.reflect.WildcardType, java.io.Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.reflect.Type f6299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.reflect.Type f6300b;

        public c(java.lang.reflect.Type[] typeArr, java.lang.reflect.Type[] typeArr2) {
            u2.a.a(typeArr2.length <= 1);
            u2.a.a(typeArr.length == 1);
            if (typeArr2.length != 1) {
                u2.a.b(typeArr[0]);
                u2.b.c(typeArr[0]);
                this.f6300b = null;
                this.f6299a = u2.b.b(typeArr[0]);
                return;
            }
            u2.a.b(typeArr2[0]);
            u2.b.c(typeArr2[0]);
            u2.a.a(typeArr[0] == java.lang.Object.class);
            this.f6300b = u2.b.b(typeArr2[0]);
            this.f6299a = java.lang.Object.class;
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof java.lang.reflect.WildcardType) && u2.b.f(this, (java.lang.reflect.WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public java.lang.reflect.Type[] getLowerBounds() {
            java.lang.reflect.Type type = this.f6300b;
            return type != null ? new java.lang.reflect.Type[]{type} : u2.b.f6294a;
        }

        @Override // java.lang.reflect.WildcardType
        public java.lang.reflect.Type[] getUpperBounds() {
            return new java.lang.reflect.Type[]{this.f6299a};
        }

        public int hashCode() {
            java.lang.reflect.Type type = this.f6300b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f6299a.hashCode() + 31);
        }

        public java.lang.String toString() {
            if (this.f6300b != null) {
                return "? super " + u2.b.t(this.f6300b);
            }
            if (this.f6299a == java.lang.Object.class) {
                return "?";
            }
            return "? extends " + u2.b.t(this.f6299a);
        }
    }

    public static java.lang.reflect.GenericArrayType a(java.lang.reflect.Type type) {
        return new u2.b.a(type);
    }

    public static java.lang.reflect.Type b(java.lang.reflect.Type type) {
        if (type instanceof java.lang.Class) {
            java.lang.Class cls = (java.lang.Class) type;
            return cls.isArray() ? new u2.b.a(b(cls.getComponentType())) : cls;
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
            return new u2.b.C0086b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof java.lang.reflect.GenericArrayType) {
            return new u2.b.a(((java.lang.reflect.GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof java.lang.reflect.WildcardType)) {
            return type;
        }
        java.lang.reflect.WildcardType wildcardType = (java.lang.reflect.WildcardType) type;
        return new u2.b.c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void c(java.lang.reflect.Type type) {
        u2.a.a(((type instanceof java.lang.Class) && ((java.lang.Class) type).isPrimitive()) ? false : true);
    }

    public static java.lang.Class<?> d(java.lang.reflect.TypeVariable<?> typeVariable) {
        java.lang.reflect.GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof java.lang.Class) {
            return (java.lang.Class) genericDeclaration;
        }
        return null;
    }

    public static boolean e(java.lang.Object obj, java.lang.Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean f(java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof java.lang.Class) {
            return type.equals(type2);
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            if (!(type2 instanceof java.lang.reflect.ParameterizedType)) {
                return false;
            }
            java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
            java.lang.reflect.ParameterizedType parameterizedType2 = (java.lang.reflect.ParameterizedType) type2;
            return e(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && java.util.Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof java.lang.reflect.GenericArrayType) {
            if (type2 instanceof java.lang.reflect.GenericArrayType) {
                return f(((java.lang.reflect.GenericArrayType) type).getGenericComponentType(), ((java.lang.reflect.GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof java.lang.reflect.WildcardType) {
            if (!(type2 instanceof java.lang.reflect.WildcardType)) {
                return false;
            }
            java.lang.reflect.WildcardType wildcardType = (java.lang.reflect.WildcardType) type;
            java.lang.reflect.WildcardType wildcardType2 = (java.lang.reflect.WildcardType) type2;
            return java.util.Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && java.util.Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof java.lang.reflect.TypeVariable) || !(type2 instanceof java.lang.reflect.TypeVariable)) {
            return false;
        }
        java.lang.reflect.TypeVariable typeVariable = (java.lang.reflect.TypeVariable) type;
        java.lang.reflect.TypeVariable typeVariable2 = (java.lang.reflect.TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static java.lang.reflect.Type g(java.lang.reflect.Type type) {
        return type instanceof java.lang.reflect.GenericArrayType ? ((java.lang.reflect.GenericArrayType) type).getGenericComponentType() : ((java.lang.Class) type).getComponentType();
    }

    public static java.lang.reflect.Type h(java.lang.reflect.Type type, java.lang.Class<?> cls) {
        java.lang.reflect.Type typeL = l(type, cls, java.util.Collection.class);
        if (typeL instanceof java.lang.reflect.WildcardType) {
            typeL = ((java.lang.reflect.WildcardType) typeL).getUpperBounds()[0];
        }
        return typeL instanceof java.lang.reflect.ParameterizedType ? ((java.lang.reflect.ParameterizedType) typeL).getActualTypeArguments()[0] : java.lang.Object.class;
    }

    public static java.lang.reflect.Type i(java.lang.reflect.Type type, java.lang.Class<?> cls, java.lang.Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            java.lang.Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i5 = 0; i5 < length; i5++) {
                if (interfaces[i5] == cls2) {
                    return cls.getGenericInterfaces()[i5];
                }
                if (cls2.isAssignableFrom(interfaces[i5])) {
                    return i(cls.getGenericInterfaces()[i5], interfaces[i5], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != java.lang.Object.class) {
                java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return i(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static java.lang.reflect.Type[] j(java.lang.reflect.Type type, java.lang.Class<?> cls) {
        if (type == java.util.Properties.class) {
            return new java.lang.reflect.Type[]{java.lang.String.class, java.lang.String.class};
        }
        java.lang.reflect.Type typeL = l(type, cls, java.util.Map.class);
        return typeL instanceof java.lang.reflect.ParameterizedType ? ((java.lang.reflect.ParameterizedType) typeL).getActualTypeArguments() : new java.lang.reflect.Type[]{java.lang.Object.class, java.lang.Object.class};
    }

    public static java.lang.Class<?> k(java.lang.reflect.Type type) {
        if (type instanceof java.lang.Class) {
            return (java.lang.Class) type;
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            java.lang.reflect.Type rawType = ((java.lang.reflect.ParameterizedType) type).getRawType();
            u2.a.a(rawType instanceof java.lang.Class);
            return (java.lang.Class) rawType;
        }
        if (type instanceof java.lang.reflect.GenericArrayType) {
            return java.lang.reflect.Array.newInstance(k(((java.lang.reflect.GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof java.lang.reflect.TypeVariable) {
            return java.lang.Object.class;
        }
        if (type instanceof java.lang.reflect.WildcardType) {
            return k(((java.lang.reflect.WildcardType) type).getUpperBounds()[0]);
        }
        throw new java.lang.IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static java.lang.reflect.Type l(java.lang.reflect.Type type, java.lang.Class<?> cls, java.lang.Class<?> cls2) {
        u2.a.a(cls2.isAssignableFrom(cls));
        return p(type, cls, i(type, cls, cls2));
    }

    public static int m(java.lang.Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static int n(java.lang.Object[] objArr, java.lang.Object obj) {
        for (int i5 = 0; i5 < objArr.length; i5++) {
            if (obj.equals(objArr[i5])) {
                return i5;
            }
        }
        throw new java.util.NoSuchElementException();
    }

    public static java.lang.reflect.ParameterizedType o(java.lang.reflect.Type type, java.lang.reflect.Type type2, java.lang.reflect.Type... typeArr) {
        return new u2.b.C0086b(type, type2, typeArr);
    }

    public static java.lang.reflect.Type p(java.lang.reflect.Type type, java.lang.Class<?> cls, java.lang.reflect.Type type2) {
        java.lang.reflect.Type type3;
        java.lang.reflect.WildcardType wildcardType;
        java.lang.reflect.Type typeP;
        java.lang.reflect.Type type4 = type2;
        while (type4 instanceof java.lang.reflect.TypeVariable) {
            java.lang.reflect.TypeVariable typeVariable = (java.lang.reflect.TypeVariable) type4;
            java.lang.reflect.Type typeQ = q(type, cls, typeVariable);
            if (typeQ == typeVariable) {
                return typeQ;
            }
            type4 = typeQ;
        }
        if (type4 instanceof java.lang.Class) {
            java.lang.Class cls2 = (java.lang.Class) type4;
            if (cls2.isArray()) {
                java.lang.Class<?> componentType = cls2.getComponentType();
                java.lang.reflect.Type typeP2 = p(type, cls, componentType);
                return componentType == typeP2 ? cls2 : a(typeP2);
            }
        }
        if (type4 instanceof java.lang.reflect.GenericArrayType) {
            java.lang.reflect.GenericArrayType genericArrayType = (java.lang.reflect.GenericArrayType) type4;
            java.lang.reflect.Type genericComponentType = genericArrayType.getGenericComponentType();
            java.lang.reflect.Type typeP3 = p(type, cls, genericComponentType);
            return genericComponentType == typeP3 ? genericArrayType : a(typeP3);
        }
        if (type4 instanceof java.lang.reflect.ParameterizedType) {
            java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type4;
            java.lang.reflect.Type ownerType = parameterizedType.getOwnerType();
            java.lang.reflect.Type typeP4 = p(type, cls, ownerType);
            boolean z4 = typeP4 != ownerType;
            java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i5 = 0; i5 < length; i5++) {
                java.lang.reflect.Type typeP5 = p(type, cls, actualTypeArguments[i5]);
                if (typeP5 != actualTypeArguments[i5]) {
                    if (!z4) {
                        actualTypeArguments = (java.lang.reflect.Type[]) actualTypeArguments.clone();
                        z4 = true;
                    }
                    actualTypeArguments[i5] = typeP5;
                }
            }
            return z4 ? o(typeP4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        if (type4 instanceof java.lang.reflect.WildcardType) {
            wildcardType = (java.lang.reflect.WildcardType) type4;
            java.lang.reflect.Type[] lowerBounds = wildcardType.getLowerBounds();
            java.lang.reflect.Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                java.lang.reflect.Type typeP6 = p(type, cls, lowerBounds[0]);
                if (typeP6 != lowerBounds[0]) {
                    type3 = type4;
                    type3 = wildcardType;
                    return s(typeP6);
                }
            } else if (upperBounds.length == 1 && (typeP = p(type, cls, upperBounds[0])) != upperBounds[0]) {
                type3 = type4;
                type3 = wildcardType;
                type3 = wildcardType;
                return r(typeP);
            }
        }
        type3 = type4;
        type3 = wildcardType;
        type3 = wildcardType;
        type3 = type4;
        type3 = wildcardType;
        type3 = type4;
        type3 = wildcardType;
        type3 = type4;
        return type3;
    }

    public static java.lang.reflect.Type q(java.lang.reflect.Type type, java.lang.Class<?> cls, java.lang.reflect.TypeVariable<?> typeVariable) {
        java.lang.Class<?> clsD = d(typeVariable);
        if (clsD == null) {
            return typeVariable;
        }
        java.lang.reflect.Type typeI = i(type, cls, clsD);
        if (!(typeI instanceof java.lang.reflect.ParameterizedType)) {
            return typeVariable;
        }
        return ((java.lang.reflect.ParameterizedType) typeI).getActualTypeArguments()[n(clsD.getTypeParameters(), typeVariable)];
    }

    public static java.lang.reflect.WildcardType r(java.lang.reflect.Type type) {
        return new u2.b.c(new java.lang.reflect.Type[]{type}, f6294a);
    }

    public static java.lang.reflect.WildcardType s(java.lang.reflect.Type type) {
        return new u2.b.c(new java.lang.reflect.Type[]{java.lang.Object.class}, new java.lang.reflect.Type[]{type});
    }

    public static java.lang.String t(java.lang.reflect.Type type) {
        return type instanceof java.lang.Class ? ((java.lang.Class) type).getName() : type.toString();
    }
}
