package y3;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f implements t3.e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.g f6894a;

    public f(d3.g gVar) {
        this.f6894a = gVar;
    }

    @Override // t3.e0
    public d3.g k() {
        return this.f6894a;
    }

    public java.lang.String toString() {
        return "CoroutineScope(coroutineContext=" + k() + ')';
    }
}
