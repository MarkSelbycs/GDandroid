package r3;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends r3.d {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a<T> implements r3.b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.Iterator f5968a;

        public a(java.util.Iterator it) {
            this.f5968a = it;
        }

        @Override // r3.b
        public java.util.Iterator<T> iterator() {
            return this.f5968a;
        }
    }

    public static final <T> r3.b<T> a(java.util.Iterator<? extends T> it) {
        m3.k.e(it, "<this>");
        return b(new r3.e.a(it));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> r3.b<T> b(r3.b<? extends T> bVar) {
        m3.k.e(bVar, "<this>");
        return bVar instanceof r3.a ? bVar : new r3.a(bVar);
    }
}
