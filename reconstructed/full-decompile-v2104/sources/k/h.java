package k;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h<T> implements k.g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object[] f4835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4836b;

    public h(int i5) {
        if (i5 <= 0) {
            throw new java.lang.IllegalArgumentException("The max pool size must be > 0");
        }
        this.f4835a = new java.lang.Object[i5];
    }

    @Override // k.g
    public boolean a(T t5) {
        int i5 = this.f4836b;
        java.lang.Object[] objArr = this.f4835a;
        if (i5 >= objArr.length) {
            return false;
        }
        objArr[i5] = t5;
        this.f4836b = i5 + 1;
        return true;
    }

    @Override // k.g
    public T b() {
        int i5 = this.f4836b;
        if (i5 <= 0) {
            return null;
        }
        int i6 = i5 - 1;
        java.lang.Object[] objArr = this.f4835a;
        T t5 = (T) objArr[i6];
        objArr[i6] = null;
        this.f4836b = i5 - 1;
        return t5;
    }

    @Override // k.g
    public void c(T[] tArr, int i5) {
        if (i5 > tArr.length) {
            i5 = tArr.length;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            T t5 = tArr[i6];
            int i7 = this.f4836b;
            java.lang.Object[] objArr = this.f4835a;
            if (i7 < objArr.length) {
                objArr[i7] = t5;
                this.f4836b = i7 + 1;
            }
        }
    }
}
