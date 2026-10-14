package y3;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i extends java.lang.RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final transient d3.g f6900a;

    public i(d3.g gVar) {
        this.f6900a = gVar;
    }

    @Override // java.lang.Throwable
    public java.lang.Throwable fillInStackTrace() {
        setStackTrace(new java.lang.StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public java.lang.String getLocalizedMessage() {
        return this.f6900a.toString();
    }
}
