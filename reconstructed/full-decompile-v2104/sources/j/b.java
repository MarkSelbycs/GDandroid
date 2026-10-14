package j;

/* JADX INFO: compiled from: ArraySet.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b<E> implements java.util.Collection<E>, java.util.Set<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f4692e = new int[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.Object[] f4693f = new java.lang.Object[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static java.lang.Object[] f4694g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f4695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static java.lang.Object[] f4696i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f4697o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f4698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.Object[] f4699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j.f<E, E> f4701d;

    /* JADX INFO: compiled from: ArraySet.java */
    public class a extends j.f<E, E> {
        public a() {
        }

        @Override // j.f
        public void a() {
            j.b.this.clear();
        }

        @Override // j.f
        public java.lang.Object b(int i5, int i6) {
            return j.b.this.f4699b[i5];
        }

        @Override // j.f
        public java.util.Map<E, E> c() {
            throw new java.lang.UnsupportedOperationException("not a map");
        }

        @Override // j.f
        public int d() {
            return j.b.this.f4700c;
        }

        @Override // j.f
        public int e(java.lang.Object obj) {
            return j.b.this.indexOf(obj);
        }

        @Override // j.f
        public int f(java.lang.Object obj) {
            return j.b.this.indexOf(obj);
        }

        @Override // j.f
        public void g(E e5, E e6) {
            j.b.this.add(e5);
        }

        @Override // j.f
        public void h(int i5) {
            j.b.this.g(i5);
        }

        @Override // j.f
        public E i(int i5, E e5) {
            throw new java.lang.UnsupportedOperationException("not a map");
        }
    }

    public b() {
        this(0);
    }

    public static void c(int[] iArr, java.lang.Object[] objArr, int i5) {
        if (iArr.length == 8) {
            synchronized (j.b.class) {
                if (f4697o < 10) {
                    objArr[0] = f4696i;
                    objArr[1] = iArr;
                    for (int i6 = i5 - 1; i6 >= 2; i6--) {
                        objArr[i6] = null;
                    }
                    f4696i = objArr;
                    f4697o++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (j.b.class) {
                if (f4695h < 10) {
                    objArr[0] = f4694g;
                    objArr[1] = iArr;
                    for (int i7 = i5 - 1; i7 >= 2; i7--) {
                        objArr[i7] = null;
                    }
                    f4694g = objArr;
                    f4695h++;
                }
            }
        }
    }

    public final void a(int i5) {
        if (i5 == 8) {
            synchronized (j.b.class) {
                java.lang.Object[] objArr = f4696i;
                if (objArr != null) {
                    this.f4699b = objArr;
                    f4696i = (java.lang.Object[]) objArr[0];
                    this.f4698a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f4697o--;
                    return;
                }
            }
        } else if (i5 == 4) {
            synchronized (j.b.class) {
                java.lang.Object[] objArr2 = f4694g;
                if (objArr2 != null) {
                    this.f4699b = objArr2;
                    f4694g = (java.lang.Object[]) objArr2[0];
                    this.f4698a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f4695h--;
                    return;
                }
            }
        }
        this.f4698a = new int[i5];
        this.f4699b = new java.lang.Object[i5];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e5) {
        int i5;
        int iE;
        if (e5 == null) {
            iE = f();
            i5 = 0;
        } else {
            int iHashCode = e5.hashCode();
            i5 = iHashCode;
            iE = e(e5, iHashCode);
        }
        if (iE >= 0) {
            return false;
        }
        int i6 = ~iE;
        int i7 = this.f4700c;
        int[] iArr = this.f4698a;
        if (i7 >= iArr.length) {
            int i8 = 4;
            if (i7 >= 8) {
                i8 = (i7 >> 1) + i7;
            } else if (i7 >= 4) {
                i8 = 8;
            }
            java.lang.Object[] objArr = this.f4699b;
            a(i8);
            int[] iArr2 = this.f4698a;
            if (iArr2.length > 0) {
                java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                java.lang.System.arraycopy(objArr, 0, this.f4699b, 0, objArr.length);
            }
            c(iArr, objArr, this.f4700c);
        }
        int i9 = this.f4700c;
        if (i6 < i9) {
            int[] iArr3 = this.f4698a;
            int i10 = i6 + 1;
            java.lang.System.arraycopy(iArr3, i6, iArr3, i10, i9 - i6);
            java.lang.Object[] objArr2 = this.f4699b;
            java.lang.System.arraycopy(objArr2, i6, objArr2, i10, this.f4700c - i6);
        }
        this.f4698a[i6] = i5;
        this.f4699b[i6] = e5;
        this.f4700c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(java.util.Collection<? extends E> collection) {
        b(this.f4700c + collection.size());
        java.util.Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public void b(int i5) {
        int[] iArr = this.f4698a;
        if (iArr.length < i5) {
            java.lang.Object[] objArr = this.f4699b;
            a(i5);
            int i6 = this.f4700c;
            if (i6 > 0) {
                java.lang.System.arraycopy(iArr, 0, this.f4698a, 0, i6);
                java.lang.System.arraycopy(objArr, 0, this.f4699b, 0, this.f4700c);
            }
            c(iArr, objArr, this.f4700c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i5 = this.f4700c;
        if (i5 != 0) {
            c(this.f4698a, this.f4699b, i5);
            this.f4698a = f4692e;
            this.f4699b = f4693f;
            this.f4700c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(java.util.Collection<?> collection) {
        java.util.Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final j.f<E, E> d() {
        if (this.f4701d == null) {
            this.f4701d = new j.b.a();
        }
        return this.f4701d;
    }

    public final int e(java.lang.Object obj, int i5) {
        int i6 = this.f4700c;
        if (i6 == 0) {
            return -1;
        }
        int iA = j.c.a(this.f4698a, i6, i5);
        if (iA < 0 || obj.equals(this.f4699b[iA])) {
            return iA;
        }
        int i7 = iA + 1;
        while (i7 < i6 && this.f4698a[i7] == i5) {
            if (obj.equals(this.f4699b[i7])) {
                return i7;
            }
            i7++;
        }
        for (int i8 = iA - 1; i8 >= 0 && this.f4698a[i8] == i5; i8--) {
            if (obj.equals(this.f4699b[i8])) {
                return i8;
            }
        }
        return ~i7;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Set) {
            java.util.Set set = (java.util.Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i5 = 0; i5 < this.f4700c; i5++) {
                try {
                    if (!set.contains(h(i5))) {
                        return false;
                    }
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        int i5 = this.f4700c;
        if (i5 == 0) {
            return -1;
        }
        int iA = j.c.a(this.f4698a, i5, 0);
        if (iA < 0 || this.f4699b[iA] == null) {
            return iA;
        }
        int i6 = iA + 1;
        while (i6 < i5 && this.f4698a[i6] == 0) {
            if (this.f4699b[i6] == null) {
                return i6;
            }
            i6++;
        }
        for (int i7 = iA - 1; i7 >= 0 && this.f4698a[i7] == 0; i7--) {
            if (this.f4699b[i7] == null) {
                return i7;
            }
        }
        return ~i6;
    }

    public E g(int i5) {
        java.lang.Object[] objArr = this.f4699b;
        E e5 = (E) objArr[i5];
        int i6 = this.f4700c;
        if (i6 <= 1) {
            c(this.f4698a, objArr, i6);
            this.f4698a = f4692e;
            this.f4699b = f4693f;
            this.f4700c = 0;
        } else {
            int[] iArr = this.f4698a;
            if (iArr.length <= 8 || i6 >= iArr.length / 3) {
                int i7 = i6 - 1;
                this.f4700c = i7;
                if (i5 < i7) {
                    int i8 = i5 + 1;
                    java.lang.System.arraycopy(iArr, i8, iArr, i5, i7 - i5);
                    java.lang.Object[] objArr2 = this.f4699b;
                    java.lang.System.arraycopy(objArr2, i8, objArr2, i5, this.f4700c - i5);
                }
                this.f4699b[this.f4700c] = null;
            } else {
                a(i6 > 8 ? i6 + (i6 >> 1) : 8);
                this.f4700c--;
                if (i5 > 0) {
                    java.lang.System.arraycopy(iArr, 0, this.f4698a, 0, i5);
                    java.lang.System.arraycopy(objArr, 0, this.f4699b, 0, i5);
                }
                int i9 = this.f4700c;
                if (i5 < i9) {
                    int i10 = i5 + 1;
                    java.lang.System.arraycopy(iArr, i10, this.f4698a, i5, i9 - i5);
                    java.lang.System.arraycopy(objArr, i10, this.f4699b, i5, this.f4700c - i5);
                }
            }
        }
        return e5;
    }

    public E h(int i5) {
        return (E) this.f4699b[i5];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f4698a;
        int i5 = this.f4700c;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            i6 += iArr[i7];
        }
        return i6;
    }

    public int indexOf(java.lang.Object obj) {
        return obj == null ? f() : e(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f4700c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator<E> iterator() {
        return d().m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(java.lang.Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        g(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<?> collection) {
        java.util.Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<?> collection) {
        boolean z4 = false;
        for (int i5 = this.f4700c - 1; i5 >= 0; i5--) {
            if (!collection.contains(this.f4699b[i5])) {
                g(i5);
                z4 = true;
            }
        }
        return z4;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f4700c;
    }

    @Override // java.util.Collection, java.util.Set
    public java.lang.Object[] toArray() {
        int i5 = this.f4700c;
        java.lang.Object[] objArr = new java.lang.Object[i5];
        java.lang.System.arraycopy(this.f4699b, 0, objArr, 0, i5);
        return objArr;
    }

    public java.lang.String toString() {
        if (isEmpty()) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f4700c * 14);
        sb.append('{');
        for (int i5 = 0; i5 < this.f4700c; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            E eH = h(i5);
            if (eH != this) {
                sb.append(eH);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public b(int i5) {
        if (i5 == 0) {
            this.f4698a = f4692e;
            this.f4699b = f4693f;
        } else {
            a(i5);
        }
        this.f4700c = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f4700c) {
            tArr = (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(tArr.getClass().getComponentType(), this.f4700c));
        }
        java.lang.System.arraycopy(this.f4699b, 0, tArr, 0, this.f4700c);
        int length = tArr.length;
        int i5 = this.f4700c;
        if (length > i5) {
            tArr[i5] = null;
        }
        return tArr;
    }
}
