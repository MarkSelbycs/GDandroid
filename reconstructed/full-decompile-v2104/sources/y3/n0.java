package y3;

/* JADX INFO: compiled from: ThreadSafeHeap.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n0<T extends y3.o0 & java.lang.Comparable<? super T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6918b = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(y3.n0.class, "_size");
    private volatile int _size;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public T[] f6919a;

    public final void a(T t5) {
        t5.a(this);
        y3.o0[] o0VarArrF = f();
        int iC = c();
        j(iC + 1);
        o0VarArrF[iC] = t5;
        t5.b(iC);
        l(iC);
    }

    public final T b() {
        T[] tArr = this.f6919a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int c() {
        return f6918b.get(this);
    }

    public final boolean d() {
        return c() == 0;
    }

    public final T e() {
        T t5;
        synchronized (this) {
            t5 = (T) b();
        }
        return t5;
    }

    public final T[] f() {
        T[] tArr = this.f6919a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new y3.o0[4];
            this.f6919a = tArr2;
            return tArr2;
        }
        if (c() < tArr.length) {
            return tArr;
        }
        java.lang.Object[] objArrCopyOf = java.util.Arrays.copyOf(tArr, c() * 2);
        m3.k.d(objArrCopyOf, "copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((y3.o0[]) objArrCopyOf);
        this.f6919a = tArr3;
        return tArr3;
    }

    public final boolean g(T t5) {
        boolean z4;
        synchronized (this) {
            if (t5.e() == null) {
                z4 = false;
            } else {
                h(t5.f());
                z4 = true;
            }
        }
        return z4;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    public final T h(int i5) {
        T[] tArr = this.f6919a;
        m3.k.b(tArr);
        j(c() - 1);
        if (i5 < c()) {
            m(i5, c());
            int i6 = (i5 - 1) / 2;
            if (i5 > 0) {
                T t5 = tArr[i5];
                m3.k.b(t5);
                T t6 = tArr[i6];
                m3.k.b(t6);
                if (((java.lang.Comparable) t5).compareTo(t6) < 0) {
                    m(i5, i6);
                    l(i6);
                } else {
                    k(i5);
                }
            } else {
                k(i5);
            }
        }
        T t7 = tArr[c()];
        m3.k.b(t7);
        t7.a(null);
        t7.b(-1);
        tArr[c()] = null;
        return t7;
    }

    public final T i() {
        T t5;
        synchronized (this) {
            t5 = c() > 0 ? (T) h(0) : null;
        }
        return t5;
    }

    public final void j(int i5) {
        f6918b.set(this, i5);
    }

    public final void k(int i5) {
        while (true) {
            int i6 = (i5 * 2) + 1;
            if (i6 >= c()) {
                return;
            }
            T[] tArr = this.f6919a;
            m3.k.b(tArr);
            int i7 = i6 + 1;
            if (i7 < c()) {
                T t5 = tArr[i7];
                m3.k.b(t5);
                T t6 = tArr[i6];
                m3.k.b(t6);
                if (((java.lang.Comparable) t5).compareTo(t6) < 0) {
                    i6 = i7;
                }
            }
            T t7 = tArr[i5];
            m3.k.b(t7);
            T t8 = tArr[i6];
            m3.k.b(t8);
            if (((java.lang.Comparable) t7).compareTo(t8) <= 0) {
                return;
            }
            m(i5, i6);
            i5 = i6;
        }
    }

    public final void l(int i5) {
        while (i5 > 0) {
            T[] tArr = this.f6919a;
            m3.k.b(tArr);
            int i6 = (i5 - 1) / 2;
            T t5 = tArr[i6];
            m3.k.b(t5);
            T t6 = tArr[i5];
            m3.k.b(t6);
            if (((java.lang.Comparable) t5).compareTo(t6) <= 0) {
                return;
            }
            m(i5, i6);
            i5 = i6;
        }
    }

    public final void m(int i5, int i6) {
        T[] tArr = this.f6919a;
        m3.k.b(tArr);
        T t5 = tArr[i6];
        m3.k.b(t5);
        T t6 = tArr[i5];
        m3.k.b(t6);
        tArr[i5] = t5;
        tArr[i6] = t6;
        t5.b(i5);
        t6.b(i6);
    }
}
