package g4;

/* JADX INFO: compiled from: FrameWriter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface c extends java.io.Closeable {
    void A(int i5, g4.a aVar, byte[] bArr) throws java.io.IOException;

    void L(g4.n nVar) throws java.io.IOException;

    void a(int i5, g4.a aVar) throws java.io.IOException;

    void b(int i5, long j5) throws java.io.IOException;

    void d(int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException;

    int e0();

    void f0(boolean z4, boolean z5, int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException;

    void flush() throws java.io.IOException;

    void g(boolean z4, int i5, int i6) throws java.io.IOException;

    void p(boolean z4, int i5, okio.Buffer buffer, int i6) throws java.io.IOException;

    void p0() throws java.io.IOException;

    void t0(g4.n nVar) throws java.io.IOException;
}
