package w3;

/* JADX INFO: compiled from: Distinct.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l3.l<java.lang.Object, java.lang.Object> f6733a = w3.i.b.f6736b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l3.p<java.lang.Object, java.lang.Object, java.lang.Boolean> f6734b = w3.i.a.f6735b;

    /* JADX INFO: compiled from: Distinct.kt */
    public static final class a extends m3.l implements l3.p<java.lang.Object, java.lang.Object, java.lang.Boolean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final w3.i.a f6735b = new w3.i.a();

        public a() {
            super(2);
        }

        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.Boolean u(java.lang.Object obj, java.lang.Object obj2) {
            return java.lang.Boolean.valueOf(m3.k.a(obj, obj2));
        }
    }

    /* JADX INFO: compiled from: Distinct.kt */
    public static final class b extends m3.l implements l3.l<java.lang.Object, java.lang.Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final w3.i.b f6736b = new w3.i.b();

        public b() {
            super(1);
        }

        @Override // l3.l
        public final java.lang.Object x(java.lang.Object obj) {
            return obj;
        }
    }

    public static final <T> w3.d<T> a(w3.d<? extends T> dVar) {
        return b(dVar, f6733a, f6734b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> w3.d<T> b(w3.d<? extends T> dVar, l3.l<? super T, ? extends java.lang.Object> lVar, l3.p<java.lang.Object, java.lang.Object, java.lang.Boolean> pVar) {
        if (dVar instanceof w3.c) {
            w3.c cVar = (w3.c) dVar;
            if (cVar.f6719b == lVar && cVar.f6720c == pVar) {
                return dVar;
            }
        }
        return new w3.c(dVar, lVar, pVar);
    }
}
