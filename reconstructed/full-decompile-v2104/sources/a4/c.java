package a4;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c extends a4.f {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a4.c f153i = new a4.c();

    public c() {
        super(a4.l.f166c, a4.l.f167d, a4.l.f168e, a4.l.f164a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new java.lang.UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // t3.b0
    public java.lang.String toString() {
        return "Dispatchers.Default";
    }
}
