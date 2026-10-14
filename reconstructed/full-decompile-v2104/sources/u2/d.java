package u2;

/* JADX INFO: compiled from: Excluder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d implements s2.t, java.lang.Cloneable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final u2.d f6325g = new u2.d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6329d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f6326a = -1.0d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6327b = 136;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6328c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.List<s2.a> f6330e = java.util.Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.List<s2.a> f6331f = java.util.Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Excluder.java */
    public class a<T> extends s2.s<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public s2.s<T> f6332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f6333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f6334c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ s2.e f6335d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ x2.a f6336e;

        public a(boolean z4, boolean z5, s2.e eVar, x2.a aVar) {
            this.f6333b = z4;
            this.f6334c = z5;
            this.f6335d = eVar;
            this.f6336e = aVar;
        }

        @Override // s2.s
        public T b(y2.a aVar) throws java.io.IOException {
            if (!this.f6333b) {
                return e().b(aVar);
            }
            aVar.m0();
            return null;
        }

        @Override // s2.s
        public void d(y2.c cVar, T t5) throws java.io.IOException {
            if (this.f6334c) {
                cVar.u();
            } else {
                e().d(cVar, t5);
            }
        }

        public final s2.s<T> e() {
            s2.s<T> sVar = this.f6332a;
            if (sVar != null) {
                return sVar;
            }
            s2.s<T> sVarH = this.f6335d.h(u2.d.this, this.f6336e);
            this.f6332a = sVarH;
            return sVarH;
        }
    }

    @Override // s2.t
    public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
        java.lang.Class<? super T> clsC = aVar.c();
        boolean zD = d(clsC, true);
        boolean zD2 = d(clsC, false);
        if (zD || zD2) {
            return new u2.d.a(zD2, zD, eVar, aVar);
        }
        return null;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public u2.d clone() {
        try {
            return (u2.d) super.clone();
        } catch (java.lang.CloneNotSupportedException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    public boolean d(java.lang.Class<?> cls, boolean z4) {
        if (this.f6326a != -1.0d && !m((t2.d) cls.getAnnotation(t2.d.class), (t2.e) cls.getAnnotation(t2.e.class))) {
            return true;
        }
        if ((!this.f6328c && g(cls)) || f(cls)) {
            return true;
        }
        java.util.Iterator<s2.a> it = (z4 ? this.f6330e : this.f6331f).iterator();
        while (it.hasNext()) {
            if (it.next().a(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean e(java.lang.reflect.Field field, boolean z4) {
        t2.a aVar;
        if ((this.f6327b & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f6326a != -1.0d && !m((t2.d) field.getAnnotation(t2.d.class), (t2.e) field.getAnnotation(t2.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f6329d && ((aVar = (t2.a) field.getAnnotation(t2.a.class)) == null || (!z4 ? aVar.deserialize() : aVar.serialize()))) {
            return true;
        }
        if ((!this.f6328c && g(field.getType())) || f(field.getType())) {
            return true;
        }
        java.util.List<s2.a> list = z4 ? this.f6330e : this.f6331f;
        if (list.isEmpty()) {
            return false;
        }
        s2.b bVar = new s2.b(field);
        java.util.Iterator<s2.a> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().b(bVar)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(java.lang.Class<?> cls) {
        return !java.lang.Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public final boolean g(java.lang.Class<?> cls) {
        return cls.isMemberClass() && !h(cls);
    }

    public final boolean h(java.lang.Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public final boolean j(t2.d dVar) {
        return dVar == null || dVar.value() <= this.f6326a;
    }

    public final boolean k(t2.e eVar) {
        return eVar == null || eVar.value() > this.f6326a;
    }

    public final boolean m(t2.d dVar, t2.e eVar) {
        return j(dVar) && k(eVar);
    }
}
