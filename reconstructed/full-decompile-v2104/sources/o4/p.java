package o4;

/* JADX INFO: compiled from: TimedMessageID.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p extends o4.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f5439b;

    public p(int i5) {
        super(i5);
        this.f5439b = java.lang.System.nanoTime();
    }

    public long b() {
        return this.f5439b;
    }

    @Override // o4.l
    public java.lang.String toString() {
        return "TimedMessageID{msgID=" + a() + ",creationNanoTime=" + this.f5439b + "}";
    }
}
