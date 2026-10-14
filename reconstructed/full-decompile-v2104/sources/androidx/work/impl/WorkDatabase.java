package androidx.work.impl;

/* JADX INFO: compiled from: WorkDatabase.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class WorkDatabase extends androidx.room.i0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final androidx.work.impl.WorkDatabase.a f2648p = new androidx.work.impl.WorkDatabase.a(null);

    /* JADX INFO: compiled from: WorkDatabase.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public static final f0.h c(android.content.Context context, f0.h.b bVar) {
            m3.k.e(context, "$context");
            m3.k.e(bVar, "configuration");
            f0.h.b.a aVarA = f0.h.b.f4182f.a(context);
            aVarA.d(bVar.f4184b).c(bVar.f4185c).e(true).a(true);
            return new g0.f().a(aVarA.b());
        }

        public final androidx.work.impl.WorkDatabase b(final android.content.Context context, java.util.concurrent.Executor executor, q0.b bVar, boolean z4) {
            m3.k.e(context, "context");
            m3.k.e(executor, "queryExecutor");
            m3.k.e(bVar, "clock");
            return (androidx.work.impl.WorkDatabase) (z4 ? androidx.room.h0.c(context, androidx.work.impl.WorkDatabase.class).c() : androidx.room.h0.a(context, androidx.work.impl.WorkDatabase.class, "androidx.work.workdb").f(new f0.h.c() { // from class: r0.d0
                @Override // f0.h.c
                public final f0.h a(f0.h.b bVar2) {
                    return androidx.work.impl.WorkDatabase.a.c(context, bVar2);
                }
            })).g(executor).a(new r0.d(bVar)).b(r0.k.f5858c).b(new r0.v(context, 2, 3)).b(r0.l.f5859c).b(r0.m.f5860c).b(new r0.v(context, 5, 6)).b(r0.n.f5862c).b(r0.o.f5863c).b(r0.p.f5866c).b(new r0.q0(context)).b(new r0.v(context, 10, 11)).b(r0.g.f5851c).b(r0.h.f5854c).b(r0.i.f5855c).b(r0.j.f5857c).e().d();
        }
    }

    public abstract z0.b D();

    public abstract z0.e E();

    public abstract z0.g F();

    public abstract z0.j G();

    public abstract z0.o H();

    public abstract z0.r I();

    public abstract z0.v J();

    public abstract z0.z K();
}
