package q0;

/* JADX INFO: compiled from: WorkInfo.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final q0.y.a f5722m = new q0.y.a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.UUID f5723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q0.y.c f5724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Set<java.lang.String> f5725c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.work.b f5726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.work.b f5727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5729g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final q0.d f5730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f5731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final q0.y.b f5732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f5733k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f5734l;

    /* JADX INFO: compiled from: WorkInfo.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: WorkInfo.kt */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f5735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f5736b;

        public b(long j5, long j6) {
            this.f5735a = j5;
            this.f5736b = j6;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !m3.k.a(q0.y.b.class, obj.getClass())) {
                return false;
            }
            q0.y.b bVar = (q0.y.b) obj;
            return bVar.f5735a == this.f5735a && bVar.f5736b == this.f5736b;
        }

        public int hashCode() {
            return (java.lang.Long.hashCode(this.f5735a) * 31) + java.lang.Long.hashCode(this.f5736b);
        }

        public java.lang.String toString() {
            return "PeriodicityInfo{repeatIntervalMillis=" + this.f5735a + ", flexIntervalMillis=" + this.f5736b + '}';
        }
    }

    /* JADX INFO: compiled from: WorkInfo.kt */
    public enum c {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public final boolean e() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public y(java.util.UUID uuid, q0.y.c cVar, java.util.Set<java.lang.String> set, androidx.work.b bVar, androidx.work.b bVar2, int i5, int i6) {
        this(uuid, cVar, set, bVar, bVar2, i5, i6, null, 0L, null, 0L, 0, 3968, null);
        m3.k.e(uuid, "id");
        m3.k.e(cVar, "state");
        m3.k.e(set, "tags");
        m3.k.e(bVar, "outputData");
        m3.k.e(bVar2, "progress");
    }

    public y(java.util.UUID uuid, q0.y.c cVar, java.util.Set<java.lang.String> set, androidx.work.b bVar, androidx.work.b bVar2, int i5, int i6, q0.d dVar, long j5, q0.y.b bVar3, long j6, int i7) {
        m3.k.e(uuid, "id");
        m3.k.e(cVar, "state");
        m3.k.e(set, "tags");
        m3.k.e(bVar, "outputData");
        m3.k.e(bVar2, "progress");
        m3.k.e(dVar, "constraints");
        this.f5723a = uuid;
        this.f5724b = cVar;
        this.f5725c = set;
        this.f5726d = bVar;
        this.f5727e = bVar2;
        this.f5728f = i5;
        this.f5729g = i6;
        this.f5730h = dVar;
        this.f5731i = j5;
        this.f5732j = bVar3;
        this.f5733k = j6;
        this.f5734l = i7;
    }

    public final int a() {
        return this.f5729g;
    }

    public final java.util.UUID b() {
        return this.f5723a;
    }

    public final androidx.work.b c() {
        return this.f5726d;
    }

    public final androidx.work.b d() {
        return this.f5727e;
    }

    public final int e() {
        return this.f5728f;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !m3.k.a(q0.y.class, obj.getClass())) {
            return false;
        }
        q0.y yVar = (q0.y) obj;
        if (this.f5728f == yVar.f5728f && this.f5729g == yVar.f5729g && m3.k.a(this.f5723a, yVar.f5723a) && this.f5724b == yVar.f5724b && m3.k.a(this.f5726d, yVar.f5726d) && m3.k.a(this.f5730h, yVar.f5730h) && this.f5731i == yVar.f5731i && m3.k.a(this.f5732j, yVar.f5732j) && this.f5733k == yVar.f5733k && this.f5734l == yVar.f5734l && m3.k.a(this.f5725c, yVar.f5725c)) {
            return m3.k.a(this.f5727e, yVar.f5727e);
        }
        return false;
    }

    public final q0.y.c f() {
        return this.f5724b;
    }

    public final java.util.Set<java.lang.String> g() {
        return this.f5725c;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((this.f5723a.hashCode() * 31) + this.f5724b.hashCode()) * 31) + this.f5726d.hashCode()) * 31) + this.f5725c.hashCode()) * 31) + this.f5727e.hashCode()) * 31) + this.f5728f) * 31) + this.f5729g) * 31) + this.f5730h.hashCode()) * 31) + java.lang.Long.hashCode(this.f5731i)) * 31;
        q0.y.b bVar = this.f5732j;
        return ((((iHashCode + (bVar != null ? bVar.hashCode() : 0)) * 31) + java.lang.Long.hashCode(this.f5733k)) * 31) + java.lang.Integer.hashCode(this.f5734l);
    }

    public java.lang.String toString() {
        return "WorkInfo{id='" + this.f5723a + "', state=" + this.f5724b + ", outputData=" + this.f5726d + ", tags=" + this.f5725c + ", progress=" + this.f5727e + ", runAttemptCount=" + this.f5728f + ", generation=" + this.f5729g + ", constraints=" + this.f5730h + ", initialDelayMillis=" + this.f5731i + ", periodicityInfo=" + this.f5732j + ", nextScheduleTimeMillis=" + this.f5733k + "}, stopReason=" + this.f5734l;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ y(java.util.UUID uuid, q0.y.c cVar, java.util.Set set, androidx.work.b bVar, androidx.work.b bVar2, int i5, int i6, q0.d dVar, long j5, q0.y.b bVar3, long j6, int i7, int i8, m3.g gVar) {
        androidx.work.b bVar4;
        androidx.work.b bVar5;
        if ((i8 & 8) != 0) {
            androidx.work.b bVar6 = androidx.work.b.f2639c;
            m3.k.d(bVar6, "EMPTY");
            bVar4 = bVar6;
        } else {
            bVar4 = bVar;
        }
        if ((i8 & 16) != 0) {
            androidx.work.b bVar7 = androidx.work.b.f2639c;
            m3.k.d(bVar7, "EMPTY");
            bVar5 = bVar7;
        } else {
            bVar5 = bVar2;
        }
        this(uuid, cVar, set, bVar4, bVar5, (i8 & 32) != 0 ? 0 : i5, (i8 & 64) != 0 ? 0 : i6, (i8 & com.alibaba.fastjson.asm.Opcodes.IOR) != 0 ? q0.d.f5665j : dVar, (i8 & 256) != 0 ? 0L : j5, (i8 & 512) != 0 ? null : bVar3, (i8 & 1024) != 0 ? Long.MAX_VALUE : j6, (i8 & 2048) != 0 ? -256 : i7);
    }
}
