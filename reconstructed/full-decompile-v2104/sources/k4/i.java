package k4;

/* JADX INFO: compiled from: MessageException.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends java.io.IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4892a;

    public i(java.lang.String str) {
        super(str);
    }

    public i(java.lang.String str, int i5) {
        super(str);
        this.f4892a = i5;
    }

    public i(java.lang.String str, int i5, java.lang.Throwable th) {
        super(str, th);
        this.f4892a = i5;
    }
}
