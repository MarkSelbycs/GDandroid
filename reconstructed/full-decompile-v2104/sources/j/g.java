package j;

/* JADX INFO: compiled from: SimpleArrayMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g<K, V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static java.lang.Object[] f4734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f4735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static java.lang.Object[] f4736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f4737g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f4738a = j.c.f4703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.Object[] f4739b = j.c.f4705c;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4740c = 0;

    private void a(int i5) {
        if (i5 == 8) {
            synchronized (j.a.class) {
                java.lang.Object[] objArr = f4736f;
                if (objArr != null) {
                    this.f4739b = objArr;
                    f4736f = (java.lang.Object[]) objArr[0];
                    this.f4738a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f4737g--;
                    return;
                }
            }
        } else if (i5 == 4) {
            synchronized (j.a.class) {
                java.lang.Object[] objArr2 = f4734d;
                if (objArr2 != null) {
                    this.f4739b = objArr2;
                    f4734d = (java.lang.Object[]) objArr2[0];
                    this.f4738a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f4735e--;
                    return;
                }
            }
        }
        this.f4738a = new int[i5];
        this.f4739b = new java.lang.Object[i5 << 1];
    }

    public static int b(int[] iArr, int i5, int i6) {
        try {
            return j.c.a(iArr, i5, i6);
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public static void d(int[] iArr, java.lang.Object[] objArr, int i5) {
        if (iArr.length == 8) {
            synchronized (j.a.class) {
                if (f4737g < 10) {
                    objArr[0] = f4736f;
                    objArr[1] = iArr;
                    for (int i6 = (i5 << 1) - 1; i6 >= 2; i6--) {
                        objArr[i6] = null;
                    }
                    f4736f = objArr;
                    f4737g++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (j.a.class) {
                if (f4735e < 10) {
                    objArr[0] = f4734d;
                    objArr[1] = iArr;
                    for (int i7 = (i5 << 1) - 1; i7 >= 2; i7--) {
                        objArr[i7] = null;
                    }
                    f4734d = objArr;
                    f4735e++;
                }
            }
        }
    }

    public void c(int i5) {
        int i6 = this.f4740c;
        int[] iArr = this.f4738a;
        if (iArr.length < i5) {
            java.lang.Object[] objArr = this.f4739b;
            a(i5);
            if (this.f4740c > 0) {
                java.lang.System.arraycopy(iArr, 0, this.f4738a, 0, i6);
                java.lang.System.arraycopy(objArr, 0, this.f4739b, 0, i6 << 1);
            }
            d(iArr, objArr, i6);
        }
        if (this.f4740c != i6) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public void clear() {
        int i5 = this.f4740c;
        if (i5 > 0) {
            int[] iArr = this.f4738a;
            java.lang.Object[] objArr = this.f4739b;
            this.f4738a = j.c.f4703a;
            this.f4739b = j.c.f4705c;
            this.f4740c = 0;
            d(iArr, objArr, i5);
        }
        if (this.f4740c > 0) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public boolean containsKey(java.lang.Object obj) {
        return f(obj) >= 0;
    }

    public boolean containsValue(java.lang.Object obj) {
        return h(obj) >= 0;
    }

    public int e(java.lang.Object obj, int i5) {
        int i6 = this.f4740c;
        if (i6 == 0) {
            return -1;
        }
        int iB = b(this.f4738a, i6, i5);
        if (iB < 0 || obj.equals(this.f4739b[iB << 1])) {
            return iB;
        }
        int i7 = iB + 1;
        while (i7 < i6 && this.f4738a[i7] == i5) {
            if (obj.equals(this.f4739b[i7 << 1])) {
                return i7;
            }
            i7++;
        }
        for (int i8 = iB - 1; i8 >= 0 && this.f4738a[i8] == i5; i8--) {
            if (obj.equals(this.f4739b[i8 << 1])) {
                return i8;
            }
        }
        return ~i7;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j.g) {
            j.g gVar = (j.g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i5 = 0; i5 < this.f4740c; i5++) {
                try {
                    K kI = i(i5);
                    V vM = m(i5);
                    java.lang.Object obj2 = gVar.get(kI);
                    if (vM == null) {
                        if (obj2 != null || !gVar.containsKey(kI)) {
                            return false;
                        }
                    } else if (!vM.equals(obj2)) {
                        return false;
                    }
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i6 = 0; i6 < this.f4740c; i6++) {
                try {
                    K kI2 = i(i6);
                    V vM2 = m(i6);
                    java.lang.Object obj3 = map.get(kI2);
                    if (vM2 == null) {
                        if (obj3 != null || !map.containsKey(kI2)) {
                            return false;
                        }
                    } else if (!vM2.equals(obj3)) {
                        return false;
                    }
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int f(java.lang.Object obj) {
        return obj == null ? g() : e(obj, obj.hashCode());
    }

    public int g() {
        int i5 = this.f4740c;
        if (i5 == 0) {
            return -1;
        }
        int iB = b(this.f4738a, i5, 0);
        if (iB < 0 || this.f4739b[iB << 1] == null) {
            return iB;
        }
        int i6 = iB + 1;
        while (i6 < i5 && this.f4738a[i6] == 0) {
            if (this.f4739b[i6 << 1] == null) {
                return i6;
            }
            i6++;
        }
        for (int i7 = iB - 1; i7 >= 0 && this.f4738a[i7] == 0; i7--) {
            if (this.f4739b[i7 << 1] == null) {
                return i7;
            }
        }
        return ~i6;
    }

    public V get(java.lang.Object obj) {
        int iF = f(obj);
        if (iF >= 0) {
            return (V) this.f4739b[(iF << 1) + 1];
        }
        return null;
    }

    public int h(java.lang.Object obj) {
        int i5 = this.f4740c * 2;
        java.lang.Object[] objArr = this.f4739b;
        if (obj == null) {
            for (int i6 = 1; i6 < i5; i6 += 2) {
                if (objArr[i6] == null) {
                    return i6 >> 1;
                }
            }
            return -1;
        }
        for (int i7 = 1; i7 < i5; i7 += 2) {
            if (obj.equals(objArr[i7])) {
                return i7 >> 1;
            }
        }
        return -1;
    }

    public int hashCode() {
        int[] iArr = this.f4738a;
        java.lang.Object[] objArr = this.f4739b;
        int i5 = this.f4740c;
        int i6 = 1;
        int i7 = 0;
        int iHashCode = 0;
        while (i7 < i5) {
            java.lang.Object obj = objArr[i6];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i7];
            i7++;
            i6 += 2;
        }
        return iHashCode;
    }

    public K i(int i5) {
        return (K) this.f4739b[i5 << 1];
    }

    public boolean isEmpty() {
        return this.f4740c <= 0;
    }

    public V k(int i5) {
        java.lang.Object[] objArr = this.f4739b;
        int i6 = i5 << 1;
        V v4 = (V) objArr[i6 + 1];
        int i7 = this.f4740c;
        int i8 = 0;
        if (i7 <= 1) {
            d(this.f4738a, objArr, i7);
            this.f4738a = j.c.f4703a;
            this.f4739b = j.c.f4705c;
        } else {
            int i9 = i7 - 1;
            int[] iArr = this.f4738a;
            if (iArr.length <= 8 || i7 >= iArr.length / 3) {
                if (i5 < i9) {
                    int i10 = i5 + 1;
                    int i11 = i9 - i5;
                    java.lang.System.arraycopy(iArr, i10, iArr, i5, i11);
                    java.lang.Object[] objArr2 = this.f4739b;
                    java.lang.System.arraycopy(objArr2, i10 << 1, objArr2, i6, i11 << 1);
                }
                java.lang.Object[] objArr3 = this.f4739b;
                int i12 = i9 << 1;
                objArr3[i12] = null;
                objArr3[i12 + 1] = null;
            } else {
                a(i7 > 8 ? i7 + (i7 >> 1) : 8);
                if (i7 != this.f4740c) {
                    throw new java.util.ConcurrentModificationException();
                }
                if (i5 > 0) {
                    java.lang.System.arraycopy(iArr, 0, this.f4738a, 0, i5);
                    java.lang.System.arraycopy(objArr, 0, this.f4739b, 0, i6);
                }
                if (i5 < i9) {
                    int i13 = i5 + 1;
                    int i14 = i9 - i5;
                    java.lang.System.arraycopy(iArr, i13, this.f4738a, i5, i14);
                    java.lang.System.arraycopy(objArr, i13 << 1, this.f4739b, i6, i14 << 1);
                }
            }
            i8 = i9;
        }
        if (i7 != this.f4740c) {
            throw new java.util.ConcurrentModificationException();
        }
        this.f4740c = i8;
        return v4;
    }

    public V l(int i5, V v4) {
        int i6 = (i5 << 1) + 1;
        java.lang.Object[] objArr = this.f4739b;
        V v5 = (V) objArr[i6];
        objArr[i6] = v4;
        return v5;
    }

    public V m(int i5) {
        return (V) this.f4739b[(i5 << 1) + 1];
    }

    public V put(K k5, V v4) {
        int i5;
        int iE;
        int i6 = this.f4740c;
        if (k5 == null) {
            iE = g();
            i5 = 0;
        } else {
            int iHashCode = k5.hashCode();
            i5 = iHashCode;
            iE = e(k5, iHashCode);
        }
        if (iE >= 0) {
            int i7 = (iE << 1) + 1;
            java.lang.Object[] objArr = this.f4739b;
            V v5 = (V) objArr[i7];
            objArr[i7] = v4;
            return v5;
        }
        int i8 = ~iE;
        int[] iArr = this.f4738a;
        if (i6 >= iArr.length) {
            int i9 = 4;
            if (i6 >= 8) {
                i9 = (i6 >> 1) + i6;
            } else if (i6 >= 4) {
                i9 = 8;
            }
            java.lang.Object[] objArr2 = this.f4739b;
            a(i9);
            if (i6 != this.f4740c) {
                throw new java.util.ConcurrentModificationException();
            }
            int[] iArr2 = this.f4738a;
            if (iArr2.length > 0) {
                java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                java.lang.System.arraycopy(objArr2, 0, this.f4739b, 0, objArr2.length);
            }
            d(iArr, objArr2, i6);
        }
        if (i8 < i6) {
            int[] iArr3 = this.f4738a;
            int i10 = i8 + 1;
            java.lang.System.arraycopy(iArr3, i8, iArr3, i10, i6 - i8);
            java.lang.Object[] objArr3 = this.f4739b;
            java.lang.System.arraycopy(objArr3, i8 << 1, objArr3, i10 << 1, (this.f4740c - i8) << 1);
        }
        int i11 = this.f4740c;
        if (i6 == i11) {
            int[] iArr4 = this.f4738a;
            if (i8 < iArr4.length) {
                iArr4[i8] = i5;
                java.lang.Object[] objArr4 = this.f4739b;
                int i12 = i8 << 1;
                objArr4[i12] = k5;
                objArr4[i12 + 1] = v4;
                this.f4740c = i11 + 1;
                return null;
            }
        }
        throw new java.util.ConcurrentModificationException();
    }

    public V remove(java.lang.Object obj) {
        int iF = f(obj);
        if (iF >= 0) {
            return k(iF);
        }
        return null;
    }

    public int size() {
        return this.f4740c;
    }

    public java.lang.String toString() {
        if (isEmpty()) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f4740c * 28);
        sb.append('{');
        for (int i5 = 0; i5 < this.f4740c; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            K kI = i(i5);
            if (kI != this) {
                sb.append(kI);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vM = m(i5);
            if (vM != this) {
                sb.append(vM);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
