package e2;

/* JADX INFO: compiled from: NumberUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long[] f4092a = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};

    public static int a(int i5, int i6) {
        return java.lang.Integer.compare(i5, i6);
    }

    public static boolean b(char c5, char c6, boolean z4) {
        return e2.f.a(c5, c6, z4);
    }

    public static boolean c(java.math.BigDecimal bigDecimal, java.math.BigDecimal bigDecimal2) {
        if (bigDecimal == bigDecimal2) {
            return true;
        }
        return (bigDecimal == null || bigDecimal2 == null || bigDecimal.compareTo(bigDecimal2) != 0) ? false : true;
    }

    public static boolean d(java.lang.CharSequence charSequence) {
        char c5;
        char c6;
        if (b2.c.q(charSequence)) {
            return false;
        }
        char[] charArray = charSequence.toString().toCharArray();
        int length = charArray.length;
        boolean z4 = true;
        int i5 = (charArray[0] == '-' || charArray[0] == '+') ? 1 : 0;
        int i6 = i5 + 1;
        if (length > i6 && charArray[i5] == '0' && (charArray[i6] == 'x' || charArray[i6] == 'X')) {
            int i7 = i5 + 2;
            if (i7 == length) {
                return false;
            }
            while (i7 < charArray.length) {
                if ((charArray[i7] < '0' || charArray[i7] > '9') && ((charArray[i7] < 'a' || charArray[i7] > 'f') && (charArray[i7] < 'A' || charArray[i7] > 'F'))) {
                    return false;
                }
                i7++;
            }
            return true;
        }
        int i8 = length - 1;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            if (i5 >= i8 && (i5 >= i8 + 1 || !z5 || z6)) {
                if (i5 >= charArray.length) {
                    if (z5 || !z6) {
                        return false;
                    }
                    return z4;
                }
                if (charArray[i5] >= '0' && charArray[i5] <= '9') {
                    return z4;
                }
                if (charArray[i5] == 'e' || charArray[i5] == 'E') {
                    return false;
                }
                if (charArray[i5] == '.') {
                    if (z8 || z7) {
                        return false;
                    }
                    return z6;
                }
                if (!z5 && (charArray[i5] == 'd' || charArray[i5] == 'D' || charArray[i5] == 'f' || charArray[i5] == 'F')) {
                    return z6;
                }
                if ((charArray[i5] == 'l' || charArray[i5] == 'L') && z6 && !z7) {
                    return z4;
                }
                return false;
            }
            if (charArray[i5] >= '0' && charArray[i5] <= '9') {
                z5 = false;
                c5 = '+';
                c6 = '-';
                z6 = true;
            } else if (charArray[i5] == '.') {
                if (z8 || z7) {
                    break;
                }
                c5 = '+';
                c6 = '-';
                z8 = true;
            } else if (charArray[i5] == 'e' || charArray[i5] == 'E') {
                c5 = '+';
                c6 = '-';
                if (z7 || !z6) {
                    return false;
                }
                z5 = true;
                z7 = true;
            } else {
                c5 = '+';
                if (charArray[i5] != '+') {
                    c6 = '-';
                    if (charArray[i5] != '-') {
                        return false;
                    }
                } else {
                    c6 = '-';
                }
                if (!z5) {
                    return false;
                }
                z5 = false;
                z6 = false;
            }
            i5++;
            z4 = true;
        }
        return false;
    }

    public static boolean e(java.lang.Number number) {
        if (number == null) {
            return false;
        }
        if (number instanceof java.lang.Double) {
            java.lang.Double d5 = (java.lang.Double) number;
            return (d5.isInfinite() || d5.isNaN()) ? false : true;
        }
        if (!(number instanceof java.lang.Float)) {
            return true;
        }
        java.lang.Float f5 = (java.lang.Float) number;
        return (f5.isInfinite() || f5.isNaN()) ? false : true;
    }

    public static double f(java.lang.String str) {
        if (b2.c.q(str)) {
            return 0.0d;
        }
        try {
            return java.lang.Double.parseDouble(str);
        } catch (java.lang.NumberFormatException unused) {
            return j(str).doubleValue();
        }
    }

    public static float g(java.lang.String str) {
        if (b2.c.q(str)) {
            return 0.0f;
        }
        try {
            return java.lang.Float.parseFloat(str);
        } catch (java.lang.NumberFormatException unused) {
            return j(str).floatValue();
        }
    }

    public static int h(java.lang.String str) throws java.lang.NumberFormatException {
        if (b2.c.q(str)) {
            return 0;
        }
        if (b2.c.e(str, "E")) {
            throw new java.lang.NumberFormatException(b2.c.i("Unsupported int format: [{}]", str));
        }
        if (b2.c.K(str, "0x")) {
            return java.lang.Integer.parseInt(str.substring(2), 16);
        }
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.NumberFormatException unused) {
            return j(str).intValue();
        }
    }

    public static long i(java.lang.String str) {
        if (b2.c.q(str)) {
            return 0L;
        }
        if (str.startsWith("0x")) {
            return java.lang.Long.parseLong(str.substring(2), 16);
        }
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.NumberFormatException unused) {
            return j(str).longValue();
        }
    }

    public static java.lang.Number j(java.lang.String str) throws java.lang.NumberFormatException {
        if (b2.c.K(str, "0x")) {
            return java.lang.Long.valueOf(java.lang.Long.parseLong(str.substring(2), 16));
        }
        try {
            java.text.NumberFormat numberFormat = java.text.NumberFormat.getInstance();
            if (numberFormat instanceof java.text.DecimalFormat) {
                ((java.text.DecimalFormat) numberFormat).setParseBigDecimal(true);
            }
            return numberFormat.parse(str);
        } catch (java.text.ParseException e5) {
            java.lang.NumberFormatException numberFormatException = new java.lang.NumberFormatException(e5.getMessage());
            numberFormatException.initCause(e5);
            throw numberFormatException;
        }
    }

    public static java.math.BigDecimal k(java.lang.Number number) {
        if (number == null) {
            return java.math.BigDecimal.ZERO;
        }
        if (number instanceof java.math.BigDecimal) {
            return (java.math.BigDecimal) number;
        }
        if (number instanceof java.lang.Long) {
            return new java.math.BigDecimal(((java.lang.Long) number).longValue());
        }
        if (number instanceof java.lang.Integer) {
            return new java.math.BigDecimal(((java.lang.Integer) number).intValue());
        }
        return number instanceof java.math.BigInteger ? new java.math.BigDecimal((java.math.BigInteger) number) : l(number.toString());
    }

    public static java.math.BigDecimal l(java.lang.String str) {
        if (b2.c.q(str)) {
            return java.math.BigDecimal.ZERO;
        }
        try {
            java.lang.Number numberJ = j(str);
            return numberJ instanceof java.math.BigDecimal ? (java.math.BigDecimal) numberJ : new java.math.BigDecimal(numberJ.toString());
        } catch (java.lang.Exception unused) {
            return new java.math.BigDecimal(str);
        }
    }

    public static java.math.BigInteger m(java.lang.String str) {
        return b2.c.q(str) ? java.math.BigInteger.ZERO : new java.math.BigInteger(str);
    }

    public static double n(java.lang.Number number) {
        return number instanceof java.lang.Float ? java.lang.Double.parseDouble(number.toString()) : number.doubleValue();
    }

    public static java.lang.String o(java.lang.Number number, boolean z4) throws java.lang.Throwable {
        v1.e.q(number, "Number is null !", new java.lang.Object[0]);
        if (number instanceof java.math.BigDecimal) {
            return p((java.math.BigDecimal) number, z4);
        }
        v1.e.e(e(number), "Number is non-finite!", new java.lang.Object[0]);
        java.lang.String string = number.toString();
        if (!z4 || string.indexOf(46) <= 0 || string.indexOf(101) >= 0 || string.indexOf(69) >= 0) {
            return string;
        }
        while (string.endsWith(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS)) {
            string = string.substring(0, string.length() - 1);
        }
        return string.endsWith(".") ? string.substring(0, string.length() - 1) : string;
    }

    public static java.lang.String p(java.math.BigDecimal bigDecimal, boolean z4) {
        v1.e.q(bigDecimal, "BigDecimal is null !", new java.lang.Object[0]);
        if (z4) {
            bigDecimal = bigDecimal.stripTrailingZeros();
        }
        return bigDecimal.toPlainString();
    }
}
