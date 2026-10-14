package androidx.recyclerview.widget;

/* JADX INFO: compiled from: GapWorker.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e implements java.lang.Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.ThreadLocal<androidx.recyclerview.widget.e> f2138e = new java.lang.ThreadLocal<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static java.util.Comparator<androidx.recyclerview.widget.e.c> f2139f = new androidx.recyclerview.widget.e.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2142c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> f2140a = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.e.c> f2143d = new java.util.ArrayList<>();

    /* JADX INFO: compiled from: GapWorker.java */
    public class a implements java.util.Comparator<androidx.recyclerview.widget.e.c> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(androidx.recyclerview.widget.e.c cVar, androidx.recyclerview.widget.e.c cVar2) {
            androidx.recyclerview.widget.RecyclerView recyclerView = cVar.f2151d;
            if ((recyclerView == null) != (cVar2.f2151d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z4 = cVar.f2148a;
            if (z4 != cVar2.f2148a) {
                return z4 ? -1 : 1;
            }
            int i5 = cVar2.f2149b - cVar.f2149b;
            if (i5 != 0) {
                return i5;
            }
            int i6 = cVar.f2150c - cVar2.f2150c;
            if (i6 != 0) {
                return i6;
            }
            return 0;
        }
    }

    /* JADX INFO: compiled from: GapWorker.java */
    @android.annotation.SuppressLint({"VisibleForTests"})
    public static class b implements androidx.recyclerview.widget.RecyclerView.p.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f2146c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2147d;

        @Override // androidx.recyclerview.widget.RecyclerView.p.c
        public void a(int i5, int i6) {
            if (i5 < 0) {
                throw new java.lang.IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i6 < 0) {
                throw new java.lang.IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i7 = this.f2147d * 2;
            int[] iArr = this.f2146c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f2146c = iArr2;
                java.util.Arrays.fill(iArr2, -1);
            } else if (i7 >= iArr.length) {
                int[] iArr3 = new int[i7 * 2];
                this.f2146c = iArr3;
                java.lang.System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f2146c;
            iArr4[i7] = i5;
            iArr4[i7 + 1] = i6;
            this.f2147d++;
        }

        public void b() {
            int[] iArr = this.f2146c;
            if (iArr != null) {
                java.util.Arrays.fill(iArr, -1);
            }
            this.f2147d = 0;
        }

        public void c(androidx.recyclerview.widget.RecyclerView recyclerView, boolean z4) {
            this.f2147d = 0;
            int[] iArr = this.f2146c;
            if (iArr != null) {
                java.util.Arrays.fill(iArr, -1);
            }
            androidx.recyclerview.widget.RecyclerView.p pVar = recyclerView.f1870r;
            if (recyclerView.f1868q == null || pVar == null || !pVar.s0()) {
                return;
            }
            if (z4) {
                if (!recyclerView.f1847d.p()) {
                    pVar.o(recyclerView.f1868q.getItemCount(), this);
                }
            } else if (!recyclerView.j0()) {
                pVar.n(this.f2144a, this.f2145b, recyclerView.f1862m0, this);
            }
            int i5 = this.f2147d;
            if (i5 > pVar.f1954l) {
                pVar.f1954l = i5;
                pVar.f1955m = z4;
                recyclerView.f1843b.K();
            }
        }

        public boolean d(int i5) {
            if (this.f2146c != null) {
                int i6 = this.f2147d * 2;
                for (int i7 = 0; i7 < i6; i7 += 2) {
                    if (this.f2146c[i7] == i5) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void e(int i5, int i6) {
            this.f2144a = i5;
            this.f2145b = i6;
        }
    }

    /* JADX INFO: compiled from: GapWorker.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2148a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2149b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2150c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView f2151d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2152e;

        public void a() {
            this.f2148a = false;
            this.f2149b = 0;
            this.f2150c = 0;
            this.f2151d = null;
            this.f2152e = 0;
        }
    }

    public static boolean e(androidx.recyclerview.widget.RecyclerView recyclerView, int i5) {
        int iJ = recyclerView.f1849e.j();
        for (int i6 = 0; i6 < iJ; i6++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(recyclerView.f1849e.i(i6));
            if (b0VarD0.f1904b == i5 && !b0VarD0.o()) {
                return true;
            }
        }
        return false;
    }

    public void a(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.f2140a.add(recyclerView);
    }

    public final void b() {
        androidx.recyclerview.widget.e.c cVar;
        int size = this.f2140a.size();
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f2140a.get(i6);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f1861l0.c(recyclerView, false);
                i5 += recyclerView.f1861l0.f2147d;
            }
        }
        this.f2143d.ensureCapacity(i5);
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            androidx.recyclerview.widget.RecyclerView recyclerView2 = this.f2140a.get(i8);
            if (recyclerView2.getWindowVisibility() == 0) {
                androidx.recyclerview.widget.e.b bVar = recyclerView2.f1861l0;
                int iAbs = java.lang.Math.abs(bVar.f2144a) + java.lang.Math.abs(bVar.f2145b);
                for (int i9 = 0; i9 < bVar.f2147d * 2; i9 += 2) {
                    if (i7 >= this.f2143d.size()) {
                        cVar = new androidx.recyclerview.widget.e.c();
                        this.f2143d.add(cVar);
                    } else {
                        cVar = this.f2143d.get(i7);
                    }
                    int[] iArr = bVar.f2146c;
                    int i10 = iArr[i9 + 1];
                    cVar.f2148a = i10 <= iAbs;
                    cVar.f2149b = iAbs;
                    cVar.f2150c = i10;
                    cVar.f2151d = recyclerView2;
                    cVar.f2152e = iArr[i9];
                    i7++;
                }
            }
        }
        java.util.Collections.sort(this.f2143d, f2139f);
    }

    public final void c(androidx.recyclerview.widget.e.c cVar, long j5) {
        androidx.recyclerview.widget.RecyclerView.b0 b0VarI = i(cVar.f2151d, cVar.f2152e, cVar.f2148a ? Long.MAX_VALUE : j5);
        if (b0VarI == null || b0VarI.f1903a == null || !b0VarI.n() || b0VarI.o()) {
            return;
        }
        h(b0VarI.f1903a.get(), j5);
    }

    public final void d(long j5) {
        for (int i5 = 0; i5 < this.f2143d.size(); i5++) {
            androidx.recyclerview.widget.e.c cVar = this.f2143d.get(i5);
            if (cVar.f2151d == null) {
                return;
            }
            c(cVar, j5);
            cVar.a();
        }
    }

    public void f(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        if (recyclerView.isAttachedToWindow() && this.f2141b == 0) {
            this.f2141b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f1861l0.e(i5, i6);
    }

    public void g(long j5) {
        b();
        d(j5);
    }

    public final void h(androidx.recyclerview.widget.RecyclerView recyclerView, long j5) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.J && recyclerView.f1849e.j() != 0) {
            recyclerView.R0();
        }
        androidx.recyclerview.widget.e.b bVar = recyclerView.f1861l0;
        bVar.c(recyclerView, true);
        if (bVar.f2147d != 0) {
            try {
                s.c.a("RV Nested Prefetch");
                recyclerView.f1862m0.f(recyclerView.f1868q);
                for (int i5 = 0; i5 < bVar.f2147d * 2; i5 += 2) {
                    i(recyclerView, bVar.f2146c[i5], j5);
                }
                s.c.b();
            } catch (java.lang.Throwable th) {
                s.c.b();
                throw th;
            }
        }
    }

    public final androidx.recyclerview.widget.RecyclerView.b0 i(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, long j5) {
        if (e(recyclerView, i5)) {
            return null;
        }
        androidx.recyclerview.widget.RecyclerView.v vVar = recyclerView.f1843b;
        try {
            recyclerView.D0();
            androidx.recyclerview.widget.RecyclerView.b0 b0VarI = vVar.I(i5, false, j5);
            if (b0VarI != null) {
                if (!b0VarI.n() || b0VarI.o()) {
                    vVar.a(b0VarI, false);
                } else {
                    vVar.B(b0VarI.itemView);
                }
            }
            return b0VarI;
        } finally {
            recyclerView.F0(false);
        }
    }

    public void j(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.f2140a.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            s.c.a("RV Prefetch");
            if (!this.f2140a.isEmpty()) {
                int size = this.f2140a.size();
                long jMax = 0;
                for (int i5 = 0; i5 < size; i5++) {
                    androidx.recyclerview.widget.RecyclerView recyclerView = this.f2140a.get(i5);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = java.lang.Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    g(java.util.concurrent.TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2142c);
                }
            }
        } finally {
            this.f2141b = 0L;
            s.c.b();
        }
    }
}
