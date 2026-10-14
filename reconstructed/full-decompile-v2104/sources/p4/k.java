package p4;

/* JADX INFO: compiled from: CipherPool.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.LinkedList<javax.crypto.Cipher> f5600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5602c;

    public k() {
        this(java.lang.Runtime.getRuntime().availableProcessors());
    }

    public synchronized void a(javax.crypto.Cipher cipher) {
        int i5 = this.f5602c;
        if (i5 < this.f5601b) {
            this.f5602c = i5 + 1;
            this.f5600a.offer(cipher);
        }
    }

    public synchronized javax.crypto.Cipher b() {
        javax.crypto.Cipher cipherPoll;
        cipherPoll = this.f5600a.poll();
        if (cipherPoll == null) {
            this.f5602c = 0;
        } else {
            this.f5602c--;
        }
        return cipherPoll;
    }

    public k(int i5) {
        this.f5602c = 0;
        if (i5 < 0) {
            throw new java.lang.IllegalArgumentException("Pool size must be >= 0");
        }
        this.f5601b = i5;
        this.f5600a = new java.util.LinkedList<>();
    }
}
