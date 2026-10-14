package m;

/* JADX INFO: compiled from: DirectedAcyclicGraph.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v.e<java.util.ArrayList<T>> f5152a = new v.f(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j.g<T, java.util.ArrayList<T>> f5153b = new j.g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<T> f5154c = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.HashSet<T> f5155d = new java.util.HashSet<>();

    public void a(T t5, T t6) {
        if (!this.f5153b.containsKey(t5) || !this.f5153b.containsKey(t6)) {
            throw new java.lang.IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        java.util.ArrayList<T> arrayListF = this.f5153b.get(t5);
        if (arrayListF == null) {
            arrayListF = f();
            this.f5153b.put(t5, arrayListF);
        }
        arrayListF.add(t6);
    }

    public void b(T t5) {
        if (this.f5153b.containsKey(t5)) {
            return;
        }
        this.f5153b.put(t5, null);
    }

    public void c() {
        int size = this.f5153b.size();
        for (int i5 = 0; i5 < size; i5++) {
            java.util.ArrayList<T> arrayListM = this.f5153b.m(i5);
            if (arrayListM != null) {
                i(arrayListM);
            }
        }
        this.f5153b.clear();
    }

    public boolean d(T t5) {
        return this.f5153b.containsKey(t5);
    }

    public final void e(T t5, java.util.ArrayList<T> arrayList, java.util.HashSet<T> hashSet) {
        if (arrayList.contains(t5)) {
            return;
        }
        if (hashSet.contains(t5)) {
            throw new java.lang.RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t5);
        java.util.ArrayList<T> arrayList2 = this.f5153b.get(t5);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i5 = 0; i5 < size; i5++) {
                e(arrayList2.get(i5), arrayList, hashSet);
            }
        }
        hashSet.remove(t5);
        arrayList.add(t5);
    }

    public final java.util.ArrayList<T> f() {
        java.util.ArrayList<T> arrayListB = this.f5152a.b();
        return arrayListB == null ? new java.util.ArrayList<>() : arrayListB;
    }

    public java.util.ArrayList<T> g() {
        this.f5154c.clear();
        this.f5155d.clear();
        int size = this.f5153b.size();
        for (int i5 = 0; i5 < size; i5++) {
            e(this.f5153b.i(i5), this.f5154c, this.f5155d);
        }
        return this.f5154c;
    }

    public boolean h(T t5) {
        int size = this.f5153b.size();
        for (int i5 = 0; i5 < size; i5++) {
            java.util.ArrayList<T> arrayListM = this.f5153b.m(i5);
            if (arrayListM != null && arrayListM.contains(t5)) {
                return true;
            }
        }
        return false;
    }

    public final void i(java.util.ArrayList<T> arrayList) {
        arrayList.clear();
        this.f5152a.a(arrayList);
    }
}
