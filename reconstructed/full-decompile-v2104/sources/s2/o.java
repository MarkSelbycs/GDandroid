package s2;

/* JADX INFO: compiled from: JsonPrimitive.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o extends s2.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.Class<?>[] f6069b = {java.lang.Integer.TYPE, java.lang.Long.TYPE, java.lang.Short.TYPE, java.lang.Float.TYPE, java.lang.Double.TYPE, java.lang.Byte.TYPE, java.lang.Boolean.TYPE, java.lang.Character.TYPE, java.lang.Integer.class, java.lang.Long.class, java.lang.Short.class, java.lang.Float.class, java.lang.Double.class, java.lang.Byte.class, java.lang.Boolean.class, java.lang.Character.class};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.Object f6070a;

    public o(java.lang.Boolean bool) {
        t(bool);
    }

    public static boolean p(s2.o oVar) {
        java.lang.Object obj = oVar.f6070a;
        if (!(obj instanceof java.lang.Number)) {
            return false;
        }
        java.lang.Number number = (java.lang.Number) obj;
        return (number instanceof java.math.BigInteger) || (number instanceof java.lang.Long) || (number instanceof java.lang.Integer) || (number instanceof java.lang.Short) || (number instanceof java.lang.Byte);
    }

    public static boolean r(java.lang.Object obj) {
        if (obj instanceof java.lang.String) {
            return true;
        }
        java.lang.Class<?> cls = obj.getClass();
        for (java.lang.Class<?> cls2 : f6069b) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // s2.i
    public int a() {
        return q() ? n().intValue() : java.lang.Integer.parseInt(e());
    }

    @Override // s2.i
    public java.lang.String e() {
        if (q()) {
            return n().toString();
        }
        return o() ? k().toString() : (java.lang.String) this.f6070a;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s2.o.class != obj.getClass()) {
            return false;
        }
        s2.o oVar = (s2.o) obj;
        if (this.f6070a == null) {
            return oVar.f6070a == null;
        }
        if (p(this) && p(oVar)) {
            return n().longValue() == oVar.n().longValue();
        }
        java.lang.Object obj2 = this.f6070a;
        if (!(obj2 instanceof java.lang.Number) || !(oVar.f6070a instanceof java.lang.Number)) {
            return obj2.equals(oVar.f6070a);
        }
        double dDoubleValue = n().doubleValue();
        double dDoubleValue2 = oVar.n().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return java.lang.Double.isNaN(dDoubleValue) && java.lang.Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f6070a == null) {
            return 31;
        }
        if (p(this)) {
            jDoubleToLongBits = n().longValue();
        } else {
            java.lang.Object obj = this.f6070a;
            if (!(obj instanceof java.lang.Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = java.lang.Double.doubleToLongBits(n().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public boolean j() {
        return o() ? k().booleanValue() : java.lang.Boolean.parseBoolean(e());
    }

    public java.lang.Boolean k() {
        return (java.lang.Boolean) this.f6070a;
    }

    public double l() {
        return q() ? n().doubleValue() : java.lang.Double.parseDouble(e());
    }

    public long m() {
        return q() ? n().longValue() : java.lang.Long.parseLong(e());
    }

    public java.lang.Number n() {
        java.lang.Object obj = this.f6070a;
        return obj instanceof java.lang.String ? new u2.f((java.lang.String) obj) : (java.lang.Number) obj;
    }

    public boolean o() {
        return this.f6070a instanceof java.lang.Boolean;
    }

    public boolean q() {
        return this.f6070a instanceof java.lang.Number;
    }

    public boolean s() {
        return this.f6070a instanceof java.lang.String;
    }

    public void t(java.lang.Object obj) {
        if (obj instanceof java.lang.Character) {
            this.f6070a = java.lang.String.valueOf(((java.lang.Character) obj).charValue());
        } else {
            u2.a.a((obj instanceof java.lang.Number) || r(obj));
            this.f6070a = obj;
        }
    }

    public o(java.lang.Number number) {
        t(number);
    }

    public o(java.lang.String str) {
        t(str);
    }

    public o(java.lang.Object obj) {
        t(obj);
    }
}
