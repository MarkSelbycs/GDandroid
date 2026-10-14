package p4;

/* JADX INFO: compiled from: SecurityLevel.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum v {
    undefined(0),
    noAuthNoPriv(1),
    authNoPriv(2),
    authPriv(3);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5631a;

    v(int i5) {
        this.f5631a = i5;
    }

    public static p4.v b(int i5) {
        if (i5 == 1) {
            return noAuthNoPriv;
        }
        if (i5 != 2) {
            return i5 != 3 ? undefined : authPriv;
        }
        return authNoPriv;
    }
}
