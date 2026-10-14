package p3;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements java.lang.Iterable<java.lang.Character> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p3.a.C0070a f5493d = new p3.a.C0070a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final char f5494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char f5495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5496c;

    /* JADX INFO: renamed from: p3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Progressions.kt */
    public static final class C0070a {
        public C0070a() {
        }

        public /* synthetic */ C0070a(m3.g gVar) {
            this();
        }
    }

    public a(char c5, char c6, int i5) {
        if (i5 == 0) {
            throw new java.lang.IllegalArgumentException("Step must be non-zero.");
        }
        if (i5 == Integer.MIN_VALUE) {
            throw new java.lang.IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f5494a = c5;
        this.f5495b = (char) g3.c.c(c5, c6, i5);
        this.f5496c = i5;
    }

    public final char a() {
        return this.f5494a;
    }

    public final char b() {
        return this.f5495b;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b3.m iterator() {
        return new p3.b(this.f5494a, this.f5495b, this.f5496c);
    }
}
