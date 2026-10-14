package m3;

/* JADX INFO: compiled from: ReflectionFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class s {
    public q3.d a(m3.i iVar) {
        return iVar;
    }

    public q3.b b(java.lang.Class cls) {
        return new m3.e(cls);
    }

    public q3.c c(java.lang.Class cls, java.lang.String str) {
        return new m3.m(cls, str);
    }

    public q3.f d(m3.n nVar) {
        return nVar;
    }

    public java.lang.String e(m3.h hVar) {
        java.lang.String string = hVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public java.lang.String f(m3.l lVar) {
        return e(lVar);
    }
}
