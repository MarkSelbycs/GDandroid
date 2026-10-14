package p4;

/* JADX INFO: compiled from: ByteArrayWindow.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f5593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5595c;

    public j(byte[] bArr, int i5, int i6) {
        this.f5593a = bArr;
        this.f5594b = i5;
        this.f5595c = i6;
    }

    public boolean a(p4.j jVar, int i5) {
        if (jVar.f5595c < i5 || this.f5595c < i5) {
            return false;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            if (this.f5593a[this.f5594b + i6] != jVar.f5593a[jVar.f5594b + i6]) {
                return false;
            }
        }
        return true;
    }

    public int b() {
        return this.f5594b;
    }

    public byte[] c() {
        return this.f5593a;
    }

    public void d(int i5, byte b5) {
        if (i5 >= this.f5595c) {
            throw new java.lang.IndexOutOfBoundsException("" + i5 + " >= " + this.f5595c);
        }
        if (i5 >= 0) {
            this.f5593a[i5 + this.f5594b] = b5;
            return;
        }
        throw new java.lang.IndexOutOfBoundsException("" + i5);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof p4.j)) {
            return false;
        }
        p4.j jVar = (p4.j) obj;
        if (jVar.f5595c != this.f5595c) {
            return false;
        }
        for (int i5 = 0; i5 < this.f5595c; i5++) {
            if (jVar.f5593a[i5] != this.f5593a[i5]) {
                return false;
            }
        }
        return true;
    }
}
