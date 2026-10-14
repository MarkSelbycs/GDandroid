package a2;

/* JADX INFO: compiled from: CaseInsensitiveMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c<K, V> extends a2.f<K, V> {
    public c(java.util.Map<? extends K, ? extends V> map) {
        this(0.75f, map);
    }

    public static /* synthetic */ java.lang.Object V(java.lang.Object obj) {
        return obj instanceof java.lang.CharSequence ? obj.toString().toLowerCase() : obj;
    }

    public c(float f5, java.util.Map<? extends K, ? extends V> map) {
        this(map.size(), f5);
        putAll(map);
    }

    public c(int i5, float f5) {
        this(a2.g.c(new java.util.HashMap(i5, f5)));
    }

    public c(a2.g<K, V> gVar) {
        super(gVar.b(), a2.b.f78a);
    }
}
