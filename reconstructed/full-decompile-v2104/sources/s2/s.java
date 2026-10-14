package s2;

/* JADX INFO: compiled from: TypeAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class s<T> {

    /* JADX INFO: compiled from: TypeAdapter.java */
    public class a extends s2.s<T> {
        public a() {
        }

        @Override // s2.s
        public T b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return (T) s2.s.this.b(aVar);
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        public void d(y2.c cVar, T t5) throws java.io.IOException {
            if (t5 == null) {
                cVar.u();
            } else {
                s2.s.this.d(cVar, t5);
            }
        }
    }

    public final s2.s<T> a() {
        return new s2.s.a();
    }

    public abstract T b(y2.a aVar) throws java.io.IOException;

    public final s2.i c(T t5) {
        try {
            v2.f fVar = new v2.f();
            d(fVar, t5);
            return fVar.b0();
        } catch (java.io.IOException e5) {
            throw new s2.j(e5);
        }
    }

    public abstract void d(y2.c cVar, T t5) throws java.io.IOException;
}
