package b1;

/* JADX INFO: compiled from: AbstractFuture.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<V> implements r2.a<V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f2903d = java.lang.Boolean.parseBoolean(java.lang.System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.logging.Logger f2904e = java.util.logging.Logger.getLogger(b1.a.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b1.a.b f2905f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.lang.Object f2906g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile java.lang.Object f2907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile b1.a.e f2908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile b1.a.i f2909c;

    /* JADX INFO: renamed from: b1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractFuture.java */
    public static /* synthetic */ class C0029a {
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static abstract class b {
        public b() {
        }

        public /* synthetic */ b(b1.a.C0029a c0029a) {
            this();
        }

        public abstract boolean a(b1.a<?> aVar, b1.a.e eVar, b1.a.e eVar2);

        public abstract boolean b(b1.a<?> aVar, java.lang.Object obj, java.lang.Object obj2);

        public abstract boolean c(b1.a<?> aVar, b1.a.i iVar, b1.a.i iVar2);

        public abstract void d(b1.a.i iVar, b1.a.i iVar2);

        public abstract void e(b1.a.i iVar, java.lang.Thread thread);
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b1.a.c f2910c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b1.a.c f2911d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f2912a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Throwable f2913b;

        static {
            if (b1.a.f2903d) {
                f2911d = null;
                f2910c = null;
            } else {
                f2911d = new b1.a.c(false, null);
                f2910c = new b1.a.c(true, null);
            }
        }

        public c(boolean z4, java.lang.Throwable th) {
            this.f2912a = z4;
            this.f2913b = th;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b1.a.d f2914b = new b1.a.d(new b1.a.d.C0030a("Failure occurred while trying to finish a future."));

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Throwable f2915a;

        /* JADX INFO: renamed from: b1.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractFuture.java */
        public class C0030a extends java.lang.Throwable {
            public C0030a(java.lang.String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized java.lang.Throwable fillInStackTrace() {
                return this;
            }
        }

        public d(java.lang.Throwable th) {
            this.f2915a = (java.lang.Throwable) b1.a.e(th);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b1.a.e f2916d = new b1.a.e(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Runnable f2917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.concurrent.Executor f2918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public b1.a.e f2919c;

        public e(java.lang.Runnable runnable, java.util.concurrent.Executor executor) {
            this.f2917a = runnable;
            this.f2918b = executor;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class f extends b1.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a.i, java.lang.Thread> f2920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a.i, b1.a.i> f2921b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a, b1.a.i> f2922c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a, b1.a.e> f2923d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a, java.lang.Object> f2924e;

        public f(java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a.i, java.lang.Thread> atomicReferenceFieldUpdater, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a.i, b1.a.i> atomicReferenceFieldUpdater2, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a, b1.a.i> atomicReferenceFieldUpdater3, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a, b1.a.e> atomicReferenceFieldUpdater4, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<b1.a, java.lang.Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.f2920a = atomicReferenceFieldUpdater;
            this.f2921b = atomicReferenceFieldUpdater2;
            this.f2922c = atomicReferenceFieldUpdater3;
            this.f2923d = atomicReferenceFieldUpdater4;
            this.f2924e = atomicReferenceFieldUpdater5;
        }

        @Override // b1.a.b
        public boolean a(b1.a<?> aVar, b1.a.e eVar, b1.a.e eVar2) {
            return a4.n.a(this.f2923d, aVar, eVar, eVar2);
        }

        @Override // b1.a.b
        public boolean b(b1.a<?> aVar, java.lang.Object obj, java.lang.Object obj2) {
            return a4.n.a(this.f2924e, aVar, obj, obj2);
        }

        @Override // b1.a.b
        public boolean c(b1.a<?> aVar, b1.a.i iVar, b1.a.i iVar2) {
            return a4.n.a(this.f2922c, aVar, iVar, iVar2);
        }

        @Override // b1.a.b
        public void d(b1.a.i iVar, b1.a.i iVar2) {
            this.f2921b.lazySet(iVar, iVar2);
        }

        @Override // b1.a.b
        public void e(b1.a.i iVar, java.lang.Thread thread) {
            this.f2920a.lazySet(iVar, thread);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class g<V> implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b1.a<V> f2925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r2.a<? extends V> f2926b;

        public g(b1.a<V> aVar, r2.a<? extends V> aVar2) {
            this.f2925a = aVar;
            this.f2926b = aVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2925a.f2907a != this) {
                return;
            }
            if (b1.a.f2905f.b(this.f2925a, this, b1.a.j(this.f2926b))) {
                b1.a.g(this.f2925a);
            }
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class h extends b1.a.b {
        public h() {
            super(null);
        }

        @Override // b1.a.b
        public boolean a(b1.a<?> aVar, b1.a.e eVar, b1.a.e eVar2) {
            synchronized (aVar) {
                if (aVar.f2908b != eVar) {
                    return false;
                }
                aVar.f2908b = eVar2;
                return true;
            }
        }

        @Override // b1.a.b
        public boolean b(b1.a<?> aVar, java.lang.Object obj, java.lang.Object obj2) {
            synchronized (aVar) {
                if (aVar.f2907a != obj) {
                    return false;
                }
                aVar.f2907a = obj2;
                return true;
            }
        }

        @Override // b1.a.b
        public boolean c(b1.a<?> aVar, b1.a.i iVar, b1.a.i iVar2) {
            synchronized (aVar) {
                if (aVar.f2909c != iVar) {
                    return false;
                }
                aVar.f2909c = iVar2;
                return true;
            }
        }

        @Override // b1.a.b
        public void d(b1.a.i iVar, b1.a.i iVar2) {
            iVar.f2929b = iVar2;
        }

        @Override // b1.a.b
        public void e(b1.a.i iVar, java.lang.Thread thread) {
            iVar.f2928a = thread;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class i {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b1.a.i f2927c = new b1.a.i(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile java.lang.Thread f2928a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile b1.a.i f2929b;

        public i(boolean z4) {
        }

        public void a(b1.a.i iVar) {
            b1.a.f2905f.d(this, iVar);
        }

        public void b() {
            java.lang.Thread thread = this.f2928a;
            if (thread != null) {
                this.f2928a = null;
                java.util.concurrent.locks.LockSupport.unpark(thread);
            }
        }

        public i() {
            b1.a.f2905f.e(this, java.lang.Thread.currentThread());
        }
    }

    static {
        b1.a.b hVar;
        try {
            hVar = new b1.a.f(java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(b1.a.i.class, java.lang.Thread.class, "a"), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(b1.a.i.class, b1.a.i.class, "b"), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(b1.a.class, b1.a.i.class, "c"), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(b1.a.class, b1.a.e.class, "b"), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(b1.a.class, java.lang.Object.class, "a"));
            th = null;
        } catch (java.lang.Throwable th) {
            th = th;
            hVar = new b1.a.h();
        }
        f2905f = hVar;
        if (th != null) {
            f2904e.log(java.util.logging.Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f2906g = new java.lang.Object();
    }

    public static java.util.concurrent.CancellationException d(java.lang.String str, java.lang.Throwable th) {
        java.util.concurrent.CancellationException cancellationException = new java.util.concurrent.CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static <T> T e(T t5) {
        java.util.Objects.requireNonNull(t5);
        return t5;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void g(b1.a<?> aVar) {
        b1.a.e eVar = null;
        while (true) {
            aVar.n();
            aVar.c();
            b1.a.e eVarF = aVar.f(eVar);
            while (eVarF != null) {
                eVar = eVarF.f2919c;
                java.lang.Runnable runnable = eVarF.f2917a;
                if (runnable instanceof b1.a.g) {
                    b1.a.g gVar = (b1.a.g) runnable;
                    aVar = gVar.f2925a;
                    if (aVar.f2907a == gVar) {
                        if (f2905f.b(aVar, gVar, j(gVar.f2926b))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    h(runnable, eVarF.f2918b);
                }
                eVarF = eVar;
            }
            return;
        }
    }

    public static void h(java.lang.Runnable runnable, java.util.concurrent.Executor executor) {
        try {
            executor.execute(runnable);
        } catch (java.lang.RuntimeException e5) {
            f2904e.log(java.util.logging.Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (java.lang.Throwable) e5);
        }
    }

    public static java.lang.Object j(r2.a<?> aVar) {
        if (aVar instanceof b1.a) {
            java.lang.Object obj = ((b1.a) aVar).f2907a;
            if (!(obj instanceof b1.a.c)) {
                return obj;
            }
            b1.a.c cVar = (b1.a.c) obj;
            if (cVar.f2912a) {
                return cVar.f2913b != null ? new b1.a.c(false, cVar.f2913b) : b1.a.c.f2911d;
            }
            return obj;
        }
        boolean zIsCancelled = aVar.isCancelled();
        if ((!f2903d) && zIsCancelled) {
            return b1.a.c.f2911d;
        }
        try {
            java.lang.Object objK = k(aVar);
            return objK == null ? f2906g : objK;
        } catch (java.util.concurrent.CancellationException e5) {
            if (zIsCancelled) {
                return new b1.a.c(false, e5);
            }
            return new b1.a.d(new java.lang.IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + aVar, e5));
        } catch (java.util.concurrent.ExecutionException e6) {
            return new b1.a.d(e6.getCause());
        } catch (java.lang.Throwable th) {
            return new b1.a.d(th);
        }
    }

    public static <V> V k(java.util.concurrent.Future<V> future) throws java.util.concurrent.ExecutionException {
        V v4;
        boolean z4 = false;
        while (true) {
            try {
                v4 = future.get();
                break;
            } catch (java.lang.InterruptedException unused) {
                z4 = true;
            } catch (java.lang.Throwable th) {
                if (z4) {
                    java.lang.Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z4) {
            java.lang.Thread.currentThread().interrupt();
        }
        return v4;
    }

    @Override // r2.a
    public final void a(java.lang.Runnable runnable, java.util.concurrent.Executor executor) {
        e(runnable);
        e(executor);
        b1.a.e eVar = this.f2908b;
        if (eVar != b1.a.e.f2916d) {
            b1.a.e eVar2 = new b1.a.e(runnable, executor);
            do {
                eVar2.f2919c = eVar;
                if (f2905f.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f2908b;
                }
            } while (eVar != b1.a.e.f2916d);
        }
        h(runnable, executor);
    }

    public final void b(java.lang.StringBuilder sb) {
        try {
            java.lang.Object objK = k(this);
            sb.append("SUCCESS, result=[");
            sb.append(s(objK));
            sb.append("]");
        } catch (java.util.concurrent.CancellationException unused) {
            sb.append("CANCELLED");
        } catch (java.lang.RuntimeException e5) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e5.getClass());
            sb.append(" thrown from get()]");
        } catch (java.util.concurrent.ExecutionException e6) {
            sb.append("FAILURE, cause=[");
            sb.append(e6.getCause());
            sb.append("]");
        }
    }

    public void c() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z4) {
        b1.a.c cVar;
        java.lang.Object obj = this.f2907a;
        if (!(obj == null) && !(obj instanceof b1.a.g)) {
            return false;
        }
        if (f2903d) {
            cVar = new b1.a.c(z4, new java.util.concurrent.CancellationException("Future.cancel() was called."));
        } else {
            cVar = z4 ? b1.a.c.f2910c : b1.a.c.f2911d;
        }
        b1.a<V> aVar = this;
        boolean z5 = false;
        while (true) {
            if (f2905f.b(aVar, obj, cVar)) {
                if (z4) {
                    aVar.l();
                }
                g(aVar);
                if (!(obj instanceof b1.a.g)) {
                    return true;
                }
                r2.a<? extends V> aVar2 = ((b1.a.g) obj).f2926b;
                if (!(aVar2 instanceof b1.a)) {
                    aVar2.cancel(z4);
                    return true;
                }
                aVar = (b1.a) aVar2;
                obj = aVar.f2907a;
                if (!(obj == null) && !(obj instanceof b1.a.g)) {
                    return true;
                }
                z5 = true;
            } else {
                obj = aVar.f2907a;
                if (!(obj instanceof b1.a.g)) {
                    return z5;
                }
            }
        }
    }

    public final b1.a.e f(b1.a.e eVar) {
        b1.a.e eVar2;
        do {
            eVar2 = this.f2908b;
        } while (!f2905f.a(this, eVar2, b1.a.e.f2916d));
        b1.a.e eVar3 = eVar;
        b1.a.e eVar4 = eVar2;
        while (eVar4 != null) {
            b1.a.e eVar5 = eVar4.f2919c;
            eVar4.f2919c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j5, java.util.concurrent.TimeUnit timeUnit) throws java.util.concurrent.ExecutionException, java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        long nanos = timeUnit.toNanos(j5);
        if (java.lang.Thread.interrupted()) {
            throw new java.lang.InterruptedException();
        }
        java.lang.Object obj = this.f2907a;
        if ((obj != null) && (!(obj instanceof b1.a.g))) {
            return i(obj);
        }
        long jNanoTime = nanos > 0 ? java.lang.System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            b1.a.i iVar = this.f2909c;
            if (iVar != b1.a.i.f2927c) {
                b1.a.i iVar2 = new b1.a.i();
                while (true) {
                    iVar2.a(iVar);
                    if (f2905f.c(this, iVar, iVar2)) {
                        do {
                            java.util.concurrent.locks.LockSupport.parkNanos(this, nanos);
                            if (java.lang.Thread.interrupted()) {
                                o(iVar2);
                                throw new java.lang.InterruptedException();
                            }
                            java.lang.Object obj2 = this.f2907a;
                            if ((obj2 != null) && (!(obj2 instanceof b1.a.g))) {
                                return i(obj2);
                            }
                            nanos = jNanoTime - java.lang.System.nanoTime();
                        } while (nanos >= 1000);
                        o(iVar2);
                        break;
                    }
                    iVar = this.f2909c;
                    if (iVar == b1.a.i.f2927c) {
                    }
                }
            }
            return i(this.f2907a);
        }
        while (nanos > 0) {
            java.lang.Object obj3 = this.f2907a;
            if ((obj3 != null) && (!(obj3 instanceof b1.a.g))) {
                return i(obj3);
            }
            if (java.lang.Thread.interrupted()) {
                throw new java.lang.InterruptedException();
            }
            nanos = jNanoTime - java.lang.System.nanoTime();
        }
        java.lang.String string = toString();
        java.lang.String string2 = timeUnit.toString();
        java.util.Locale locale = java.util.Locale.ROOT;
        java.lang.String lowerCase = string2.toLowerCase(locale);
        java.lang.String str = "Waited " + j5 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            java.lang.String str2 = str + " (plus ";
            long j6 = -nanos;
            long jConvert = timeUnit.convert(j6, java.util.concurrent.TimeUnit.NANOSECONDS);
            long nanos2 = j6 - timeUnit.toNanos(jConvert);
            boolean z4 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                java.lang.String str3 = str2 + jConvert + " " + lowerCase;
                if (z4) {
                    str3 = str3 + ",";
                }
                str2 = str3 + " ";
            }
            if (z4) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new java.util.concurrent.TimeoutException(str + " but future completed as timeout expired");
        }
        throw new java.util.concurrent.TimeoutException(str + " for " + string);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V i(java.lang.Object obj) throws java.util.concurrent.ExecutionException {
        if (obj instanceof b1.a.c) {
            throw d("Task was cancelled.", ((b1.a.c) obj).f2913b);
        }
        if (obj instanceof b1.a.d) {
            throw new java.util.concurrent.ExecutionException(((b1.a.d) obj).f2915a);
        }
        if (obj == f2906g) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2907a instanceof b1.a.c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        java.lang.Object obj = this.f2907a;
        return (!(obj instanceof b1.a.g)) & (obj != null);
    }

    public void l() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public java.lang.String m() {
        java.lang.Object obj = this.f2907a;
        if (obj instanceof b1.a.g) {
            return "setFuture=[" + s(((b1.a.g) obj).f2926b) + "]";
        }
        if (!(this instanceof java.util.concurrent.ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((java.util.concurrent.ScheduledFuture) this).getDelay(java.util.concurrent.TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void n() {
        b1.a.i iVar;
        do {
            iVar = this.f2909c;
        } while (!f2905f.c(this, iVar, b1.a.i.f2927c));
        while (iVar != null) {
            iVar.b();
            iVar = iVar.f2929b;
        }
    }

    public final void o(b1.a.i iVar) {
        iVar.f2928a = null;
        while (true) {
            b1.a.i iVar2 = this.f2909c;
            if (iVar2 == b1.a.i.f2927c) {
                return;
            }
            b1.a.i iVar3 = null;
            while (iVar2 != null) {
                b1.a.i iVar4 = iVar2.f2929b;
                if (iVar2.f2928a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.f2929b = iVar4;
                    if (iVar3.f2928a == null) {
                    }
                } else if (!f2905f.c(this, iVar2, iVar4)) {
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean p(V v4) {
        if (v4 == null) {
            v4 = (V) f2906g;
        }
        if (!f2905f.b(this, null, v4)) {
            return false;
        }
        g(this);
        return true;
    }

    public boolean q(java.lang.Throwable th) {
        if (!f2905f.b(this, null, new b1.a.d((java.lang.Throwable) e(th)))) {
            return false;
        }
        g(this);
        return true;
    }

    public boolean r(r2.a<? extends V> aVar) {
        b1.a.d dVar;
        e(aVar);
        java.lang.Object obj = this.f2907a;
        if (obj == null) {
            if (aVar.isDone()) {
                if (!f2905f.b(this, null, j(aVar))) {
                    return false;
                }
                g(this);
                return true;
            }
            b1.a.g gVar = new b1.a.g(this, aVar);
            if (f2905f.b(this, null, gVar)) {
                try {
                    aVar.a(gVar, b1.b.INSTANCE);
                } catch (java.lang.Throwable th) {
                    try {
                        dVar = new b1.a.d(th);
                    } catch (java.lang.Throwable unused) {
                        dVar = b1.a.d.f2914b;
                    }
                    f2905f.b(this, gVar, dVar);
                }
                return true;
            }
            obj = this.f2907a;
        }
        if (obj instanceof b1.a.c) {
            aVar.cancel(((b1.a.c) obj).f2912a);
        }
        return false;
    }

    public final java.lang.String s(java.lang.Object obj) {
        return obj == this ? "this future" : java.lang.String.valueOf(obj);
    }

    public java.lang.String toString() {
        java.lang.String strM;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            try {
                strM = m();
            } catch (java.lang.RuntimeException e5) {
                strM = "Exception thrown from implementation: " + e5.getClass();
            }
            if (strM != null && !strM.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strM);
                sb.append("]");
            } else if (isDone()) {
                b(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() throws java.util.concurrent.ExecutionException, java.lang.InterruptedException {
        java.lang.Object obj;
        if (!java.lang.Thread.interrupted()) {
            java.lang.Object obj2 = this.f2907a;
            if ((obj2 != null) & (!(obj2 instanceof b1.a.g))) {
                return i(obj2);
            }
            b1.a.i iVar = this.f2909c;
            if (iVar != b1.a.i.f2927c) {
                b1.a.i iVar2 = new b1.a.i();
                do {
                    iVar2.a(iVar);
                    if (f2905f.c(this, iVar, iVar2)) {
                        do {
                            java.util.concurrent.locks.LockSupport.park(this);
                            if (!java.lang.Thread.interrupted()) {
                                obj = this.f2907a;
                            } else {
                                o(iVar2);
                                throw new java.lang.InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof b1.a.g))));
                        return i(obj);
                    }
                    iVar = this.f2909c;
                } while (iVar != b1.a.i.f2927c);
            }
            return i(this.f2907a);
        }
        throw new java.lang.InterruptedException();
    }
}
