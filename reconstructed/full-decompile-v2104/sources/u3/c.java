package u3;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c extends u3.d {
    private volatile u3.c _immediate;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.os.Handler f6374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f6375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final u3.c f6377f;

    public c(android.os.Handler handler, java.lang.String str, boolean z4) {
        super(null);
        this.f6374c = handler;
        this.f6375d = str;
        this.f6376e = z4;
        this._immediate = z4 ? this : null;
        u3.c cVar = this._immediate;
        if (cVar == null) {
            cVar = new u3.c(handler, str, true);
            this._immediate = cVar;
        }
        this.f6377f = cVar;
    }

    @Override // t3.r1
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public u3.c r() {
        return this.f6377f;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof u3.c) && ((u3.c) obj).f6374c == this.f6374c;
    }

    public int hashCode() {
        return java.lang.System.identityHashCode(this.f6374c);
    }

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        if (this.f6374c.post(runnable)) {
            return;
        }
        z(gVar, runnable);
    }

    @Override // t3.b0
    public boolean n(d3.g gVar) {
        return (this.f6376e && m3.k.a(android.os.Looper.myLooper(), this.f6374c.getLooper())) ? false : true;
    }

    @Override // t3.r1, t3.b0
    public java.lang.String toString() {
        java.lang.String strS = s();
        if (strS != null) {
            return strS;
        }
        java.lang.String string = this.f6375d;
        if (string == null) {
            string = this.f6374c.toString();
        }
        if (!this.f6376e) {
            return string;
        }
        return string + ".immediate";
    }

    public final void z(d3.g gVar, java.lang.Runnable runnable) {
        t3.l1.c(gVar, new java.util.concurrent.CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        t3.q0.b().i(gVar, runnable);
    }

    public /* synthetic */ c(android.os.Handler handler, java.lang.String str, int i5, m3.g gVar) {
        this(handler, (i5 & 2) != 0 ? null : str);
    }

    public c(android.os.Handler handler, java.lang.String str) {
        this(handler, str, false);
    }
}
