package c4;

/* JADX INFO: compiled from: Protocol.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum w {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3295a;

    w(java.lang.String str) {
        this.f3295a = str;
    }

    public static c4.w b(java.lang.String str) throws java.io.IOException {
        c4.w wVar = HTTP_1_0;
        if (str.equals(wVar.f3295a)) {
            return wVar;
        }
        c4.w wVar2 = HTTP_1_1;
        if (str.equals(wVar2.f3295a)) {
            return wVar2;
        }
        c4.w wVar3 = HTTP_2;
        if (str.equals(wVar3.f3295a)) {
            return wVar3;
        }
        c4.w wVar4 = SPDY_3;
        if (str.equals(wVar4.f3295a)) {
            return wVar4;
        }
        throw new java.io.IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public java.lang.String toString() {
        return this.f3295a;
    }
}
