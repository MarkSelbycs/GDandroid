package n1;

/* JADX INFO: compiled from: NumberWithFormat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends java.lang.Number implements n1.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Number f5253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f5254b;

    public h(java.lang.Number number, java.lang.String str) {
        this.f5253a = number;
        this.f5254b = str;
    }

    @Override // n1.i
    public java.lang.Object b(java.lang.reflect.Type type, java.lang.Object obj) {
        if (this.f5254b != null && (type instanceof java.lang.Class)) {
            java.lang.Class cls = (java.lang.Class) type;
            if (java.util.Date.class.isAssignableFrom(cls)) {
                return new o1.n(cls, this.f5254b).b(this.f5253a, null);
            }
            if (java.time.temporal.TemporalAccessor.class.isAssignableFrom(cls)) {
                return new o1.o0(cls, this.f5254b).b(this.f5253a, null);
            }
            if (java.lang.String.class == cls) {
                return toString();
            }
        }
        return n1.c.f(type, this.f5253a, null, false);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.f5253a.doubleValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.f5253a.floatValue();
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.f5253a.intValue();
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.f5253a.longValue();
    }

    public java.lang.String toString() {
        return this.f5253a.toString();
    }
}
