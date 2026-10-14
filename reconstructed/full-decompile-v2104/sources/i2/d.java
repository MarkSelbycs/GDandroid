package i2;

/* JADX INFO: compiled from: LogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.String f4664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<java.lang.Object, i2.b> f4665b = new a2.u();

    public d(java.lang.String str) {
        this.f4664a = str;
    }

    public void b(java.lang.Class<?> cls) {
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public abstract i2.b e(java.lang.Class<?> cls);

    public i2.b d(java.lang.Class<?> cls) {
        return this.f4665b.computeIfAbsent(cls, new java.util.function.Function() { // from class: i2.c
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return this.f4663a.e(obj);
            }
        });
    }
}
