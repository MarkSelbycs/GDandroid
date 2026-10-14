package g4;

/* JADX INFO: compiled from: FrameReader.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface b extends java.io.Closeable {

    /* JADX INFO: compiled from: FrameReader.java */
    public interface a {
        void a(int i5, g4.a aVar);

        void b(int i5, long j5);

        void d(int i5, int i6, java.util.List<g4.f> list) throws java.io.IOException;

        void g(boolean z4, int i5, int i6);

        void h(int i5, g4.a aVar, okio.ByteString byteString);

        void i();

        void j(boolean z4, int i5, okio.BufferedSource bufferedSource, int i6) throws java.io.IOException;

        void k(boolean z4, g4.n nVar);

        void l(int i5, int i6, int i7, boolean z4);

        void m(boolean z4, boolean z5, int i5, int i6, java.util.List<g4.f> list, g4.g gVar);
    }

    void N() throws java.io.IOException;

    boolean W(g4.b.a aVar) throws java.io.IOException;
}
