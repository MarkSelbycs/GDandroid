package f2;

/* JADX INFO: compiled from: JSONArray.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements f2.b, f2.i<java.lang.Integer>, java.util.List<java.lang.Object>, java.util.RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.List<java.lang.Object> f4196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f2.f f4197b;

    public e() {
        this(10);
    }

    public static /* synthetic */ void y(g2.d dVar, v1.i iVar, java.lang.Object obj, int i5) {
        dVar.l(new y1.d<>(java.lang.Integer.valueOf(i5), obj), iVar);
    }

    public f2.e D(java.lang.Object obj) {
        add(obj);
        return this;
    }

    public java.lang.Object F(int i5, java.lang.Object obj, v1.i<y1.d<java.lang.Integer, java.lang.Object>> iVar) {
        if (iVar != null) {
            y1.d<java.lang.Integer, java.lang.Object> dVar = new y1.d<>(java.lang.Integer.valueOf(i5), obj);
            if (iVar.accept(dVar)) {
                obj = dVar.e();
            }
        }
        if (i5 >= size()) {
            add(i5, obj);
        }
        return this.f4196a.set(i5, f2.p.n(obj, this.f4197b));
    }

    public java.io.Writer H(java.io.Writer writer, int i5, int i6, v1.i<y1.d<java.lang.Object, java.lang.Object>> iVar) throws f2.h {
        g2.d dVarC = g2.d.i(writer, i5, i6, this.f4197b).c();
        l1.c.e(this, new f2.d(dVarC, iVar));
        dVarC.f();
        return writer;
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(java.lang.Object obj) {
        return u(f2.p.n(obj, this.f4197b), null);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(java.util.Collection<?> collection) {
        if (l1.c.g(collection)) {
            return false;
        }
        java.util.Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f4196a.clear();
    }

    public java.lang.Object clone() throws java.lang.CloneNotSupportedException {
        f2.e eVar = (f2.e) super.clone();
        eVar.f4196a = (java.util.List) e2.p.a(this.f4196a);
        return eVar;
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(java.lang.Object obj) {
        return this.f4196a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(java.util.Collection<?> collection) {
        return this.f4196a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f2.e eVar = (f2.e) obj;
        java.util.List<java.lang.Object> list = this.f4196a;
        if (list == null) {
            return eVar.f4196a == null;
        }
        return list.equals(eVar.f4196a);
    }

    @Override // java.util.List
    public java.lang.Object get(int i5) {
        return this.f4196a.get(i5);
    }

    @Override // f2.i
    public f2.f h() {
        return this.f4197b;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        java.util.List<java.lang.Object> list = this.f4196a;
        return 31 + (list == null ? 0 : list.hashCode());
    }

    @Override // java.util.List
    public int indexOf(java.lang.Object obj) {
        return this.f4196a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f4196a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public java.util.Iterator<java.lang.Object> iterator() {
        return this.f4196a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(java.lang.Object obj) {
        return this.f4196a.lastIndexOf(obj);
    }

    @Override // java.util.List
    public java.util.ListIterator<java.lang.Object> listIterator() {
        return this.f4196a.listIterator();
    }

    @Override // f2.b
    public java.io.Writer r(java.io.Writer writer, int i5, int i6) throws f2.h {
        return H(writer, i5, i6, null);
    }

    @Override // java.util.List
    public java.lang.Object remove(int i5) {
        if (i5 < 0 || i5 >= size()) {
            return null;
        }
        return this.f4196a.remove(i5);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(java.util.Collection<?> collection) {
        return this.f4196a.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(java.util.Collection<?> collection) {
        return this.f4196a.retainAll(collection);
    }

    @Override // java.util.List
    public java.lang.Object set(int i5, java.lang.Object obj) {
        return F(i5, obj, null);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f4196a.size();
    }

    @Override // java.util.List
    public java.util.List<java.lang.Object> subList(int i5, int i6) {
        return this.f4196a.subList(i5, i6);
    }

    @Override // java.util.List, java.util.Collection
    public java.lang.Object[] toArray() {
        return this.f4196a.toArray();
    }

    public java.lang.String toString() {
        return Y(0);
    }

    public boolean u(java.lang.Object obj, v1.i<y1.a<java.lang.Object>> iVar) {
        if (iVar != null) {
            y1.c cVar = new y1.c(obj);
            if (!iVar.accept(cVar)) {
                return false;
            }
            obj = cVar.get();
        }
        return this.f4196a.add(obj);
    }

    @Override // s1.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public java.lang.Object e(java.lang.Integer num, java.lang.Object obj) {
        return (num.intValue() < 0 || num.intValue() >= size()) ? obj : this.f4196a.get(num.intValue());
    }

    public e(int i5) {
        this(i5, f2.f.b());
    }

    @Override // java.util.List
    public void add(int i5, java.lang.Object obj) {
        if (i5 < 0) {
            throw new f2.h("JSONArray[{}] not found.", java.lang.Integer.valueOf(i5));
        }
        if (i5 < size()) {
            f2.a.e(obj);
            this.f4196a.add(i5, f2.p.n(obj, this.f4197b));
        } else {
            while (i5 != size()) {
                add(f2.j.f4206a);
            }
            D(obj);
        }
    }

    @Override // java.util.List
    public java.util.ListIterator<java.lang.Object> listIterator(int i5) {
        return this.f4196a.listIterator(i5);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(java.lang.Object obj) {
        return this.f4196a.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) ((java.lang.Object[]) f2.g.c(this, tArr.getClass().getComponentType()));
    }

    public e(f2.f fVar) {
        this(10, fVar);
    }

    public e(int i5, f2.f fVar) {
        this.f4196a = new java.util.ArrayList(i5);
        this.f4197b = (f2.f) e2.p.d(fVar, f2.c.f4193a);
    }

    @Override // java.util.List
    public boolean addAll(int i5, java.util.Collection<? extends java.lang.Object> collection) {
        if (l1.c.g(collection)) {
            return false;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(collection.size());
        java.util.Iterator<? extends java.lang.Object> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(f2.p.n(it.next(), this.f4197b));
        }
        return this.f4196a.addAll(i5, arrayList);
    }

    public e(java.lang.Object obj) throws f2.h {
        this(obj, true);
    }

    public e(java.lang.Object obj, boolean z4) throws f2.h {
        this(obj, f2.f.b().D(z4));
    }

    public e(java.lang.Object obj, f2.f fVar) throws f2.h {
        this(obj, fVar, null);
    }

    public e(java.lang.Object obj, f2.f fVar, v1.i<y1.a<java.lang.Object>> iVar) throws f2.h {
        this(10, fVar);
        f2.q.i(obj).a(this, iVar);
    }
}
