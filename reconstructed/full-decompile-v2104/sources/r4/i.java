package r4;

/* JADX INFO: compiled from: Null.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends r4.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final r4.i f5985e = new r4.i(com.alibaba.fastjson.asm.Opcodes.IOR);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final r4.i f5986f = new r4.i(129);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final r4.i f5987g = new r4.i(130);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final r4.i f5988h = new r4.i(5);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5989d = 5;

    public i() {
    }

    public static boolean H(int i5) {
        switch (i5) {
            case com.alibaba.fastjson.asm.Opcodes.IOR /* 128 */:
            case 129:
            case 130:
                return true;
            default:
                return false;
        }
    }

    public void I(int i5) {
        if (i5 == 5 || H(i5)) {
            this.f5989d = i5;
            return;
        }
        throw new java.lang.IllegalArgumentException("Syntax " + i5 + " is incompatible with Null type");
    }

    @Override // r4.a, r4.u
    public int c() {
        return this.f5989d;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.i(this.f5989d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.m(outputStream, (byte) c(), 0);
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.i) && ((r4.i) obj).c() == c();
    }

    @Override // r4.a, l4.d
    public int f() {
        return 2;
    }

    @Override // r4.a
    public int hashCode() {
        return c();
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        l4.a.h(bVar, c0066a);
        this.f5989d = c0066a.a() & 255;
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        switch (c()) {
            case com.alibaba.fastjson.asm.Opcodes.IOR /* 128 */:
                return "noSuchObject";
            case 129:
                return "noSuchInstance";
            case 130:
                return "endOfMibView";
            default:
                return "Null";
        }
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        return c() - uVar.c();
    }

    public i(int i5) {
        I(i5);
    }
}
