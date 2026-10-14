package v2;

/* JADX INFO: compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l<T> extends s2.s<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.e f6498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.s<T> f6499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.reflect.Type f6500c;

    public l(s2.e eVar, s2.s<T> sVar, java.lang.reflect.Type type) {
        this.f6498a = eVar;
        this.f6499b = sVar;
        this.f6500c = type;
    }

    @Override // s2.s
    public T b(y2.a aVar) throws java.io.IOException {
        return this.f6499b.b(aVar);
    }

    @Override // s2.s
    public void d(y2.c cVar, T t5) throws java.io.IOException {
        s2.s<T> sVarG = this.f6499b;
        java.lang.reflect.Type typeE = e(this.f6500c, t5);
        if (typeE != this.f6500c) {
            sVarG = this.f6498a.g(x2.a.b(typeE));
            if (sVarG instanceof v2.i.b) {
                s2.s<T> sVar = this.f6499b;
                if (!(sVar instanceof v2.i.b)) {
                    sVarG = sVar;
                }
            }
        }
        sVarG.d(cVar, t5);
    }

    public final java.lang.reflect.Type e(java.lang.reflect.Type type, java.lang.Object obj) {
        if (obj != null) {
            return (type == java.lang.Object.class || (type instanceof java.lang.reflect.TypeVariable) || (type instanceof java.lang.Class)) ? obj.getClass() : type;
        }
        return type;
    }
}
