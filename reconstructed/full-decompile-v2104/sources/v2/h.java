package v2;

/* JADX INFO: compiled from: ObjectTypeAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h extends s2.s<java.lang.Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s2.t f6477b = new v2.h.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.e f6478a;

    /* JADX INFO: compiled from: ObjectTypeAdapter.java */
    public static class a implements s2.t {
        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            if (aVar.c() == java.lang.Object.class) {
                return new v2.h(eVar);
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ObjectTypeAdapter.java */
    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6479a;

        static {
            int[] iArr = new int[y2.b.values().length];
            f6479a = iArr;
            try {
                iArr[y2.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f6479a[y2.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f6479a[y2.b.STRING.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f6479a[y2.b.NUMBER.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f6479a[y2.b.BOOLEAN.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f6479a[y2.b.NULL.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    public h(s2.e eVar) {
        this.f6478a = eVar;
    }

    @Override // s2.s
    public java.lang.Object b(y2.a aVar) throws java.io.IOException {
        switch (v2.h.b.f6479a[aVar.V().ordinal()]) {
            case 1:
                java.util.ArrayList arrayList = new java.util.ArrayList();
                aVar.c();
                while (aVar.r()) {
                    arrayList.add(b(aVar));
                }
                aVar.j();
                return arrayList;
            case 2:
                u2.g gVar = new u2.g();
                aVar.e();
                while (aVar.r()) {
                    gVar.put(aVar.H(), b(aVar));
                }
                aVar.l();
                return gVar;
            case 3:
                return aVar.P();
            case 4:
                return java.lang.Double.valueOf(aVar.y());
            case 5:
                return java.lang.Boolean.valueOf(aVar.x());
            case 6:
                aVar.K();
                return null;
            default:
                throw new java.lang.IllegalStateException();
        }
    }

    @Override // s2.s
    public void d(y2.c cVar, java.lang.Object obj) throws java.io.IOException {
        if (obj == null) {
            cVar.u();
            return;
        }
        s2.s sVarF = this.f6478a.f(obj.getClass());
        if (!(sVarF instanceof v2.h)) {
            sVarF.d(cVar, obj);
        } else {
            cVar.h();
            cVar.l();
        }
    }
}
