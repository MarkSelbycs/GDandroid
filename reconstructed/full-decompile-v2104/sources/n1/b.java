package n1;

/* JADX INFO: compiled from: BasicType.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum b {
    BYTE,
    SHORT,
    INT,
    INTEGER,
    LONG,
    DOUBLE,
    FLOAT,
    BOOLEAN,
    CHAR,
    CHARACTER,
    STRING;


    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<?>, java.lang.Class<?>> f5246q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<?>, java.lang.Class<?>> f5247r;

    static {
        a2.u uVar = new a2.u(8);
        f5246q = uVar;
        f5247r = new a2.u(8);
        uVar.put(java.lang.Boolean.class, java.lang.Boolean.TYPE);
        uVar.put(java.lang.Byte.class, java.lang.Byte.TYPE);
        uVar.put(java.lang.Character.class, java.lang.Character.TYPE);
        uVar.put(java.lang.Double.class, java.lang.Double.TYPE);
        uVar.put(java.lang.Float.class, java.lang.Float.TYPE);
        uVar.put(java.lang.Integer.class, java.lang.Integer.TYPE);
        uVar.put(java.lang.Long.class, java.lang.Long.TYPE);
        uVar.put(java.lang.Short.class, java.lang.Short.TYPE);
        java.util.Iterator it = uVar.entrySet().iterator();
        while (it.hasNext()) {
            java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
            f5247r.put((java.lang.Class<?>) entry.getValue(), (java.lang.Class<?>) entry.getKey());
        }
    }

    public static java.lang.Class<?> b(java.lang.Class<?> cls) {
        java.lang.Class<?> cls2;
        return (cls == null || cls.isPrimitive() || (cls2 = f5246q.get(cls)) == null) ? cls : cls2;
    }
}
