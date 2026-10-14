package n3;

/* JADX INFO: compiled from: PlatformRandom.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b extends n3.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n3.b.a f5256c = new n3.b.a();

    /* JADX INFO: compiled from: PlatformRandom.kt */
    public static final class a extends java.lang.ThreadLocal<java.util.Random> {
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.util.Random initialValue() {
            return new java.util.Random();
        }
    }

    @Override // n3.a
    public java.util.Random e() {
        java.util.Random random = this.f5256c.get();
        m3.k.d(random, "implStorage.get()");
        return random;
    }
}
