package f3;

/* JADX INFO: compiled from: DebugMetadata.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f3.i f4234a = new f3.i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f3.i.a f4235b = new f3.i.a(null, null, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f3.i.a f4236c;

    /* JADX INFO: compiled from: DebugMetadata.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.reflect.Method f4237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.reflect.Method f4238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.reflect.Method f4239c;

        public a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3) {
            this.f4237a = method;
            this.f4238b = method2;
            this.f4239c = method3;
        }
    }

    public final f3.i.a a(f3.a aVar) {
        try {
            f3.i.a aVar2 = new f3.i.a(java.lang.Class.class.getDeclaredMethod("getModule", new java.lang.Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new java.lang.Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new java.lang.Class[0]));
            f4236c = aVar2;
            return aVar2;
        } catch (java.lang.Exception unused) {
            f3.i.a aVar3 = f4235b;
            f4236c = aVar3;
            return aVar3;
        }
    }

    public final java.lang.String b(f3.a aVar) {
        m3.k.e(aVar, "continuation");
        f3.i.a aVarA = f4236c;
        if (aVarA == null) {
            aVarA = a(aVar);
        }
        if (aVarA == f4235b) {
            return null;
        }
        java.lang.reflect.Method method = aVarA.f4237a;
        java.lang.Object objInvoke = method != null ? method.invoke(aVar.getClass(), new java.lang.Object[0]) : null;
        if (objInvoke == null) {
            return null;
        }
        java.lang.reflect.Method method2 = aVarA.f4238b;
        java.lang.Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, new java.lang.Object[0]) : null;
        if (objInvoke2 == null) {
            return null;
        }
        java.lang.reflect.Method method3 = aVarA.f4239c;
        java.lang.Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new java.lang.Object[0]) : null;
        if (objInvoke3 instanceof java.lang.String) {
            return (java.lang.String) objInvoke3;
        }
        return null;
    }
}
