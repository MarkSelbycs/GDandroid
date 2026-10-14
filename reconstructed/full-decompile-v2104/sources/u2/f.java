package u2;

/* JADX INFO: compiled from: LazilyParsedNumber.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f extends java.lang.Number {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f6339a;

    public f(java.lang.String str) {
        this.f6339a = str;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return java.lang.Double.parseDouble(this.f6339a);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u2.f)) {
            return false;
        }
        java.lang.String str = this.f6339a;
        java.lang.String str2 = ((u2.f) obj).f6339a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return java.lang.Float.parseFloat(this.f6339a);
    }

    public int hashCode() {
        return this.f6339a.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return java.lang.Integer.parseInt(this.f6339a);
            } catch (java.lang.NumberFormatException unused) {
                return (int) java.lang.Long.parseLong(this.f6339a);
            }
        } catch (java.lang.NumberFormatException unused2) {
            return new java.math.BigDecimal(this.f6339a).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return java.lang.Long.parseLong(this.f6339a);
        } catch (java.lang.NumberFormatException unused) {
            return new java.math.BigDecimal(this.f6339a).longValue();
        }
    }

    public java.lang.String toString() {
        return this.f6339a;
    }
}
