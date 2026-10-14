package u1;

/* JADX INFO: compiled from: StreamCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends u1.a<java.io.InputStream, java.io.OutputStream> {
    public b(int i5, long j5, t1.f fVar) {
        super(i5, j5, fVar);
    }

    public long b(java.io.InputStream inputStream, java.io.OutputStream outputStream) {
        v1.e.q(inputStream, "InputStream is null !", new java.lang.Object[0]);
        v1.e.q(outputStream, "OutputStream is null !", new java.lang.Object[0]);
        t1.f fVar = this.f6292c;
        if (fVar != null) {
            fVar.start();
        }
        try {
            long jC = c(inputStream, outputStream, new byte[a(this.f6291b)], fVar);
            outputStream.flush();
            if (fVar != null) {
                fVar.b();
            }
            return jC;
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }

    public final long c(java.io.InputStream inputStream, java.io.OutputStream outputStream, byte[] bArr, t1.f fVar) throws java.io.IOException {
        int i5;
        long j5 = this.f6291b;
        if (j5 <= 0) {
            j5 = Long.MAX_VALUE;
        }
        long j6 = 0;
        while (j5 > 0 && (i5 = inputStream.read(bArr, 0, a(j5))) >= 0) {
            outputStream.write(bArr, 0, i5);
            if (this.f6293d) {
                outputStream.flush();
            }
            long j7 = i5;
            j5 -= j7;
            j6 += j7;
            if (fVar != null) {
                fVar.a(this.f6291b, j6);
            }
        }
        return j6;
    }
}
