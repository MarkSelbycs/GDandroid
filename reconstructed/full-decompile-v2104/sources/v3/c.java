package v3;

/* JADX INFO: compiled from: BufferedChannel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v3.i<java.lang.Object> f6579a = new v3.i<>(-1, null, null, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6580b = y3.k0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6581c = y3.k0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y3.h0 f6582d = new y3.h0("BUFFERED");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y3.h0 f6583e = new y3.h0("SHOULD_BUFFER");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final y3.h0 f6584f = new y3.h0("S_RESUMING_BY_RCV");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final y3.h0 f6585g = new y3.h0("RESUMING_BY_EB");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final y3.h0 f6586h = new y3.h0("POISONED");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final y3.h0 f6587i = new y3.h0("DONE_RCV");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final y3.h0 f6588j = new y3.h0("INTERRUPTED_SEND");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final y3.h0 f6589k = new y3.h0("INTERRUPTED_RCV");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final y3.h0 f6590l = new y3.h0("CHANNEL_CLOSED");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final y3.h0 f6591m = new y3.h0("SUSPEND");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final y3.h0 f6592n = new y3.h0("SUSPEND_NO_WAITER");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final y3.h0 f6593o = new y3.h0("FAILED");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final y3.h0 f6594p = new y3.h0("NO_RECEIVE_RESULT");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final y3.h0 f6595q = new y3.h0("CLOSE_HANDLER_CLOSED");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final y3.h0 f6596r = new y3.h0("CLOSE_HANDLER_INVOKED");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final y3.h0 f6597s = new y3.h0("NO_CLOSE_CAUSE");

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: compiled from: BufferedChannel.kt */
    public /* synthetic */ class a<E> extends m3.j implements l3.p<java.lang.Long, v3.i<E>, v3.i<E>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final v3.c.a f6598o = new v3.c.a();

        public a() {
            super(2, v3.c.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        public final v3.i<E> I(long j5, v3.i<E> iVar) {
            return v3.c.x(j5, iVar);
        }

        @Override // l3.p
        public /* bridge */ /* synthetic */ java.lang.Object u(java.lang.Long l5, java.lang.Object obj) {
            return I(l5.longValue(), (v3.i) obj);
        }
    }

    public static final long A(int i5) {
        if (i5 == 0) {
            return 0L;
        }
        if (i5 != Integer.MAX_VALUE) {
            return i5;
        }
        return Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean B(t3.j<? super T> jVar, T t5, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        java.lang.Object objU = jVar.U(t5, null, lVar);
        if (objU == null) {
            return false;
        }
        jVar.T(objU);
        return true;
    }

    public static /* synthetic */ boolean C(t3.j jVar, java.lang.Object obj, l3.l lVar, int i5, java.lang.Object obj2) {
        if ((i5 & 2) != 0) {
            lVar = null;
        }
        return B(jVar, obj, lVar);
    }

    public static final long v(long j5, boolean z4) {
        return (z4 ? 4611686018427387904L : 0L) + j5;
    }

    public static final long w(long j5, int i5) {
        return (((long) i5) << 60) + j5;
    }

    public static final <E> v3.i<E> x(long j5, v3.i<E> iVar) {
        return new v3.i<>(j5, iVar, iVar.u(), 0);
    }

    public static final <E> q3.d<v3.i<E>> y() {
        return v3.c.a.f6598o;
    }

    public static final y3.h0 z() {
        return f6590l;
    }
}
