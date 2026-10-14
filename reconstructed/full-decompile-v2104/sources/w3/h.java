package w3;

/* JADX INFO: compiled from: Channels.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class h {

    /* JADX INFO: compiled from: Channels.kt */
    @f3.f(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", l = {36, 37}, m = "emitAllImpl$FlowKt__ChannelsKt")
    public static final class a<T> extends f3.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.Object f6727d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.Object f6728e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public java.lang.Object f6729f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f6730g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6731h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f6732i;

        public a(d3.d<? super w3.h.a> dVar) {
            super(dVar);
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) {
            this.f6731h = obj;
            this.f6732i |= Integer.MIN_VALUE;
            return w3.h.c(null, null, false, this);
        }
    }

    public static final <T> java.lang.Object b(w3.e<? super T> eVar, v3.s<? extends T> sVar, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        java.lang.Object objC = c(eVar, sVar, true, dVar);
        return objC == e3.c.c() ? objC : a3.o.f122a;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0070 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x007e A[Catch: all -> 0x009b, TRY_LEAVE, TryCatch #0 {all -> 0x009b, blocks: (B:13:0x0036, B:22:0x0060, B:26:0x0075, B:28:0x007e, B:18:0x0052, B:21:0x005c), top: B:41:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0092 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0095  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0090 -> B:14:0x0039). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <T> java.lang.Object c(w3.e<? super T> r7, v3.s<? extends T> r8, boolean r9, d3.d<? super a3.o> r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10 instanceof w3.h.a
            if (r0 == 0) goto L13
            r0 = r10
            w3.h$a r0 = (w3.h.a) r0
            int r1 = r0.f6732i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6732i = r1
            goto L18
        L13:
            w3.h$a r0 = new w3.h$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f6731h
            java.lang.Object r1 = e3.c.c()
            int r2 = r0.f6732i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L56
            if (r2 == r4) goto L44
            if (r2 != r3) goto L3c
            boolean r9 = r0.f6730g
            java.lang.Object r7 = r0.f6729f
            v3.f r7 = (v3.f) r7
            java.lang.Object r8 = r0.f6728e
            v3.s r8 = (v3.s) r8
            java.lang.Object r2 = r0.f6727d
            w3.e r2 = (w3.e) r2
            a3.j.b(r10)     // Catch: java.lang.Throwable -> L9b
        L39:
            r10 = r7
            r7 = r2
            goto L60
        L3c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L44:
            boolean r9 = r0.f6730g
            java.lang.Object r7 = r0.f6729f
            v3.f r7 = (v3.f) r7
            java.lang.Object r8 = r0.f6728e
            v3.s r8 = (v3.s) r8
            java.lang.Object r2 = r0.f6727d
            w3.e r2 = (w3.e) r2
            a3.j.b(r10)     // Catch: java.lang.Throwable -> L9b
            goto L75
        L56:
            a3.j.b(r10)
            w3.f.d(r7)
            v3.f r10 = r8.iterator()     // Catch: java.lang.Throwable -> L9b
        L60:
            r0.f6727d = r7     // Catch: java.lang.Throwable -> L9b
            r0.f6728e = r8     // Catch: java.lang.Throwable -> L9b
            r0.f6729f = r10     // Catch: java.lang.Throwable -> L9b
            r0.f6730g = r9     // Catch: java.lang.Throwable -> L9b
            r0.f6732i = r4     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r2 = r10.a(r0)     // Catch: java.lang.Throwable -> L9b
            if (r2 != r1) goto L71
            return r1
        L71:
            r6 = r2
            r2 = r7
            r7 = r10
            r10 = r6
        L75:
            r5 = 0
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L9b
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L9b
            if (r10 == 0) goto L93
            java.lang.Object r10 = r7.next()     // Catch: java.lang.Throwable -> L9b
            r0.f6727d = r2     // Catch: java.lang.Throwable -> L9b
            r0.f6728e = r8     // Catch: java.lang.Throwable -> L9b
            r0.f6729f = r7     // Catch: java.lang.Throwable -> L9b
            r0.f6730g = r9     // Catch: java.lang.Throwable -> L9b
            r0.f6732i = r3     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r10 = r2.a(r10, r0)     // Catch: java.lang.Throwable -> L9b
            if (r10 != r1) goto L39
            return r1
        L93:
            if (r9 == 0) goto L98
            v3.j.a(r8, r5)
        L98:
            a3.o r7 = a3.o.f122a
            return r7
        L9b:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L9d
        L9d:
            r10 = move-exception
            if (r9 == 0) goto La3
            v3.j.a(r8, r7)
        La3:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: w3.h.c(w3.e, v3.s, boolean, d3.d):java.lang.Object");
    }
}
