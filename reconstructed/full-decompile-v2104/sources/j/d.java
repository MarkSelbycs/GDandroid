package j;

/* JADX INFO: compiled from: LongSparseArray.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d<E> implements java.lang.Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.Object f4706e = new java.lang.Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f4708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Object[] f4709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4710d;

    public d() {
        this(10);
    }

    public void a() {
        int i5 = this.f4710d;
        java.lang.Object[] objArr = this.f4709c;
        for (int i6 = 0; i6 < i5; i6++) {
            objArr[i6] = null;
        }
        this.f4710d = 0;
        this.f4707a = false;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public j.d<E> clone() {
        try {
            j.d<E> dVar = (j.d) super.clone();
            dVar.f4708b = (long[]) this.f4708b.clone();
            dVar.f4709c = (java.lang.Object[]) this.f4709c.clone();
            return dVar;
        } catch (java.lang.CloneNotSupportedException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    public void d(long j5) {
        int iB = j.c.b(this.f4708b, this.f4710d, j5);
        if (iB >= 0) {
            java.lang.Object[] objArr = this.f4709c;
            java.lang.Object obj = objArr[iB];
            java.lang.Object obj2 = f4706e;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f4707a = true;
            }
        }
    }

    public final void e() {
        int i5 = this.f4710d;
        long[] jArr = this.f4708b;
        java.lang.Object[] objArr = this.f4709c;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            java.lang.Object obj = objArr[i7];
            if (obj != f4706e) {
                if (i7 != i6) {
                    jArr[i6] = jArr[i7];
                    objArr[i6] = obj;
                    objArr[i7] = null;
                }
                i6++;
            }
        }
        this.f4707a = false;
        this.f4710d = i6;
    }

    public E f(long j5) {
        return g(j5, null);
    }

    public E g(long j5, E e5) {
        int iB = j.c.b(this.f4708b, this.f4710d, j5);
        if (iB >= 0) {
            java.lang.Object[] objArr = this.f4709c;
            if (objArr[iB] != f4706e) {
                return (E) objArr[iB];
            }
        }
        return e5;
    }

    public long h(int i5) {
        if (this.f4707a) {
            e();
        }
        return this.f4708b[i5];
    }

    public void j(long j5, E e5) {
        int iB = j.c.b(this.f4708b, this.f4710d, j5);
        if (iB >= 0) {
            this.f4709c[iB] = e5;
            return;
        }
        int i5 = ~iB;
        int i6 = this.f4710d;
        if (i5 < i6) {
            java.lang.Object[] objArr = this.f4709c;
            if (objArr[i5] == f4706e) {
                this.f4708b[i5] = j5;
                objArr[i5] = e5;
                return;
            }
        }
        if (this.f4707a && i6 >= this.f4708b.length) {
            e();
            i5 = ~j.c.b(this.f4708b, this.f4710d, j5);
        }
        int i7 = this.f4710d;
        if (i7 >= this.f4708b.length) {
            int iF = j.c.f(i7 + 1);
            long[] jArr = new long[iF];
            java.lang.Object[] objArr2 = new java.lang.Object[iF];
            long[] jArr2 = this.f4708b;
            java.lang.System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            java.lang.Object[] objArr3 = this.f4709c;
            java.lang.System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f4708b = jArr;
            this.f4709c = objArr2;
        }
        int i8 = this.f4710d;
        if (i8 - i5 != 0) {
            long[] jArr3 = this.f4708b;
            int i9 = i5 + 1;
            java.lang.System.arraycopy(jArr3, i5, jArr3, i9, i8 - i5);
            java.lang.Object[] objArr4 = this.f4709c;
            java.lang.System.arraycopy(objArr4, i5, objArr4, i9, this.f4710d - i5);
        }
        this.f4708b[i5] = j5;
        this.f4709c[i5] = e5;
        this.f4710d++;
    }

    public void k(int i5) {
        java.lang.Object[] objArr = this.f4709c;
        java.lang.Object obj = objArr[i5];
        java.lang.Object obj2 = f4706e;
        if (obj != obj2) {
            objArr[i5] = obj2;
            this.f4707a = true;
        }
    }

    public int m() {
        if (this.f4707a) {
            e();
        }
        return this.f4710d;
    }

    public E p(int i5) {
        if (this.f4707a) {
            e();
        }
        return (E) this.f4709c[i5];
    }

    public java.lang.String toString() {
        if (m() <= 0) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f4710d * 28);
        sb.append('{');
        for (int i5 = 0; i5 < this.f4710d; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            sb.append(h(i5));
            sb.append('=');
            E eP = p(i5);
            if (eP != this) {
                sb.append(eP);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i5) {
        this.f4707a = false;
        if (i5 == 0) {
            this.f4708b = j.c.f4704b;
            this.f4709c = j.c.f4705c;
        } else {
            int iF = j.c.f(i5);
            this.f4708b = new long[iF];
            this.f4709c = new java.lang.Object[iF];
        }
        this.f4710d = 0;
    }
}
