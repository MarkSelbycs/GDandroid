package y3;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y extends t3.r1 implements t3.l0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Throwable f6952c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f6953d;

    public y(java.lang.Throwable th, java.lang.String str) {
        this.f6952c = th;
        this.f6953d = str;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0025  */
    public final java.lang.Void C() {
        java.lang.String str;
        if (this.f6952c == null) {
            y3.x.d();
            throw new a3.c();
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Module with the Main dispatcher had failed to initialize");
        java.lang.String str2 = this.f6953d;
        if (str2 != null) {
            str = ". " + str2;
            if (str == null) {
                str = "";
            }
        } else {
            str = "";
        }
        sb.append(str);
        throw new java.lang.IllegalStateException(sb.toString(), this.f6952c);
    }

    @Override // t3.b0
    public boolean n(d3.g gVar) {
        C();
        throw new a3.c();
    }

    @Override // t3.r1
    public t3.r1 r() {
        return this;
    }

    @Override // t3.r1, t3.b0
    public java.lang.String toString() {
        java.lang.String str;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Dispatchers.Main[missing");
        if (this.f6952c != null) {
            str = ", cause=" + this.f6952c;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }

    @Override // t3.b0
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public java.lang.Void i(d3.g gVar, java.lang.Runnable runnable) {
        C();
        throw new a3.c();
    }
}
