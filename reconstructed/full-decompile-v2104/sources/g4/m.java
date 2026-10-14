package g4;

/* JADX INFO: compiled from: PushObserver.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g4.m f4522a = new g4.m.a();

    /* JADX INFO: compiled from: PushObserver.java */
    public static class a implements g4.m {
        @Override // g4.m
        public boolean a(int i5, java.util.List<g4.f> list) {
            return true;
        }

        @Override // g4.m
        public boolean b(int i5, java.util.List<g4.f> list, boolean z4) {
            return true;
        }

        @Override // g4.m
        public void c(int i5, g4.a aVar) {
        }

        @Override // g4.m
        public boolean d(int i5, okio.BufferedSource bufferedSource, int i6, boolean z4) throws java.io.IOException {
            bufferedSource.skip(i6);
            return true;
        }
    }

    boolean a(int i5, java.util.List<g4.f> list);

    boolean b(int i5, java.util.List<g4.f> list, boolean z4);

    void c(int i5, g4.a aVar);

    boolean d(int i5, okio.BufferedSource bufferedSource, int i6, boolean z4) throws java.io.IOException;
}
