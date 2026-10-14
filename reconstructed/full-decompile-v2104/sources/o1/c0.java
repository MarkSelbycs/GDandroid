package o1;

/* JADX INFO: compiled from: NumberConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c0 extends n1.a<java.lang.Number> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<? extends java.lang.Number> f5292a;

    public c0() {
        this.f5292a = java.lang.Number.class;
    }

    public static java.lang.Number h(java.lang.Object obj, java.lang.Class<? extends java.lang.Number> cls, java.util.function.Function<java.lang.Object, java.lang.String> function) {
        if (obj instanceof java.lang.Enum) {
            return h(java.lang.Integer.valueOf(((java.lang.Enum) obj).ordinal()), cls, function);
        }
        if (obj instanceof byte[]) {
            return e2.e.g((byte[]) obj, cls, e2.e.f4071a);
        }
        if (java.lang.Byte.class == cls) {
            if (obj instanceof java.lang.Number) {
                return java.lang.Byte.valueOf(((java.lang.Number) obj).byteValue());
            }
            if (obj instanceof java.lang.Boolean) {
                return e2.d.d(((java.lang.Boolean) obj).booleanValue());
            }
            java.lang.String strApply = function.apply(obj);
            try {
                if (b2.c.q(strApply)) {
                    return null;
                }
                return java.lang.Byte.valueOf(strApply);
            } catch (java.lang.NumberFormatException unused) {
                return java.lang.Byte.valueOf(e2.o.j(strApply).byteValue());
            }
        }
        if (java.lang.Short.class == cls) {
            if (obj instanceof java.lang.Number) {
                return java.lang.Short.valueOf(((java.lang.Number) obj).shortValue());
            }
            if (obj instanceof java.lang.Boolean) {
                return e2.d.p(((java.lang.Boolean) obj).booleanValue());
            }
            java.lang.String strApply2 = function.apply(obj);
            try {
                if (b2.c.q(strApply2)) {
                    return null;
                }
                return java.lang.Short.valueOf(strApply2);
            } catch (java.lang.NumberFormatException unused2) {
                return java.lang.Short.valueOf(e2.o.j(strApply2).shortValue());
            }
        }
        if (java.lang.Integer.class == cls) {
            if (obj instanceof java.lang.Number) {
                return java.lang.Integer.valueOf(((java.lang.Number) obj).intValue());
            }
            if (obj instanceof java.lang.Boolean) {
                return e2.d.l(((java.lang.Boolean) obj).booleanValue());
            }
            if (obj instanceof java.util.Date) {
                return java.lang.Integer.valueOf((int) ((java.util.Date) obj).getTime());
            }
            if (obj instanceof java.util.Calendar) {
                return java.lang.Integer.valueOf((int) ((java.util.Calendar) obj).getTimeInMillis());
            }
            if (obj instanceof java.time.temporal.TemporalAccessor) {
                return java.lang.Integer.valueOf((int) p1.f.w((java.time.temporal.TemporalAccessor) obj).toEpochMilli());
            }
            java.lang.String strApply3 = function.apply(obj);
            if (b2.c.q(strApply3)) {
                return null;
            }
            return java.lang.Integer.valueOf(e2.o.h(strApply3));
        }
        if (java.util.concurrent.atomic.AtomicInteger.class == cls) {
            java.lang.Number numberH = h(obj, java.lang.Integer.class, function);
            if (numberH != null) {
                return new java.util.concurrent.atomic.AtomicInteger(numberH.intValue());
            }
        } else {
            if (java.lang.Long.class == cls) {
                if (obj instanceof java.lang.Number) {
                    return java.lang.Long.valueOf(((java.lang.Number) obj).longValue());
                }
                if (obj instanceof java.lang.Boolean) {
                    return e2.d.n(((java.lang.Boolean) obj).booleanValue());
                }
                if (obj instanceof java.util.Date) {
                    return java.lang.Long.valueOf(((java.util.Date) obj).getTime());
                }
                if (obj instanceof java.util.Calendar) {
                    return java.lang.Long.valueOf(((java.util.Calendar) obj).getTimeInMillis());
                }
                if (obj instanceof java.time.temporal.TemporalAccessor) {
                    return java.lang.Long.valueOf(p1.f.w((java.time.temporal.TemporalAccessor) obj).toEpochMilli());
                }
                java.lang.String strApply4 = function.apply(obj);
                if (b2.c.q(strApply4)) {
                    return null;
                }
                return java.lang.Long.valueOf(e2.o.i(strApply4));
            }
            if (java.util.concurrent.atomic.AtomicLong.class == cls) {
                java.lang.Number numberH2 = h(obj, java.lang.Long.class, function);
                if (numberH2 != null) {
                    return new java.util.concurrent.atomic.AtomicLong(numberH2.longValue());
                }
            } else if (java.util.concurrent.atomic.LongAdder.class == cls) {
                java.lang.Number numberH3 = h(obj, java.lang.Long.class, function);
                if (numberH3 != null) {
                    java.util.concurrent.atomic.LongAdder longAdder = new java.util.concurrent.atomic.LongAdder();
                    longAdder.add(numberH3.longValue());
                    return longAdder;
                }
            } else {
                if (java.lang.Float.class == cls) {
                    if (obj instanceof java.lang.Number) {
                        return java.lang.Float.valueOf(((java.lang.Number) obj).floatValue());
                    }
                    if (obj instanceof java.lang.Boolean) {
                        return e2.d.j(((java.lang.Boolean) obj).booleanValue());
                    }
                    java.lang.String strApply5 = function.apply(obj);
                    if (b2.c.q(strApply5)) {
                        return null;
                    }
                    return java.lang.Float.valueOf(e2.o.g(strApply5));
                }
                if (java.lang.Double.class == cls) {
                    if (obj instanceof java.lang.Number) {
                        return java.lang.Double.valueOf(e2.o.n((java.lang.Number) obj));
                    }
                    if (obj instanceof java.lang.Boolean) {
                        return e2.d.h(((java.lang.Boolean) obj).booleanValue());
                    }
                    java.lang.String strApply6 = function.apply(obj);
                    if (b2.c.q(strApply6)) {
                        return null;
                    }
                    return java.lang.Double.valueOf(e2.o.f(strApply6));
                }
                if (java.util.concurrent.atomic.DoubleAdder.class == cls) {
                    java.lang.Number numberH4 = h(obj, java.lang.Double.class, function);
                    if (numberH4 != null) {
                        java.util.concurrent.atomic.DoubleAdder doubleAdder = new java.util.concurrent.atomic.DoubleAdder();
                        doubleAdder.add(numberH4.doubleValue());
                        return doubleAdder;
                    }
                } else {
                    if (java.math.BigDecimal.class == cls) {
                        return q(obj, function);
                    }
                    if (java.math.BigInteger.class == cls) {
                        return u(obj, function);
                    }
                    if (java.lang.Number.class == cls) {
                        if (obj instanceof java.lang.Number) {
                            return (java.lang.Number) obj;
                        }
                        if (obj instanceof java.lang.Boolean) {
                            return e2.d.l(((java.lang.Boolean) obj).booleanValue());
                        }
                        java.lang.String strApply7 = function.apply(obj);
                        if (b2.c.q(strApply7)) {
                            return null;
                        }
                        return e2.o.j(strApply7);
                    }
                }
            }
        }
        throw new java.lang.UnsupportedOperationException(b2.c.i("Unsupport Number type: {}", cls.getName()));
    }

    public static java.math.BigDecimal q(java.lang.Object obj, java.util.function.Function<java.lang.Object, java.lang.String> function) {
        if (obj instanceof java.lang.Number) {
            return e2.o.k((java.lang.Number) obj);
        }
        if (obj instanceof java.lang.Boolean) {
            return ((java.lang.Boolean) obj).booleanValue() ? java.math.BigDecimal.ONE : java.math.BigDecimal.ZERO;
        }
        return e2.o.l(function.apply(obj));
    }

    public static java.math.BigInteger u(java.lang.Object obj, java.util.function.Function<java.lang.Object, java.lang.String> function) {
        if (obj instanceof java.lang.Long) {
            return java.math.BigInteger.valueOf(((java.lang.Long) obj).longValue());
        }
        if (obj instanceof java.lang.Boolean) {
            return ((java.lang.Boolean) obj).booleanValue() ? java.math.BigInteger.ONE : java.math.BigInteger.ZERO;
        }
        return e2.o.m(function.apply(obj));
    }

    @Override // n1.a
    public java.lang.String e(java.lang.Object obj) {
        java.lang.String strW = b2.c.W(super.e(obj));
        if (strW == null || strW.length() <= 1) {
            return strW;
        }
        char upperCase = java.lang.Character.toUpperCase(strW.charAt(strW.length() - 1));
        return (upperCase == 'D' || upperCase == 'L' || upperCase == 'F') ? b2.c.S(strW, -1) : strW;
    }

    @Override // n1.a
    public java.lang.Class<java.lang.Number> f() {
        return this.f5292a;
    }

    @Override // n1.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public java.lang.Number c(java.lang.Object obj) {
        return h(obj, this.f5292a, new java.util.function.Function() { // from class: o1.b0
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj2) {
                return this.f5291a.e(obj2);
            }
        });
    }

    /* JADX WARN: Incorrect type for immutable var: ssa=java.lang.Class<? extends java.lang.Number>, code=java.lang.Class, for r1v0, types: [java.lang.Class<? extends java.lang.Number>] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public c0(java.lang.Class cls) {
        this.f5292a = cls == null ? java.lang.Number.class : cls;
    }
}
