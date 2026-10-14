package c3;

/* JADX INFO: compiled from: ListBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b<E> extends b3.d<E> implements java.util.RandomAccess, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public E[] f2988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c3.b<E> f2992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c3.b<E> f2993f;

    /* JADX INFO: compiled from: ListBuilder.kt */
    public static final class a<E> implements java.util.ListIterator<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c3.b<E> f2994a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2996c;

        public a(c3.b<E> bVar, int i5) {
            m3.k.e(bVar, "list");
            this.f2994a = bVar;
            this.f2995b = i5;
            this.f2996c = -1;
        }

        @Override // java.util.ListIterator
        public void add(E e5) {
            c3.b<E> bVar = this.f2994a;
            int i5 = this.f2995b;
            this.f2995b = i5 + 1;
            bVar.add(i5, e5);
            this.f2996c = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f2995b < this.f2994a.f2990c;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f2995b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (this.f2995b >= this.f2994a.f2990c) {
                throw new java.util.NoSuchElementException();
            }
            int i5 = this.f2995b;
            this.f2995b = i5 + 1;
            this.f2996c = i5;
            return (E) this.f2994a.f2988a[this.f2994a.f2989b + this.f2996c];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f2995b;
        }

        @Override // java.util.ListIterator
        public E previous() {
            int i5 = this.f2995b;
            if (i5 <= 0) {
                throw new java.util.NoSuchElementException();
            }
            int i6 = i5 - 1;
            this.f2995b = i6;
            this.f2996c = i6;
            return (E) this.f2994a.f2988a[this.f2994a.f2989b + this.f2996c];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f2995b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i5 = this.f2996c;
            if (!(i5 != -1)) {
                throw new java.lang.IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
            }
            this.f2994a.remove(i5);
            this.f2995b = this.f2996c;
            this.f2996c = -1;
        }

        @Override // java.util.ListIterator
        public void set(E e5) {
            int i5 = this.f2996c;
            if (!(i5 != -1)) {
                throw new java.lang.IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
            }
            this.f2994a.set(i5, e5);
        }
    }

    public b(E[] eArr, int i5, int i6, boolean z4, c3.b<E> bVar, c3.b<E> bVar2) {
        this.f2988a = eArr;
        this.f2989b = i5;
        this.f2990c = i6;
        this.f2991d = z4;
        this.f2992e = bVar;
        this.f2993f = bVar2;
    }

    public final void D(int i5) {
        if (this.f2992e != null) {
            throw new java.lang.IllegalStateException();
        }
        if (i5 < 0) {
            throw new java.lang.OutOfMemoryError();
        }
        E[] eArr = this.f2988a;
        if (i5 > eArr.length) {
            this.f2988a = (E[]) c3.c.e(this.f2988a, b3.g.f2943d.a(eArr.length, i5));
        }
    }

    public final void F(int i5) {
        D(this.f2990c + i5);
    }

    public final void H(int i5, int i6) {
        F(i6);
        E[] eArr = this.f2988a;
        b3.j.d(eArr, eArr, i5 + i6, i5, this.f2989b + this.f2990c);
        this.f2990c += i6;
    }

    public final boolean I() {
        c3.b<E> bVar;
        return this.f2991d || ((bVar = this.f2993f) != null && bVar.f2991d);
    }

    public final E M(int i5) {
        c3.b<E> bVar = this.f2992e;
        if (bVar != null) {
            E eM = bVar.M(i5);
            this.f2990c--;
            return eM;
        }
        E[] eArr = this.f2988a;
        E e5 = eArr[i5];
        b3.j.d(eArr, eArr, i5, i5 + 1, this.f2989b + this.f2990c);
        c3.c.f(this.f2988a, (this.f2989b + this.f2990c) - 1);
        this.f2990c--;
        return e5;
    }

    public final void P(int i5, int i6) {
        c3.b<E> bVar = this.f2992e;
        if (bVar != null) {
            bVar.P(i5, i6);
        } else {
            E[] eArr = this.f2988a;
            b3.j.d(eArr, eArr, i5, i5 + i6, this.f2990c);
            E[] eArr2 = this.f2988a;
            int i7 = this.f2990c;
            c3.c.g(eArr2, i7 - i6, i7);
        }
        this.f2990c -= i6;
    }

    public final int T(int i5, int i6, java.util.Collection<? extends E> collection, boolean z4) {
        c3.b<E> bVar = this.f2992e;
        if (bVar != null) {
            int iT = bVar.T(i5, i6, collection, z4);
            this.f2990c -= iT;
            return iT;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < i6) {
            int i9 = i5 + i7;
            if (collection.contains(this.f2988a[i9]) == z4) {
                E[] eArr = this.f2988a;
                i7++;
                eArr[i8 + i5] = eArr[i9];
                i8++;
            } else {
                i7++;
            }
        }
        int i10 = i6 - i8;
        E[] eArr2 = this.f2988a;
        b3.j.d(eArr2, eArr2, i5 + i8, i6 + i5, this.f2990c);
        E[] eArr3 = this.f2988a;
        int i11 = this.f2990c;
        c3.c.g(eArr3, i11 - i10, i11);
        this.f2990c -= i10;
        return i10;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e5) {
        x();
        q(this.f2989b + this.f2990c, e5);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(java.util.Collection<? extends E> collection) {
        m3.k.e(collection, "elements");
        x();
        int size = collection.size();
        j(this.f2989b + this.f2990c, collection, size);
        return size > 0;
    }

    @Override // b3.d
    public int b() {
        return this.f2990c;
    }

    @Override // b3.d
    public E c(int i5) {
        x();
        b3.b.f2938a.a(i5, this.f2990c);
        return M(this.f2989b + i5);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        x();
        P(this.f2989b, this.f2990c);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(java.lang.Object obj) {
        return obj == this || ((obj instanceof java.util.List) && y((java.util.List) obj));
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i5) {
        b3.b.f2938a.a(i5, this.f2990c);
        return this.f2988a[this.f2989b + i5];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return c3.c.i(this.f2988a, this.f2989b, this.f2990c);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(java.lang.Object obj) {
        for (int i5 = 0; i5 < this.f2990c; i5++) {
            if (m3.k.a(this.f2988a[this.f2989b + i5], obj)) {
                return i5;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f2990c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public java.util.Iterator<E> iterator() {
        return new c3.b.a(this, 0);
    }

    public final void j(int i5, java.util.Collection<? extends E> collection, int i6) {
        c3.b<E> bVar = this.f2992e;
        if (bVar != null) {
            bVar.j(i5, collection, i6);
            this.f2988a = this.f2992e.f2988a;
            this.f2990c += i6;
        } else {
            H(i5, i6);
            java.util.Iterator<? extends E> it = collection.iterator();
            for (int i7 = 0; i7 < i6; i7++) {
                this.f2988a[i5 + i7] = it.next();
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(java.lang.Object obj) {
        for (int i5 = this.f2990c - 1; i5 >= 0; i5--) {
            if (m3.k.a(this.f2988a[this.f2989b + i5], obj)) {
                return i5;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public java.util.ListIterator<E> listIterator() {
        return new c3.b.a(this, 0);
    }

    public final void q(int i5, E e5) {
        c3.b<E> bVar = this.f2992e;
        if (bVar == null) {
            H(i5, 1);
            this.f2988a[i5] = e5;
        } else {
            bVar.q(i5, e5);
            this.f2988a = this.f2992e.f2988a;
            this.f2990c++;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(java.lang.Object obj) {
        x();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        x();
        return T(this.f2989b, this.f2990c, collection, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        x();
        return T(this.f2989b, this.f2990c, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i5, E e5) {
        x();
        b3.b.f2938a.a(i5, this.f2990c);
        E[] eArr = this.f2988a;
        int i6 = this.f2989b;
        E e6 = eArr[i6 + i5];
        eArr[i6 + i5] = e5;
        return e6;
    }

    @Override // java.util.AbstractList, java.util.List
    public java.util.List<E> subList(int i5, int i6) {
        b3.b.f2938a.c(i5, i6, this.f2990c);
        E[] eArr = this.f2988a;
        int i7 = this.f2989b + i5;
        int i8 = i6 - i5;
        boolean z4 = this.f2991d;
        c3.b<E> bVar = this.f2993f;
        return new c3.b(eArr, i7, i8, z4, this, bVar == null ? this : bVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        m3.k.e(tArr, "destination");
        int length = tArr.length;
        int i5 = this.f2990c;
        if (length < i5) {
            E[] eArr = this.f2988a;
            int i6 = this.f2989b;
            T[] tArr2 = (T[]) java.util.Arrays.copyOfRange(eArr, i6, i5 + i6, tArr.getClass());
            m3.k.d(tArr2, "copyOfRange(array, offse…h, destination.javaClass)");
            return tArr2;
        }
        E[] eArr2 = this.f2988a;
        int i7 = this.f2989b;
        b3.j.d(eArr2, tArr, 0, i7, i5 + i7);
        int length2 = tArr.length;
        int i8 = this.f2990c;
        if (length2 > i8) {
            tArr[i8] = null;
        }
        return tArr;
    }

    @Override // java.util.AbstractCollection
    public java.lang.String toString() {
        return c3.c.j(this.f2988a, this.f2989b, this.f2990c);
    }

    public final java.util.List<E> u() {
        if (this.f2992e != null) {
            throw new java.lang.IllegalStateException();
        }
        x();
        this.f2991d = true;
        return this;
    }

    public final void x() {
        if (I()) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public final boolean y(java.util.List<?> list) {
        return c3.c.h(this.f2988a, this.f2989b, this.f2990c, list);
    }

    @Override // java.util.AbstractList, java.util.List
    public java.util.ListIterator<E> listIterator(int i5) {
        b3.b.f2938a.b(i5, this.f2990c);
        return new c3.b.a(this, i5);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i5, E e5) {
        x();
        b3.b.f2938a.b(i5, this.f2990c);
        q(this.f2989b + i5, e5);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i5, java.util.Collection<? extends E> collection) {
        m3.k.e(collection, "elements");
        x();
        b3.b.f2938a.b(i5, this.f2990c);
        int size = collection.size();
        j(this.f2989b + i5, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public java.lang.Object[] toArray() {
        E[] eArr = this.f2988a;
        int i5 = this.f2989b;
        return b3.j.f(eArr, i5, this.f2990c + i5);
    }

    public b() {
        this(10);
    }

    public b(int i5) {
        this(c3.c.d(i5), 0, 0, false, null, null);
    }
}
