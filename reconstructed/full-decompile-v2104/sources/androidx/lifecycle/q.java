package androidx.lifecycle;

/* JADX INFO: compiled from: ViewModelStore.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.HashMap<java.lang.String, androidx.lifecycle.o> f1800a = new java.util.HashMap<>();

    public final void a() {
        java.util.Iterator<androidx.lifecycle.o> it = this.f1800a.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f1800a.clear();
    }

    public final androidx.lifecycle.o b(java.lang.String str) {
        return this.f1800a.get(str);
    }

    public final void c(java.lang.String str, androidx.lifecycle.o oVar) {
        androidx.lifecycle.o oVarPut = this.f1800a.put(str, oVar);
        if (oVarPut != null) {
            oVarPut.a();
        }
    }
}
