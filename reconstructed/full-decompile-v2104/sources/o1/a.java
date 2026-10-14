package o1;

/* JADX INFO: compiled from: ArrayConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends n1.a<java.lang.Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f5285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Class<?> f5286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5287c;

    public a(java.lang.Class<?> cls) {
        this(cls, false);
    }

    @Override // n1.a
    public java.lang.Object c(java.lang.Object obj) {
        return obj.getClass().isArray() ? h(obj) : q(obj);
    }

    @Override // n1.a
    public java.lang.Class<java.lang.Object> f() {
        return this.f5285a;
    }

    public final java.lang.Object h(java.lang.Object obj) {
        if (e2.c.o(obj) == this.f5286b) {
            return obj;
        }
        int iY = e2.c.y(obj);
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(this.f5286b, iY);
        for (int i5 = 0; i5 < iY; i5++) {
            java.lang.reflect.Array.set(objNewInstance, i5, j(java.lang.reflect.Array.get(obj, i5)));
        }
        return objNewInstance;
    }

    public final java.lang.Object j(java.lang.Object obj) {
        return n1.c.f(this.f5286b, obj, null, this.f5287c);
    }

    public final java.lang.Object q(java.lang.Object obj) {
        if (obj instanceof java.lang.CharSequence) {
            java.lang.Class<?> cls = this.f5286b;
            if (cls == java.lang.Character.TYPE || cls == java.lang.Character.class) {
                return h(obj.toString().toCharArray());
            }
            if (cls != java.lang.Byte.TYPE) {
                return h(b2.c.D(obj.toString(), ','));
            }
            java.lang.String string = obj.toString();
            return k1.b.b(string) ? k1.b.a(obj.toString()) : string.getBytes();
        }
        int i5 = 0;
        if (obj instanceof java.util.List) {
            java.util.List list = (java.util.List) obj;
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(this.f5286b, list.size());
            while (i5 < list.size()) {
                java.lang.reflect.Array.set(objNewInstance, i5, j(list.get(i5)));
                i5++;
            }
            return objNewInstance;
        }
        if (obj instanceof java.util.Collection) {
            java.util.Collection collection = (java.util.Collection) obj;
            java.lang.Object objNewInstance2 = java.lang.reflect.Array.newInstance(this.f5286b, collection.size());
            java.util.Iterator it = collection.iterator();
            while (it.hasNext()) {
                java.lang.reflect.Array.set(objNewInstance2, i5, j(it.next()));
                i5++;
            }
            return objNewInstance2;
        }
        if (obj instanceof java.lang.Iterable) {
            java.util.List listA = l1.f.a((java.lang.Iterable) obj);
            java.lang.Object objNewInstance3 = java.lang.reflect.Array.newInstance(this.f5286b, listA.size());
            while (i5 < listA.size()) {
                java.lang.reflect.Array.set(objNewInstance3, i5, j(listA.get(i5)));
                i5++;
            }
            return objNewInstance3;
        }
        if (!(obj instanceof java.util.Iterator)) {
            if ((obj instanceof java.lang.Number) && java.lang.Byte.TYPE == this.f5286b) {
                return e2.e.n((java.lang.Number) obj);
            }
            return ((obj instanceof java.io.Serializable) && java.lang.Byte.TYPE == this.f5286b) ? e2.p.k(obj) : u(obj);
        }
        java.util.List listB = l1.f.b((java.util.Iterator) obj);
        java.lang.Object objNewInstance4 = java.lang.reflect.Array.newInstance(this.f5286b, listB.size());
        while (i5 < listB.size()) {
            java.lang.reflect.Array.set(objNewInstance4, i5, j(listB.get(i5)));
            i5++;
        }
        return objNewInstance4;
    }

    public final java.lang.Object[] u(java.lang.Object obj) {
        java.lang.Object[] objArrB = e2.c.B(this.f5286b, 1);
        objArrB[0] = j(obj);
        return objArrB;
    }

    public a(java.lang.Class<?> cls, boolean z4) {
        java.lang.Class cls2 = cls == null ? java.lang.Object[].class : cls;
        if (cls2.isArray()) {
            this.f5285a = cls2;
            this.f5286b = cls2.getComponentType();
        } else {
            this.f5286b = cls2;
            this.f5285a = e2.c.n(cls2);
        }
        this.f5287c = z4;
    }
}
