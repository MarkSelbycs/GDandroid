package g4;

/* JADX INFO: compiled from: StreamResetException.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p extends java.io.IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g4.a f4536a;

    public p(g4.a aVar) {
        super("stream was reset: " + aVar);
        this.f4536a = aVar;
    }
}
