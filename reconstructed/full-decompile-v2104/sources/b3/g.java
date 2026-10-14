package b3;

/* JADX INFO: compiled from: ArrayDeque.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g<E> extends b3.d<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b3.g.a f2943d = new b3.g.a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.Object[] f2944e = new java.lang.Object[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.Object[] f2946b = f2944e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2947c;

    /* JADX INFO: compiled from: ArrayDeque.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final int a(int i5, int i6) {
            int i7 = i5 + (i5 >> 1);
            if (i7 - i6 < 0) {
                i7 = i6;
            }
            if (i7 - 2147483639 > 0) {
                return i6 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            return i7;
        }
    }

    public final int D(int i5) {
        java.lang.Object[] objArr = this.f2946b;
        return i5 >= objArr.length ? i5 - objArr.length : i5;
    }

    public final E F() {
        if (isEmpty()) {
            throw new java.util.NoSuchElementException("ArrayDeque is empty.");
        }
        java.lang.Object[] objArr = this.f2946b;
        int i5 = this.f2945a;
        E e5 = (E) objArr[i5];
        objArr[i5] = null;
        this.f2945a = x(i5);
        this.f2947c = size() - 1;
        return e5;
    }

    public final E H() {
        if (isEmpty()) {
            return null;
        }
        return F();
    }

    public final E I() {
        if (isEmpty()) {
            throw new java.util.NoSuchElementException("ArrayDeque is empty.");
        }
        int iD = D(this.f2945a + b3.o.f(this));
        java.lang.Object[] objArr = this.f2946b;
        E e5 = (E) objArr[iD];
        objArr[iD] = null;
        this.f2947c = size() - 1;
        return e5;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e5) {
        f(e5);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(java.util.Collection<? extends E> collection) {
        m3.k.e(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        u(size() + collection.size());
        h(D(this.f2945a + size()), collection);
        return true;
    }

    @Override // b3.d
    public int b() {
        return this.f2947c;
    }

    @Override // b3.d
    public E c(int i5) {
        b3.b.f2938a.a(i5, size());
        if (i5 == b3.o.f(this)) {
            return I();
        }
        if (i5 == 0) {
            return F();
        }
        int iD = D(this.f2945a + i5);
        E e5 = (E) this.f2946b[iD];
        if (i5 < (size() >> 1)) {
            int i6 = this.f2945a;
            if (iD >= i6) {
                java.lang.Object[] objArr = this.f2946b;
                b3.j.d(objArr, objArr, i6 + 1, i6, iD);
            } else {
                java.lang.Object[] objArr2 = this.f2946b;
                b3.j.d(objArr2, objArr2, 1, 0, iD);
                java.lang.Object[] objArr3 = this.f2946b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i7 = this.f2945a;
                b3.j.d(objArr3, objArr3, i7 + 1, i7, objArr3.length - 1);
            }
            java.lang.Object[] objArr4 = this.f2946b;
            int i8 = this.f2945a;
            objArr4[i8] = null;
            this.f2945a = x(i8);
        } else {
            int iD2 = D(this.f2945a + b3.o.f(this));
            if (iD <= iD2) {
                java.lang.Object[] objArr5 = this.f2946b;
                b3.j.d(objArr5, objArr5, iD, iD + 1, iD2 + 1);
            } else {
                java.lang.Object[] objArr6 = this.f2946b;
                b3.j.d(objArr6, objArr6, iD, iD + 1, objArr6.length);
                java.lang.Object[] objArr7 = this.f2946b;
                objArr7[objArr7.length - 1] = objArr7[0];
                b3.j.d(objArr7, objArr7, 0, 1, iD2 + 1);
            }
            this.f2946b[iD2] = null;
        }
        this.f2947c = size() - 1;
        return e5;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int iD = D(this.f2945a + size());
        int i5 = this.f2945a;
        if (i5 < iD) {
            b3.j.h(this.f2946b, null, i5, iD);
        } else if (!isEmpty()) {
            java.lang.Object[] objArr = this.f2946b;
            b3.j.h(objArr, null, this.f2945a, objArr.length);
            b3.j.h(this.f2946b, null, 0, iD);
        }
        this.f2945a = 0;
        this.f2947c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(java.lang.Object obj) {
        return indexOf(obj) != -1;
    }

    public final void e(E e5) {
        u(size() + 1);
        int iQ = q(this.f2945a);
        this.f2945a = iQ;
        this.f2946b[iQ] = e5;
        this.f2947c = size() + 1;
    }

    public final void f(E e5) {
        u(size() + 1);
        this.f2946b[D(this.f2945a + size())] = e5;
        this.f2947c = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i5) {
        b3.b.f2938a.a(i5, size());
        return (E) this.f2946b[D(this.f2945a + i5)];
    }

    public final void h(int i5, java.util.Collection<? extends E> collection) {
        java.util.Iterator<? extends E> it = collection.iterator();
        int length = this.f2946b.length;
        while (i5 < length && it.hasNext()) {
            this.f2946b[i5] = it.next();
            i5++;
        }
        int i6 = this.f2945a;
        for (int i7 = 0; i7 < i6 && it.hasNext(); i7++) {
            this.f2946b[i7] = it.next();
        }
        this.f2947c = size() + collection.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(java.lang.Object obj) {
        int i5;
        int iD = D(this.f2945a + size());
        int length = this.f2945a;
        if (length < iD) {
            while (length < iD) {
                if (m3.k.a(obj, this.f2946b[length])) {
                    i5 = this.f2945a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iD) {
            return -1;
        }
        int length2 = this.f2946b.length;
        while (length < length2) {
            if (m3.k.a(obj, this.f2946b[length])) {
                i5 = this.f2945a;
            } else {
                length++;
            }
        }
        for (int i6 = 0; i6 < iD; i6++) {
            if (m3.k.a(obj, this.f2946b[i6])) {
                length = i6 + this.f2946b.length;
                i5 = this.f2945a;
            }
        }
        return -1;
        return length - i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final void j(int i5) {
        java.lang.Object[] objArr = new java.lang.Object[i5];
        java.lang.Object[] objArr2 = this.f2946b;
        b3.j.d(objArr2, objArr, 0, this.f2945a, objArr2.length);
        java.lang.Object[] objArr3 = this.f2946b;
        int length = objArr3.length;
        int i6 = this.f2945a;
        b3.j.d(objArr3, objArr, length - i6, 0, i6);
        this.f2945a = 0;
        this.f2946b = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(java.lang.Object obj) {
        int iL;
        int i5;
        int iD = D(this.f2945a + size());
        int i6 = this.f2945a;
        if (i6 < iD) {
            iL = iD - 1;
            if (i6 <= iL) {
                while (!m3.k.a(obj, this.f2946b[iL])) {
                    if (iL != i6) {
                        iL--;
                    }
                }
                i5 = this.f2945a;
                return iL - i5;
            }
            return -1;
        }
        if (i6 > iD) {
            for (int i7 = iD - 1; -1 < i7; i7--) {
                if (m3.k.a(obj, this.f2946b[i7])) {
                    iL = i7 + this.f2946b.length;
                    i5 = this.f2945a;
                    return iL - i5;
                }
            }
            iL = b3.k.l(this.f2946b);
            int i8 = this.f2945a;
            if (i8 <= iL) {
                while (!m3.k.a(obj, this.f2946b[iL])) {
                    if (iL != i8) {
                        iL--;
                    }
                }
                i5 = this.f2945a;
                return iL - i5;
            }
        }
        return -1;
    }

    public final int q(int i5) {
        return i5 == 0 ? b3.k.l(this.f2946b) : i5 - 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(java.lang.Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        int iD;
        m3.k.e(collection, "elements");
        boolean z4 = false;
        z4 = false;
        z4 = false;
        if (!isEmpty()) {
            if ((this.f2946b.length == 0) == false) {
                int iD2 = D(this.f2945a + size());
                int i5 = this.f2945a;
                if (i5 < iD2) {
                    iD = i5;
                    while (i5 < iD2) {
                        java.lang.Object obj = this.f2946b[i5];
                        if (!collection.contains(obj)) {
                            this.f2946b[iD] = obj;
                            iD++;
                        } else {
                            z4 = true;
                        }
                        i5++;
                    }
                    b3.j.h(this.f2946b, null, iD, iD2);
                } else {
                    int length = this.f2946b.length;
                    boolean z5 = false;
                    int i6 = i5;
                    while (i5 < length) {
                        java.lang.Object[] objArr = this.f2946b;
                        java.lang.Object obj2 = objArr[i5];
                        objArr[i5] = null;
                        if (!collection.contains(obj2)) {
                            this.f2946b[i6] = obj2;
                            i6++;
                        } else {
                            z5 = true;
                        }
                        i5++;
                    }
                    iD = D(i6);
                    for (int i7 = 0; i7 < iD2; i7++) {
                        java.lang.Object[] objArr2 = this.f2946b;
                        java.lang.Object obj3 = objArr2[i7];
                        objArr2[i7] = null;
                        if (!collection.contains(obj3)) {
                            this.f2946b[iD] = obj3;
                            iD = x(iD);
                        } else {
                            z5 = true;
                        }
                    }
                    z4 = z5;
                }
                if (z4) {
                    this.f2947c = y(iD - this.f2945a);
                }
            }
        }
        return z4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        int iD;
        m3.k.e(collection, "elements");
        boolean z4 = false;
        z4 = false;
        z4 = false;
        if (!isEmpty()) {
            if ((this.f2946b.length == 0) == false) {
                int iD2 = D(this.f2945a + size());
                int i5 = this.f2945a;
                if (i5 < iD2) {
                    iD = i5;
                    while (i5 < iD2) {
                        java.lang.Object obj = this.f2946b[i5];
                        if (collection.contains(obj)) {
                            this.f2946b[iD] = obj;
                            iD++;
                        } else {
                            z4 = true;
                        }
                        i5++;
                    }
                    b3.j.h(this.f2946b, null, iD, iD2);
                } else {
                    int length = this.f2946b.length;
                    boolean z5 = false;
                    int i6 = i5;
                    while (i5 < length) {
                        java.lang.Object[] objArr = this.f2946b;
                        java.lang.Object obj2 = objArr[i5];
                        objArr[i5] = null;
                        if (collection.contains(obj2)) {
                            this.f2946b[i6] = obj2;
                            i6++;
                        } else {
                            z5 = true;
                        }
                        i5++;
                    }
                    iD = D(i6);
                    for (int i7 = 0; i7 < iD2; i7++) {
                        java.lang.Object[] objArr2 = this.f2946b;
                        java.lang.Object obj3 = objArr2[i7];
                        objArr2[i7] = null;
                        if (collection.contains(obj3)) {
                            this.f2946b[iD] = obj3;
                            iD = x(iD);
                        } else {
                            z5 = true;
                        }
                    }
                    z4 = z5;
                }
                if (z4) {
                    this.f2947c = y(iD - this.f2945a);
                }
            }
        }
        return z4;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i5, E e5) {
        b3.b.f2938a.a(i5, size());
        int iD = D(this.f2945a + i5);
        java.lang.Object[] objArr = this.f2946b;
        E e6 = (E) objArr[iD];
        objArr[iD] = e5;
        return e6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        m3.k.e(tArr, "array");
        if (tArr.length < size()) {
            tArr = (T[]) b3.h.a(tArr, size());
        }
        int iD = D(this.f2945a + size());
        int i5 = this.f2945a;
        if (i5 < iD) {
            b3.j.e(this.f2946b, tArr, 0, i5, iD, 2, null);
        } else if (!isEmpty()) {
            java.lang.Object[] objArr = this.f2946b;
            b3.j.d(objArr, tArr, 0, this.f2945a, objArr.length);
            java.lang.Object[] objArr2 = this.f2946b;
            b3.j.d(objArr2, tArr, objArr2.length - this.f2945a, 0, iD);
        }
        if (tArr.length > size()) {
            tArr[size()] = null;
        }
        return tArr;
    }

    public final void u(int i5) {
        if (i5 < 0) {
            throw new java.lang.IllegalStateException("Deque is too big.");
        }
        java.lang.Object[] objArr = this.f2946b;
        if (i5 <= objArr.length) {
            return;
        }
        if (objArr == f2944e) {
            this.f2946b = new java.lang.Object[p3.m.a(i5, 10)];
        } else {
            j(f2943d.a(objArr.length, i5));
        }
    }

    public final int x(int i5) {
        if (i5 == b3.k.l(this.f2946b)) {
            return 0;
        }
        return i5 + 1;
    }

    public final int y(int i5) {
        return i5 < 0 ? i5 + this.f2946b.length : i5;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i5, E e5) {
        b3.b.f2938a.b(i5, size());
        if (i5 == size()) {
            f(e5);
            return;
        }
        if (i5 == 0) {
            e(e5);
            return;
        }
        u(size() + 1);
        int iD = D(this.f2945a + i5);
        if (i5 < ((size() + 1) >> 1)) {
            int iQ = q(iD);
            int iQ2 = q(this.f2945a);
            int i6 = this.f2945a;
            if (iQ >= i6) {
                java.lang.Object[] objArr = this.f2946b;
                objArr[iQ2] = objArr[i6];
                b3.j.d(objArr, objArr, i6, i6 + 1, iQ + 1);
            } else {
                java.lang.Object[] objArr2 = this.f2946b;
                b3.j.d(objArr2, objArr2, i6 - 1, i6, objArr2.length);
                java.lang.Object[] objArr3 = this.f2946b;
                objArr3[objArr3.length - 1] = objArr3[0];
                b3.j.d(objArr3, objArr3, 0, 1, iQ + 1);
            }
            this.f2946b[iQ] = e5;
            this.f2945a = iQ2;
        } else {
            int iD2 = D(this.f2945a + size());
            if (iD < iD2) {
                java.lang.Object[] objArr4 = this.f2946b;
                b3.j.d(objArr4, objArr4, iD + 1, iD, iD2);
            } else {
                java.lang.Object[] objArr5 = this.f2946b;
                b3.j.d(objArr5, objArr5, 1, 0, iD2);
                java.lang.Object[] objArr6 = this.f2946b;
                objArr6[0] = objArr6[objArr6.length - 1];
                b3.j.d(objArr6, objArr6, iD + 1, iD, objArr6.length - 1);
            }
            this.f2946b[iD] = e5;
        }
        this.f2947c = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i5, java.util.Collection<? extends E> collection) {
        m3.k.e(collection, "elements");
        b3.b.f2938a.b(i5, size());
        if (collection.isEmpty()) {
            return false;
        }
        if (i5 == size()) {
            return addAll(collection);
        }
        u(size() + collection.size());
        int iD = D(this.f2945a + size());
        int iD2 = D(this.f2945a + i5);
        int size = collection.size();
        if (i5 < ((size() + 1) >> 1)) {
            int i6 = this.f2945a;
            int length = i6 - size;
            if (iD2 < i6) {
                java.lang.Object[] objArr = this.f2946b;
                b3.j.d(objArr, objArr, length, i6, objArr.length);
                if (size >= iD2) {
                    java.lang.Object[] objArr2 = this.f2946b;
                    b3.j.d(objArr2, objArr2, objArr2.length - size, 0, iD2);
                } else {
                    java.lang.Object[] objArr3 = this.f2946b;
                    b3.j.d(objArr3, objArr3, objArr3.length - size, 0, size);
                    java.lang.Object[] objArr4 = this.f2946b;
                    b3.j.d(objArr4, objArr4, 0, size, iD2);
                }
            } else if (length >= 0) {
                java.lang.Object[] objArr5 = this.f2946b;
                b3.j.d(objArr5, objArr5, length, i6, iD2);
            } else {
                java.lang.Object[] objArr6 = this.f2946b;
                length += objArr6.length;
                int i7 = iD2 - i6;
                int length2 = objArr6.length - length;
                if (length2 >= i7) {
                    b3.j.d(objArr6, objArr6, length, i6, iD2);
                } else {
                    b3.j.d(objArr6, objArr6, length, i6, i6 + length2);
                    java.lang.Object[] objArr7 = this.f2946b;
                    b3.j.d(objArr7, objArr7, 0, this.f2945a + length2, iD2);
                }
            }
            this.f2945a = length;
            h(y(iD2 - size), collection);
        } else {
            int i8 = iD2 + size;
            if (iD2 < iD) {
                int i9 = size + iD;
                java.lang.Object[] objArr8 = this.f2946b;
                if (i9 <= objArr8.length) {
                    b3.j.d(objArr8, objArr8, i8, iD2, iD);
                } else if (i8 >= objArr8.length) {
                    b3.j.d(objArr8, objArr8, i8 - objArr8.length, iD2, iD);
                } else {
                    int length3 = iD - (i9 - objArr8.length);
                    b3.j.d(objArr8, objArr8, 0, length3, iD);
                    java.lang.Object[] objArr9 = this.f2946b;
                    b3.j.d(objArr9, objArr9, i8, iD2, length3);
                }
            } else {
                java.lang.Object[] objArr10 = this.f2946b;
                b3.j.d(objArr10, objArr10, size, 0, iD);
                java.lang.Object[] objArr11 = this.f2946b;
                if (i8 >= objArr11.length) {
                    b3.j.d(objArr11, objArr11, i8 - objArr11.length, iD2, objArr11.length);
                } else {
                    b3.j.d(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    java.lang.Object[] objArr12 = this.f2946b;
                    b3.j.d(objArr12, objArr12, i8, iD2, objArr12.length - size);
                }
            }
            h(iD2, collection);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public java.lang.Object[] toArray() {
        return toArray(new java.lang.Object[size()]);
    }
}
