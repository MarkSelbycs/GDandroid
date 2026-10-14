package b3;

/* JADX INFO: compiled from: AbstractList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b<E> extends b3.a<E> implements java.util.List<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b3.b.a f2938a = new b3.b.a(null);

    /* JADX INFO: compiled from: AbstractList.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final void a(int i5, int i6) {
            if (i5 < 0 || i5 >= i6) {
                throw new java.lang.IndexOutOfBoundsException("index: " + i5 + ", size: " + i6);
            }
        }

        public final void b(int i5, int i6) {
            if (i5 < 0 || i5 > i6) {
                throw new java.lang.IndexOutOfBoundsException("index: " + i5 + ", size: " + i6);
            }
        }

        public final void c(int i5, int i6, int i7) {
            if (i5 < 0 || i6 > i7) {
                throw new java.lang.IndexOutOfBoundsException("fromIndex: " + i5 + ", toIndex: " + i6 + ", size: " + i7);
            }
            if (i5 <= i6) {
                return;
            }
            throw new java.lang.IllegalArgumentException("fromIndex: " + i5 + " > toIndex: " + i6);
        }
    }
}
