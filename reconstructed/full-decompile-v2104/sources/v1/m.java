package v1;

/* JADX INFO: compiled from: ParameterizedTypeImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m implements java.lang.reflect.ParameterizedType, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.reflect.Type[] f6416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.reflect.Type f6417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.reflect.Type f6418c;

    public m(java.lang.reflect.Type[] typeArr, java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        this.f6416a = typeArr;
        this.f6417b = type;
        this.f6418c = type2;
    }

    public static java.lang.StringBuilder b(java.lang.StringBuilder sb, java.lang.String str, java.lang.reflect.Type... typeArr) {
        if (e2.c.v(typeArr)) {
            boolean z4 = true;
            for (java.lang.reflect.Type type : typeArr) {
                if (z4) {
                    z4 = false;
                } else {
                    sb.append(str);
                }
                sb.append(type instanceof java.lang.Class ? ((java.lang.Class) type).getName() : e2.b0.j0(type));
            }
        }
        return sb;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type[] getActualTypeArguments() {
        return this.f6416a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type getOwnerType() {
        return this.f6417b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type getRawType() {
        return this.f6418c;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.reflect.Type type = this.f6417b;
        java.lang.Class cls = (java.lang.Class) this.f6418c;
        if (type == null) {
            sb.append(cls.getName());
        } else {
            if (type instanceof java.lang.Class) {
                sb.append(((java.lang.Class) type).getName());
            } else {
                sb.append(type.toString());
            }
            sb.append('.');
            sb.append(cls.getSimpleName());
        }
        sb.append('<');
        b(sb, ", ", this.f6416a).append('>');
        return sb.toString();
    }
}
