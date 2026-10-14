package r0;

/* JADX INFO: compiled from: StartStopToken.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f5834a = new java.lang.Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<z0.m, r0.a0> f5835b = new java.util.LinkedHashMap();

    public final boolean a(z0.m mVar) {
        boolean zContainsKey;
        m3.k.e(mVar, "id");
        synchronized (this.f5834a) {
            zContainsKey = this.f5835b.containsKey(mVar);
        }
        return zContainsKey;
    }

    public final java.util.List<r0.a0> b(java.lang.String str) {
        java.util.List<r0.a0> listB;
        m3.k.e(str, "workSpecId");
        synchronized (this.f5834a) {
            java.util.Map<z0.m, r0.a0> map = this.f5835b;
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
            for (java.util.Map.Entry<z0.m, r0.a0> entry : map.entrySet()) {
                if (m3.k.a(entry.getKey().b(), str)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            java.util.Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                this.f5835b.remove((z0.m) it.next());
            }
            listB = b3.w.B(linkedHashMap.values());
        }
        return listB;
    }

    public final r0.a0 c(z0.m mVar) {
        r0.a0 a0VarRemove;
        m3.k.e(mVar, "id");
        synchronized (this.f5834a) {
            a0VarRemove = this.f5835b.remove(mVar);
        }
        return a0VarRemove;
    }

    public final r0.a0 d(z0.m mVar) {
        r0.a0 a0Var;
        m3.k.e(mVar, "id");
        synchronized (this.f5834a) {
            java.util.Map<z0.m, r0.a0> map = this.f5835b;
            r0.a0 a0Var2 = map.get(mVar);
            if (a0Var2 == null) {
                a0Var2 = new r0.a0(mVar);
                map.put(mVar, a0Var2);
            }
            a0Var = a0Var2;
        }
        return a0Var;
    }

    public final r0.a0 e(z0.u uVar) {
        m3.k.e(uVar, "spec");
        return d(z0.x.a(uVar));
    }
}
