package j;

/* JADX INFO: compiled from: SparseArrayCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h<E> implements java.lang.Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.Object f4741e = new java.lang.Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f4743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Object[] f4744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4745d;

    public h() {
        this(10);
    }

    public void a(int i5, E e5) {
        int i6 = this.f4745d;
        if (i6 != 0 && i5 <= this.f4743b[i6 - 1]) {
            m(i5, e5);
            return;
        }
        if (this.f4742a && i6 >= this.f4743b.length) {
            f();
        }
        int i7 = this.f4745d;
        if (i7 >= this.f4743b.length) {
            int iE = j.c.e(i7 + 1);
            int[] iArr = new int[iE];
            java.lang.Object[] objArr = new java.lang.Object[iE];
            int[] iArr2 = this.f4743b;
            java.lang.System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            java.lang.Object[] objArr2 = this.f4744c;
            java.lang.System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f4743b = iArr;
            this.f4744c = objArr;
        }
        this.f4743b[i7] = i5;
        this.f4744c[i7] = e5;
        this.f4745d = i7 + 1;
    }

    public void b() {
        int i5 = this.f4745d;
        java.lang.Object[] objArr = this.f4744c;
        for (int i6 = 0; i6 < i5; i6++) {
            objArr[i6] = null;
        }
        this.f4745d = 0;
        this.f4742a = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public j.h<E> clone() {
        try {
            j.h<E> hVar = (j.h) super.clone();
            hVar.f4743b = (int[]) this.f4743b.clone();
            hVar.f4744c = (java.lang.Object[]) this.f4744c.clone();
            return hVar;
        } catch (java.lang.CloneNotSupportedException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    public void e(int i5) {
        int iA = j.c.a(this.f4743b, this.f4745d, i5);
        if (iA >= 0) {
            java.lang.Object[] objArr = this.f4744c;
            java.lang.Object obj = objArr[iA];
            java.lang.Object obj2 = f4741e;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.f4742a = true;
            }
        }
    }

    public final void f() {
        int i5 = this.f4745d;
        int[] iArr = this.f4743b;
        java.lang.Object[] objArr = this.f4744c;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            java.lang.Object obj = objArr[i7];
            if (obj != f4741e) {
                if (i7 != i6) {
                    iArr[i6] = iArr[i7];
                    objArr[i6] = obj;
                    objArr[i7] = null;
                }
                i6++;
            }
        }
        this.f4742a = false;
        this.f4745d = i6;
    }

    public E g(int i5) {
        return h(i5, null);
    }

    public E h(int i5, E e5) {
        int iA = j.c.a(this.f4743b, this.f4745d, i5);
        if (iA >= 0) {
            java.lang.Object[] objArr = this.f4744c;
            if (objArr[iA] != f4741e) {
                return (E) objArr[iA];
            }
        }
        return e5;
    }

    public int j(int i5) {
        if (this.f4742a) {
            f();
        }
        return j.c.a(this.f4743b, this.f4745d, i5);
    }

    public int k(int i5) {
        if (this.f4742a) {
            f();
        }
        return this.f4743b[i5];
    }

    public void m(int i5, E e5) {
        int iA = j.c.a(this.f4743b, this.f4745d, i5);
        if (iA >= 0) {
            this.f4744c[iA] = e5;
            return;
        }
        int i6 = ~iA;
        int i7 = this.f4745d;
        if (i6 < i7) {
            java.lang.Object[] objArr = this.f4744c;
            if (objArr[i6] == f4741e) {
                this.f4743b[i6] = i5;
                objArr[i6] = e5;
                return;
            }
        }
        if (this.f4742a && i7 >= this.f4743b.length) {
            f();
            i6 = ~j.c.a(this.f4743b, this.f4745d, i5);
        }
        int i8 = this.f4745d;
        if (i8 >= this.f4743b.length) {
            int iE = j.c.e(i8 + 1);
            int[] iArr = new int[iE];
            java.lang.Object[] objArr2 = new java.lang.Object[iE];
            int[] iArr2 = this.f4743b;
            java.lang.System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            java.lang.Object[] objArr3 = this.f4744c;
            java.lang.System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f4743b = iArr;
            this.f4744c = objArr2;
        }
        int i9 = this.f4745d;
        if (i9 - i6 != 0) {
            int[] iArr3 = this.f4743b;
            int i10 = i6 + 1;
            java.lang.System.arraycopy(iArr3, i6, iArr3, i10, i9 - i6);
            java.lang.Object[] objArr4 = this.f4744c;
            java.lang.System.arraycopy(objArr4, i6, objArr4, i10, this.f4745d - i6);
        }
        this.f4743b[i6] = i5;
        this.f4744c[i6] = e5;
        this.f4745d++;
    }

    public void p(int i5) {
        e(i5);
    }

    public int t() {
        if (this.f4742a) {
            f();
        }
        return this.f4745d;
    }

    public java.lang.String toString() {
        if (t() <= 0) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f4745d * 28);
        sb.append('{');
        for (int i5 = 0; i5 < this.f4745d; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            sb.append(k(i5));
            sb.append('=');
            E eU = u(i5);
            if (eU != this) {
                sb.append(eU);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E u(int i5) {
        if (this.f4742a) {
            f();
        }
        return (E) this.f4744c[i5];
    }

    public h(int i5) {
        this.f4742a = false;
        if (i5 == 0) {
            this.f4743b = j.c.f4703a;
            this.f4744c = j.c.f4705c;
        } else {
            int iE = j.c.e(i5);
            this.f4743b = new int[iE];
            this.f4744c = new java.lang.Object[iE];
        }
        this.f4745d = 0;
    }
}
