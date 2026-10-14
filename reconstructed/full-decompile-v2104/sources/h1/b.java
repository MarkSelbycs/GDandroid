package h1;

/* JADX INFO: compiled from: BeanDesc.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f4558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<java.lang.String, h1.j> f4559b = new java.util.LinkedHashMap();

    public b(java.lang.Class<?> cls) {
        v1.e.p(cls);
        this.f4558a = cls;
        f();
    }

    public final h1.j b(java.lang.reflect.Field field, java.lang.reflect.Method[] methodArr) {
        h1.j jVarC = c(field, methodArr, false);
        if (jVarC.f4568b == null || jVarC.f4569c == null) {
            h1.j jVarC2 = c(field, methodArr, true);
            if (jVarC.f4568b == null) {
                jVarC.f4568b = jVarC2.f4568b;
            }
            if (jVarC.f4569c == null) {
                jVarC.f4569c = jVarC2.f4569c;
            }
        }
        return jVarC;
    }

    public final h1.j c(java.lang.reflect.Field field, java.lang.reflect.Method[] methodArr, boolean z4) {
        java.lang.String name = field.getName();
        java.lang.Class<?> type = field.getType();
        boolean zA = e2.d.a(type);
        java.lang.reflect.Method method = null;
        java.lang.reflect.Method method2 = null;
        for (java.lang.reflect.Method method3 : methodArr) {
            java.lang.String name2 = method3.getName();
            if (method3.getParameterCount() == 0) {
                if (h(name2, name, zA, z4)) {
                    method = method3;
                }
            } else if (j(name2, name, zA, z4) && type.isAssignableFrom(method3.getParameterTypes()[0])) {
                method2 = method3;
            }
            if (method != null && method2 != null) {
                break;
            }
        }
        return new h1.j(field, method, method2);
    }

    public java.util.Map<java.lang.String, h1.j> e(boolean z4) {
        return z4 ? new a2.c(1.0f, this.f4559b) : this.f4559b;
    }

    public final h1.b f() {
        java.lang.reflect.Method[] methodArrQ = e2.x.q(this.f4558a, new v1.i() { // from class: h1.a
            @Override // v1.i
            public final boolean accept(java.lang.Object obj) {
                return e2.x.y((java.lang.reflect.Method) obj);
            }
        });
        for (java.lang.reflect.Field field : e2.x.k(this.f4558a)) {
            if (!e2.n.e(field) && !e2.x.z(field)) {
                h1.j jVarB = b(field, methodArrQ);
                this.f4559b.putIfAbsent(jVarB.e(), jVarB);
            }
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        if (("is" + r7).equals(r4) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(java.lang.String str, java.lang.String str2, boolean z4, boolean z5) {
        java.lang.String strA0;
        if (z5) {
            str = str.toLowerCase();
            str2 = str2.toLowerCase();
            strA0 = str2;
        } else {
            strA0 = b2.c.a0(str2);
        }
        if (z4) {
            if (str2.startsWith("is")) {
                if (!str.equals(str2)) {
                    if (!("get" + strA0).equals(str)) {
                    }
                }
                return true;
            }
            if (("is" + strA0).equals(str)) {
                return true;
            }
        }
        return ("get" + strA0).equals(str);
    }

    public final boolean j(java.lang.String str, java.lang.String str2, boolean z4, boolean z5) {
        java.lang.String strA0;
        if (z5) {
            str = str.toLowerCase();
            str2 = str2.toLowerCase();
            strA0 = str2;
        } else {
            strA0 = b2.c.a0(str2);
        }
        if (!str.startsWith("set")) {
            return false;
        }
        if (z4 && str2.startsWith("is")) {
            if (("set" + b2.c.z(str2, "is")).equals(str)) {
                return true;
            }
            if (("set" + strA0).equals(str)) {
                return true;
            }
        }
        return ("set" + strA0).equals(str);
    }
}
