package t3;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i1 extends java.util.concurrent.CancellationException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final transient t3.h1 f6194a;

    public i1(java.lang.String str, java.lang.Throwable th, t3.h1 h1Var) {
        super(str);
        this.f6194a = h1Var;
        if (th != null) {
            initCause(th);
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj != this) {
            if (obj instanceof t3.i1) {
                t3.i1 i1Var = (t3.i1) obj;
                if (!m3.k.a(i1Var.getMessage(), getMessage()) || !m3.k.a(i1Var.f6194a, this.f6194a) || !m3.k.a(i1Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public java.lang.Throwable fillInStackTrace() {
        setStackTrace(new java.lang.StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        java.lang.String message = getMessage();
        m3.k.b(message);
        int iHashCode = ((message.hashCode() * 31) + this.f6194a.hashCode()) * 31;
        java.lang.Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public java.lang.String toString() {
        return super.toString() + "; job=" + this.f6194a;
    }
}
