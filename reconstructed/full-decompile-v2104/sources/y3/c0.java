package y3;

/* JADX INFO: compiled from: ResizableAtomicArray.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c0<T> {
    private volatile java.util.concurrent.atomic.AtomicReferenceArray<T> array;

    public c0(int i5) {
        this.array = new java.util.concurrent.atomic.AtomicReferenceArray<>(i5);
    }

    public final int a() {
        return this.array.length();
    }

    public final T b(int i5) {
        java.util.concurrent.atomic.AtomicReferenceArray<T> atomicReferenceArray = this.array;
        if (i5 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i5);
        }
        return null;
    }

    public final void c(int i5, T t5) {
        java.util.concurrent.atomic.AtomicReferenceArray<T> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i5 < length) {
            atomicReferenceArray.set(i5, t5);
            return;
        }
        java.util.concurrent.atomic.AtomicReferenceArray<T> atomicReferenceArray2 = new java.util.concurrent.atomic.AtomicReferenceArray<>(p3.m.a(i5 + 1, length * 2));
        for (int i6 = 0; i6 < length; i6++) {
            atomicReferenceArray2.set(i6, atomicReferenceArray.get(i6));
        }
        atomicReferenceArray2.set(i5, t5);
        this.array = atomicReferenceArray2;
    }
}
