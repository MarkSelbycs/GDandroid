package s3;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c implements r3.b<p3.h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.CharSequence f6075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l3.p<java.lang.CharSequence, java.lang.Integer, a3.h<java.lang.Integer, java.lang.Integer>> f6078d;

    /* JADX INFO: compiled from: Strings.kt */
    public static final class a implements java.util.Iterator<p3.h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6079a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public p3.h f6082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6083e;

        public a() {
            int iE = p3.m.e(s3.c.this.f6076b, 0, s3.c.this.f6075a.length());
            this.f6080b = iE;
            this.f6081c = iE;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0031 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Code duplicated, block: B:17:0x0098  */
        /* JADX WARN: Code duplicated, block: B:9:0x0023  */
        public final void a() {
            a3.h hVar;
            if (this.f6081c < 0) {
                this.f6079a = 0;
                this.f6082d = null;
                return;
            }
            if (s3.c.this.f6077c > 0) {
                int i5 = this.f6083e + 1;
                this.f6083e = i5;
                if (i5 >= s3.c.this.f6077c) {
                    this.f6082d = new p3.h(this.f6080b, s3.m.t(s3.c.this.f6075a));
                    this.f6081c = -1;
                } else if (this.f6081c > s3.c.this.f6075a.length() && (hVar = (a3.h) s3.c.this.f6078d.u(s3.c.this.f6075a, java.lang.Integer.valueOf(this.f6081c))) != null) {
                    int iIntValue = ((java.lang.Number) hVar.b()).intValue();
                    int iIntValue2 = ((java.lang.Number) hVar.c()).intValue();
                    this.f6082d = p3.m.h(this.f6080b, iIntValue);
                    int i6 = iIntValue + iIntValue2;
                    this.f6080b = i6;
                    this.f6081c = i6 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.f6082d = new p3.h(this.f6080b, s3.m.t(s3.c.this.f6075a));
                    this.f6081c = -1;
                }
            } else if (this.f6081c > s3.c.this.f6075a.length()) {
                this.f6082d = new p3.h(this.f6080b, s3.m.t(s3.c.this.f6075a));
                this.f6081c = -1;
            } else {
                int iIntValue3 = ((java.lang.Number) hVar.b()).intValue();
                int iIntValue4 = ((java.lang.Number) hVar.c()).intValue();
                this.f6082d = p3.m.h(this.f6080b, iIntValue3);
                int i7 = iIntValue3 + iIntValue4;
                this.f6080b = i7;
                this.f6081c = i7 + (iIntValue4 == 0 ? 1 : 0);
            }
            this.f6079a = 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public p3.h next() {
            if (this.f6079a == -1) {
                a();
            }
            if (this.f6079a == 0) {
                throw new java.util.NoSuchElementException();
            }
            p3.h hVar = this.f6082d;
            m3.k.c(hVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f6082d = null;
            this.f6079a = -1;
            return hVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6079a == -1) {
                a();
            }
            return this.f6079a == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(java.lang.CharSequence charSequence, int i5, int i6, l3.p<? super java.lang.CharSequence, ? super java.lang.Integer, a3.h<java.lang.Integer, java.lang.Integer>> pVar) {
        m3.k.e(charSequence, "input");
        m3.k.e(pVar, "getNextMatch");
        this.f6075a = charSequence;
        this.f6076b = i5;
        this.f6077c = i6;
        this.f6078d = pVar;
    }

    @Override // r3.b
    public java.util.Iterator<p3.h> iterator() {
        return new s3.c.a();
    }
}
