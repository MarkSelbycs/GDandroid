package i1;

/* JADX INFO: compiled from: CopyOptions.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.Class<?> f4644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.function.BiPredicate<java.lang.reflect.Field, java.lang.Object> f4646c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public v1.g<java.lang.String> f4649f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.function.BiFunction<java.lang.String, java.lang.Object, java.lang.Object> f4650g;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.util.Set<java.lang.String> f4653o;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4651h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4652i = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public n1.i f4654p = new n1.i() { // from class: i1.h
        @Override // n1.i
        public final java.lang.Object b(java.lang.reflect.Type type, java.lang.Object obj) {
            return this.f4643a.j(type, obj);
        }
    };

    public static i1.i e() {
        return new i1.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object j(java.lang.reflect.Type type, java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        return e2.c.j(new java.lang.String[]{"cn.hutool.json.JSONObject", "cn.hutool.json.JSONArray"}, obj.getClass().getName()) ? e2.x.t(obj, "toBean", e2.p.c(type, java.lang.Object.class)) : n1.c.f(type, obj, null, this.f4647d);
    }

    public i1.i D(boolean z4) {
        this.f4651h = z4;
        return this;
    }

    public boolean F(java.lang.Object obj) {
        return l1.c.g(this.f4653o) || !this.f4653o.contains(obj);
    }

    public boolean H(java.lang.reflect.Field field, java.lang.Object obj) {
        java.util.function.BiPredicate<java.lang.reflect.Field, java.lang.Object> biPredicate = this.f4646c;
        return biPredicate == null || biPredicate.test(field, obj);
    }

    public java.lang.Object c(java.lang.reflect.Type type, java.lang.Object obj) {
        n1.i iVar = this.f4654p;
        return iVar != null ? iVar.b(type, obj) : obj;
    }

    public java.lang.String f(java.lang.String str) {
        v1.g<java.lang.String> gVar = this.f4649f;
        return gVar != null ? gVar.a(str) : str;
    }

    public java.lang.Object h(java.lang.String str, java.lang.Object obj) {
        java.util.function.BiFunction<java.lang.String, java.lang.Object, java.lang.Object> biFunction = this.f4650g;
        return biFunction != null ? biFunction.apply(str, obj) : obj;
    }

    public i1.i q(v1.g<java.lang.String> gVar) {
        this.f4649f = gVar;
        return this;
    }

    public i1.i u(boolean z4) {
        this.f4648e = z4;
        return this;
    }

    public i1.i x(boolean z4) {
        this.f4647d = z4;
        return this;
    }

    public i1.i y(boolean z4) {
        this.f4645b = z4;
        return this;
    }
}
