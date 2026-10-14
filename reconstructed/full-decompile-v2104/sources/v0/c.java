package v0;

/* JADX INFO: compiled from: NetworkState.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f6387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6389d;

    public c(boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f6386a = z4;
        this.f6387b = z5;
        this.f6388c = z6;
        this.f6389d = z7;
    }

    public final boolean a() {
        return this.f6386a;
    }

    public final boolean b() {
        return this.f6388c;
    }

    public final boolean c() {
        return this.f6389d;
    }

    public final boolean d() {
        return this.f6387b;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v0.c)) {
            return false;
        }
        v0.c cVar = (v0.c) obj;
        return this.f6386a == cVar.f6386a && this.f6387b == cVar.f6387b && this.f6388c == cVar.f6388c && this.f6389d == cVar.f6389d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public int hashCode() {
        boolean z4 = this.f6386a;
        ?? r5 = z4;
        if (z4) {
            r5 = 1;
        }
        int i5 = r5 * 31;
        boolean z5 = this.f6387b;
        ?? r6 = z5;
        if (z5) {
            r6 = 1;
        }
        int i6 = (i5 + r6) * 31;
        boolean z6 = this.f6388c;
        ?? r7 = z6;
        if (z6) {
            r7 = 1;
        }
        int i7 = (i6 + r7) * 31;
        boolean z7 = this.f6389d;
        return i7 + (z7 ? 1 : z7);
    }

    public java.lang.String toString() {
        return "NetworkState(isConnected=" + this.f6386a + ", isValidated=" + this.f6387b + ", isMetered=" + this.f6388c + ", isNotRoaming=" + this.f6389d + ')';
    }
}
