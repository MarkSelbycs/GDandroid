package m3;

/* JADX INFO: compiled from: CallableReference.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c implements q3.a, java.io.Serializable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.lang.Object f5172g = m3.c.a.f5179a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient q3.a f5173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Object f5174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Class f5175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f5176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.String f5177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5178f;

    /* JADX INFO: compiled from: CallableReference.java */
    public static class a implements java.io.Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final m3.c.a f5179a = new m3.c.a();
    }

    public c() {
        this(f5172g);
    }

    public java.lang.String D() {
        return this.f5176d;
    }

    public q3.c F() {
        java.lang.Class cls = this.f5175c;
        if (cls == null) {
            return null;
        }
        return this.f5178f ? m3.r.c(cls) : m3.r.b(cls);
    }

    public java.lang.String H() {
        return this.f5177e;
    }

    public q3.a b() {
        q3.a aVar = this.f5173a;
        if (aVar != null) {
            return aVar;
        }
        q3.a aVarF = f();
        this.f5173a = aVarF;
        return aVarF;
    }

    public abstract q3.a f();

    public java.lang.Object y() {
        return this.f5174b;
    }

    public c(java.lang.Object obj) {
        this(obj, null, null, null, false);
    }

    public c(java.lang.Object obj, java.lang.Class cls, java.lang.String str, java.lang.String str2, boolean z4) {
        this.f5174b = obj;
        this.f5175c = cls;
        this.f5176d = str;
        this.f5177e = str2;
        this.f5178f = z4;
    }
}
