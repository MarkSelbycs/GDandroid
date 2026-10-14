package androidx.work;

/* JADX INFO: compiled from: OverwritingInputMerger.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class OverwritingInputMerger extends q0.j {
    @Override // q0.j
    public androidx.work.b a(java.util.List<androidx.work.b> list) throws java.lang.Throwable {
        m3.k.e(list, "inputs");
        androidx.work.b.a aVar = new androidx.work.b.a();
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        java.util.Iterator<androidx.work.b> it = list.iterator();
        while (it.hasNext()) {
            java.util.Map<java.lang.String, java.lang.Object> mapN = it.next().n();
            m3.k.d(mapN, "input.keyValueMap");
            linkedHashMap.putAll(mapN);
        }
        aVar.c(linkedHashMap);
        androidx.work.b bVarA = aVar.a();
        m3.k.d(bVarA, "output.build()");
        return bVarA;
    }
}
