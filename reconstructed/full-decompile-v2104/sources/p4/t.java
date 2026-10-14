package p4;

/* JADX INFO: compiled from: SNMPv3SecurityModel.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class t implements p4.w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.k f5622a;

    public static byte[] i(l4.b bVar) throws java.io.IOException {
        bVar.mark(16);
        int iC = l4.a.c(bVar, new l4.a.C0066a()) + (((int) bVar.e()) - ((int) bVar.e()));
        byte[] bArr = new byte[iC];
        bVar.reset();
        int iAvailable = bVar.available();
        int i5 = 0;
        while (i5 < iC && iAvailable > 0) {
            int i6 = bVar.read(bArr, i5, iC - i5);
            if (i6 < 0) {
                break;
            }
            i5 += i6;
        }
        return bArr;
    }

    public static byte[] j(r4.g gVar, byte[] bArr, byte[] bArr2, p4.y yVar) throws java.io.IOException {
        int iF = gVar.f() + bArr2.length + yVar.f() + bArr.length;
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(l4.a.u(iF) + iF + 1);
        l4.a.m(byteArrayOutputStream, 48, iF);
        gVar.e(byteArrayOutputStream);
        byteArrayOutputStream.write(bArr2);
        yVar.e(byteArrayOutputStream);
        byteArrayOutputStream.write(bArr);
        yVar.b(gVar.f() + 1 + l4.a.u(iF) + bArr2.length);
        return byteArrayOutputStream.toByteArray();
    }
}
