package a4;

/* JADX INFO: compiled from: WorkQueue.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f173b = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(a4.o.class, java.lang.Object.class, "lastScheduledTask");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f174c = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(a4.o.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f175d = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(a4.o.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f176e = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(a4.o.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicReferenceArray<a4.h> f177a = new java.util.concurrent.atomic.AtomicReferenceArray<>(com.alibaba.fastjson.asm.Opcodes.IOR);
    private volatile int blockingTasksInBuffer;
    private volatile int consumerIndex;
    private volatile java.lang.Object lastScheduledTask;
    private volatile int producerIndex;

    public final a4.h a(a4.h hVar, boolean z4) {
        if (z4) {
            return b(hVar);
        }
        a4.h hVar2 = (a4.h) f173b.getAndSet(this, hVar);
        if (hVar2 == null) {
            return null;
        }
        return b(hVar2);
    }

    public final a4.h b(a4.h hVar) {
        if (d() == 127) {
            return hVar;
        }
        if (hVar.f161b.a() == 1) {
            f176e.incrementAndGet(this);
        }
        int i5 = f174c.get(this) & 127;
        while (this.f177a.get(i5) != null) {
            java.lang.Thread.yield();
        }
        this.f177a.lazySet(i5, hVar);
        f174c.incrementAndGet(this);
        return null;
    }

    public final void c(a4.h hVar) {
        if (hVar != null) {
            if (hVar.f161b.a() == 1) {
                f176e.decrementAndGet(this);
            }
        }
    }

    public final int d() {
        return f174c.get(this) - f175d.get(this);
    }

    public final int e() {
        return f173b.get(this) != null ? d() + 1 : d();
    }

    public final void f(a4.d dVar) {
        a4.h hVar = (a4.h) f173b.getAndSet(this, null);
        if (hVar != null) {
            dVar.a(hVar);
        }
        while (j(dVar)) {
        }
    }

    public final a4.h g() {
        a4.h hVar = (a4.h) f173b.getAndSet(this, null);
        return hVar == null ? i() : hVar;
    }

    public final a4.h h() {
        return k(true);
    }

    public final a4.h i() {
        a4.h andSet;
        while (true) {
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f175d;
            int i5 = atomicIntegerFieldUpdater.get(this);
            if (i5 - f174c.get(this) == 0) {
                return null;
            }
            int i6 = i5 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i5, i5 + 1) && (andSet = this.f177a.getAndSet(i6, null)) != null) {
                c(andSet);
                return andSet;
            }
        }
    }

    public final boolean j(a4.d dVar) {
        a4.h hVarI = i();
        if (hVarI == null) {
            return false;
        }
        dVar.a(hVarI);
        return true;
    }

    public final a4.h k(boolean z4) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        a4.h hVar;
        do {
            atomicReferenceFieldUpdater = f173b;
            hVar = (a4.h) atomicReferenceFieldUpdater.get(this);
            if (hVar != null) {
                if ((hVar.f161b.a() == 1) == z4) {
                }
            }
            int i5 = f175d.get(this);
            int i6 = f174c.get(this);
            while (i5 != i6) {
                if (z4 && f176e.get(this) == 0) {
                    return null;
                }
                i6--;
                a4.h hVarM = m(i6, z4);
                if (hVarM != null) {
                    return hVarM;
                }
            }
            return null;
        } while (!a4.n.a(atomicReferenceFieldUpdater, this, hVar, null));
        return hVar;
    }

    public final a4.h l(int i5) {
        int i6 = f175d.get(this);
        int i7 = f174c.get(this);
        boolean z4 = i5 == 1;
        while (i6 != i7) {
            if (z4 && f176e.get(this) == 0) {
                return null;
            }
            int i8 = i6 + 1;
            a4.h hVarM = m(i6, z4);
            if (hVarM != null) {
                return hVarM;
            }
            i6 = i8;
        }
        return null;
    }

    public final a4.h m(int i5, boolean z4) {
        int i6 = i5 & 127;
        a4.h hVar = this.f177a.get(i6);
        if (hVar != null) {
            if ((hVar.f161b.a() == 1) == z4 && this.f177a.compareAndSet(i6, hVar, null)) {
                if (z4) {
                    f176e.decrementAndGet(this);
                }
                return hVar;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long n(int i5, m3.q<a4.h> qVar) {
        a4.h hVarL;
        T t5;
        a4.h hVarI;
        if (i5 == 3) {
            hVarI = i();
        } else {
            hVarL = l(i5);
        }
        if (t5 == 0) {
            t5 = hVarL;
            t5 = hVarI;
            return o(i5, qVar);
        }
        t5 = hVarL;
        t5 = hVarI;
        qVar.f5194a = t5;
        return -1L;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, a4.h, java.lang.Object] */
    public final long o(int i5, m3.q<a4.h> qVar) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? r5;
        do {
            atomicReferenceFieldUpdater = f173b;
            r5 = (a4.h) atomicReferenceFieldUpdater.get(this);
            if (r5 == 0) {
                return -2L;
            }
            if (((r5.f161b.a() == 1 ? 1 : 2) & i5) == 0) {
                return -2L;
            }
            long jA = a4.l.f169f.a() - r5.f160a;
            long j5 = a4.l.f165b;
            if (jA < j5) {
                return j5 - jA;
            }
        } while (!a4.n.a(atomicReferenceFieldUpdater, this, r5, null));
        qVar.f5194a = r5;
        return -1L;
    }
}
