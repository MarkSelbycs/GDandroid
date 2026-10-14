package e2;

/* JADX INFO: compiled from: ByteUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.nio.ByteOrder f4071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.nio.ByteOrder f4072b;

    static {
        java.nio.ByteOrder byteOrder = java.nio.ByteOrder.LITTLE_ENDIAN;
        f4071a = byteOrder;
        if (!"little".equals(java.lang.System.getProperty("sun.cpu.endian"))) {
            byteOrder = java.nio.ByteOrder.BIG_ENDIAN;
        }
        f4072b = byteOrder;
    }

    public static double a(byte[] bArr, java.nio.ByteOrder byteOrder) {
        return java.lang.Double.longBitsToDouble(f(bArr, byteOrder));
    }

    public static float b(byte[] bArr, java.nio.ByteOrder byteOrder) {
        return java.lang.Float.intBitsToFloat(d(bArr, byteOrder));
    }

    public static int c(byte[] bArr, int i5, java.nio.ByteOrder byteOrder) {
        int i6;
        byte b5;
        if (java.nio.ByteOrder.LITTLE_ENDIAN == byteOrder) {
            i6 = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16);
            b5 = bArr[i5 + 3];
        } else {
            i6 = (bArr[i5 + 3] & 255) | ((bArr[i5 + 2] & 255) << 8) | ((bArr[i5 + 1] & 255) << 16);
            b5 = bArr[i5];
        }
        return ((b5 & 255) << 24) | i6;
    }

    public static int d(byte[] bArr, java.nio.ByteOrder byteOrder) {
        return c(bArr, 0, byteOrder);
    }

    public static long e(byte[] bArr, int i5, java.nio.ByteOrder byteOrder) {
        long j5 = 0;
        if (java.nio.ByteOrder.LITTLE_ENDIAN == byteOrder) {
            for (int i6 = 7; i6 >= 0; i6--) {
                j5 = (j5 << 8) | ((long) (bArr[i6 + i5] & 255));
            }
        } else {
            for (int i7 = 0; i7 < 8; i7++) {
                j5 = (j5 << 8) | ((long) (bArr[i7 + i5] & 255));
            }
        }
        return j5;
    }

    public static long f(byte[] bArr, java.nio.ByteOrder byteOrder) {
        return e(bArr, 0, byteOrder);
    }

    public static <T extends java.lang.Number> T g(byte[] bArr, java.lang.Class<T> cls, java.nio.ByteOrder byteOrder) throws java.lang.IllegalArgumentException {
        T atomicLong;
        if (java.lang.Byte.class == cls) {
            return java.lang.Byte.valueOf(bArr[0]);
        }
        if (java.lang.Short.class == cls) {
            return java.lang.Short.valueOf(i(bArr, byteOrder));
        }
        if (java.lang.Integer.class == cls) {
            return java.lang.Integer.valueOf(d(bArr, byteOrder));
        }
        if (java.util.concurrent.atomic.AtomicInteger.class == cls) {
            atomicLong = new java.util.concurrent.atomic.AtomicInteger(d(bArr, byteOrder));
        } else {
            if (java.lang.Long.class == cls) {
                return java.lang.Long.valueOf(f(bArr, byteOrder));
            }
            if (java.util.concurrent.atomic.AtomicLong.class == cls) {
                atomicLong = new java.util.concurrent.atomic.AtomicLong(f(bArr, byteOrder));
            } else if (java.util.concurrent.atomic.LongAdder.class == cls) {
                java.util.concurrent.atomic.LongAdder longAdder = new java.util.concurrent.atomic.LongAdder();
                longAdder.add(f(bArr, byteOrder));
                atomicLong = longAdder;
            } else {
                if (java.lang.Float.class == cls) {
                    return java.lang.Float.valueOf(b(bArr, byteOrder));
                }
                if (java.lang.Double.class == cls) {
                    return java.lang.Double.valueOf(a(bArr, byteOrder));
                }
                if (java.util.concurrent.atomic.DoubleAdder.class != cls) {
                    if (java.math.BigDecimal.class == cls) {
                        return e2.o.k(java.lang.Double.valueOf(a(bArr, byteOrder)));
                    }
                    if (java.math.BigInteger.class == cls) {
                        return java.math.BigInteger.valueOf(f(bArr, byteOrder));
                    }
                    if (java.lang.Number.class == cls) {
                        return java.lang.Double.valueOf(a(bArr, byteOrder));
                    }
                    throw new java.lang.IllegalArgumentException("Unsupported Number type: " + cls.getName());
                }
                java.util.concurrent.atomic.DoubleAdder doubleAdder = new java.util.concurrent.atomic.DoubleAdder();
                doubleAdder.add(a(bArr, byteOrder));
                atomicLong = doubleAdder;
            }
        }
        return atomicLong;
    }

    public static short h(byte[] bArr, int i5, java.nio.ByteOrder byteOrder) {
        int i6;
        byte b5;
        if (java.nio.ByteOrder.LITTLE_ENDIAN == byteOrder) {
            i6 = bArr[i5] & 255;
            b5 = bArr[i5 + 1];
        } else {
            i6 = bArr[i5 + 1] & 255;
            b5 = bArr[i5];
        }
        return (short) (((b5 & 255) << 8) | i6);
    }

    public static short i(byte[] bArr, java.nio.ByteOrder byteOrder) {
        return h(bArr, 0, byteOrder);
    }

    public static byte[] j(double d5, java.nio.ByteOrder byteOrder) {
        return m(java.lang.Double.doubleToLongBits(d5), byteOrder);
    }

    public static byte[] k(float f5, java.nio.ByteOrder byteOrder) {
        return l(java.lang.Float.floatToIntBits(f5), byteOrder);
    }

    public static byte[] l(int i5, java.nio.ByteOrder byteOrder) {
        return java.nio.ByteOrder.LITTLE_ENDIAN == byteOrder ? new byte[]{(byte) (i5 & 255), (byte) ((i5 >> 8) & 255), (byte) ((i5 >> 16) & 255), (byte) ((i5 >> 24) & 255)} : new byte[]{(byte) ((i5 >> 24) & 255), (byte) ((i5 >> 16) & 255), (byte) ((i5 >> 8) & 255), (byte) (i5 & 255)};
    }

    public static byte[] m(long j5, java.nio.ByteOrder byteOrder) {
        byte[] bArr = new byte[8];
        if (java.nio.ByteOrder.LITTLE_ENDIAN == byteOrder) {
            for (int i5 = 0; i5 < 8; i5++) {
                bArr[i5] = (byte) (j5 & 255);
                j5 >>= 8;
            }
        } else {
            for (int i6 = 7; i6 >= 0; i6--) {
                bArr[i6] = (byte) (j5 & 255);
                j5 >>= 8;
            }
        }
        return bArr;
    }

    public static byte[] n(java.lang.Number number) {
        return o(number, f4071a);
    }

    public static byte[] o(java.lang.Number number, java.nio.ByteOrder byteOrder) {
        if (number instanceof java.lang.Byte) {
            return new byte[]{number.byteValue()};
        }
        if (number instanceof java.lang.Double) {
            return j(((java.lang.Double) number).doubleValue(), byteOrder);
        }
        if (number instanceof java.lang.Long) {
            return m(((java.lang.Long) number).longValue(), byteOrder);
        }
        if (number instanceof java.lang.Integer) {
            return l(((java.lang.Integer) number).intValue(), byteOrder);
        }
        if (number instanceof java.lang.Short) {
            return p(((java.lang.Short) number).shortValue(), byteOrder);
        }
        return number instanceof java.lang.Float ? k(((java.lang.Float) number).floatValue(), byteOrder) : j(number.doubleValue(), byteOrder);
    }

    public static byte[] p(short s5, java.nio.ByteOrder byteOrder) {
        byte[] bArr = new byte[2];
        if (java.nio.ByteOrder.LITTLE_ENDIAN == byteOrder) {
            bArr[0] = (byte) (s5 & 255);
            bArr[1] = (byte) ((s5 >> 8) & 255);
        } else {
            bArr[1] = (byte) (s5 & 255);
            bArr[0] = (byte) ((s5 >> 8) & 255);
        }
        return bArr;
    }
}
