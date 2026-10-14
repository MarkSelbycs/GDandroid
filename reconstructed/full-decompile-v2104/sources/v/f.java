package v;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f<T> implements v.e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object[] f6381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6382b;

    public f(int i5) {
        if (i5 <= 0) {
            throw new java.lang.IllegalArgumentException("The max pool size must be > 0");
        }
        this.f6381a = new java.lang.Object[i5];
    }

    @Override // v.e
    public boolean a(T t5) {
        if (c(t5)) {
            throw new java.lang.IllegalStateException("Already in the pool!");
        }
        int i5 = this.f6382b;
        java.lang.Object[] objArr = this.f6381a;
        if (i5 >= objArr.length) {
            return false;
        }
        objArr[i5] = t5;
        this.f6382b = i5 + 1;
        return true;
    }

    @Override // v.e
    public T b() {
        int i5 = this.f6382b;
        if (i5 <= 0) {
            return null;
        }
        int i6 = i5 - 1;
        java.lang.Object[] objArr = this.f6381a;
        T t5 = (T) objArr[i6];
        objArr[i6] = null;
        this.f6382b = i5 - 1;
        return t5;
    }

    public final boolean c(T t5) {
        for (int i5 = 0; i5 < this.f6382b; i5++) {
            if (this.f6381a[i5] == t5) {
                return true;
            }
        }
        return false;
    }
}
