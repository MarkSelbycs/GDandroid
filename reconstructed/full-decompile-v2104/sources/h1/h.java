package h1;

/* JADX INFO: compiled from: BeanUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {
    public static java.util.Map<java.lang.String, java.lang.Object> c(java.lang.Object obj, java.util.Map<java.lang.String, java.lang.Object> map, i1.i iVar) {
        if (obj == null) {
            return null;
        }
        return (java.util.Map) i1.c.c(obj, map, iVar).b();
    }

    public static java.util.Map<java.lang.String, java.lang.Object> d(java.lang.Object obj, java.util.Map<java.lang.String, java.lang.Object> map, boolean z4, v1.g<java.lang.String> gVar) {
        if (obj == null) {
            return null;
        }
        return (java.util.Map) i1.c.c(obj, map, i1.i.e().y(z4).q(gVar)).b();
    }

    public static java.util.Map<java.lang.String, java.lang.Object> e(java.lang.Object obj, java.lang.String... strArr) {
        int length;
        v1.g gVar;
        if (e2.c.v(strArr)) {
            length = strArr.length;
            final java.util.HashSet hashSetL = l1.c.l(false, strArr);
            gVar = new v1.g() { // from class: h1.f
                @Override // v1.g
                public final java.lang.Object a(java.lang.Object obj2) {
                    return h1.h.l(hashSetL, (java.lang.String) obj2);
                }
            };
        } else {
            length = 16;
            gVar = null;
        }
        return d(obj, new java.util.LinkedHashMap(length, 1.0f), false, gVar);
    }

    public static h1.b f(java.lang.Class<?> cls) {
        return h1.d.INSTANCE.e(cls, new h1.g(cls));
    }

    public static boolean g(java.lang.Class<?> cls) {
        if (e2.k.m(cls)) {
            for (java.lang.reflect.Method method : cls.getMethods()) {
                if (method.getParameterCount() == 0) {
                    java.lang.String name = method.getName();
                    if ((name.startsWith("get") || name.startsWith("is")) && !"getClass".equals(name)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean h(java.lang.Class<?> cls) {
        if (e2.k.m(cls)) {
            for (java.lang.reflect.Field field : cls.getFields()) {
                if (e2.n.d(field) && !e2.n.e(field)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean i(java.lang.Class<?> cls) {
        if (e2.k.m(cls)) {
            for (java.lang.reflect.Method method : cls.getMethods()) {
                if (method.getParameterCount() == 1 && method.getName().startsWith("set")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean j(java.lang.Class<?> cls) {
        return i(cls) || h(cls);
    }

    public static boolean k(java.lang.Class<?> cls) {
        return g(cls) || h(cls);
    }

    public static /* synthetic */ java.lang.String l(java.util.Set set, java.lang.String str) {
        if (set.contains(str)) {
            return str;
        }
        return null;
    }

    public static /* synthetic */ h1.b m(java.lang.Class cls) throws java.lang.Exception {
        return new h1.b(cls);
    }
}
