package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class RyuDouble {
    private static final int[][] POW5_SPLIT = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, 326, 4);
    private static final int[][] POW5_INV_SPLIT = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, 291, 4);

    static {
        java.math.BigInteger bigInteger = java.math.BigInteger.ONE;
        java.math.BigInteger bigIntegerSubtract = bigInteger.shiftLeft(31).subtract(bigInteger);
        java.math.BigInteger bigIntegerSubtract2 = bigInteger.shiftLeft(31).subtract(bigInteger);
        int i5 = 0;
        while (i5 < 326) {
            java.math.BigInteger bigIntegerPow = java.math.BigInteger.valueOf(5L).pow(i5);
            int iBitLength = bigIntegerPow.bitLength();
            int i6 = i5 == 0 ? 1 : (int) ((((((long) i5) * 23219280) + 10000000) - 1) / 10000000);
            if (i6 != iBitLength) {
                throw new java.lang.IllegalStateException(iBitLength + " != " + i6);
            }
            if (i5 < POW5_SPLIT.length) {
                for (int i7 = 0; i7 < 4; i7++) {
                    POW5_SPLIT[i5][i7] = bigIntegerPow.shiftRight((iBitLength - 121) + ((3 - i7) * 31)).and(bigIntegerSubtract).intValue();
                }
            }
            if (i5 < POW5_INV_SPLIT.length) {
                java.math.BigInteger bigInteger2 = java.math.BigInteger.ONE;
                java.math.BigInteger bigIntegerAdd = bigInteger2.shiftLeft(iBitLength + 121).divide(bigIntegerPow).add(bigInteger2);
                for (int i8 = 0; i8 < 4; i8++) {
                    if (i8 == 0) {
                        POW5_INV_SPLIT[i5][i8] = bigIntegerAdd.shiftRight((3 - i8) * 31).intValue();
                    } else {
                        POW5_INV_SPLIT[i5][i8] = bigIntegerAdd.shiftRight((3 - i8) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            i5++;
        }
    }

    public static java.lang.String toString(double d5) {
        char[] cArr = new char[24];
        return new java.lang.String(cArr, 0, toString(d5, cArr, 0));
    }

    public static int toString(double d5, char[] cArr, int i5) {
        int i6;
        boolean z4;
        boolean z5;
        long j5;
        int i7;
        long j6;
        int i8;
        int i9;
        int i10;
        long j7;
        long j8;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        if (!java.lang.Double.isNaN(d5)) {
            if (d5 == Double.POSITIVE_INFINITY) {
                int i21 = i5 + 1;
                cArr[i5] = 'I';
                int i22 = i21 + 1;
                cArr[i21] = 'n';
                int i23 = i22 + 1;
                cArr[i22] = 'f';
                int i24 = i23 + 1;
                cArr[i23] = 'i';
                int i25 = i24 + 1;
                cArr[i24] = 'n';
                int i26 = i25 + 1;
                cArr[i25] = 'i';
                int i27 = i26 + 1;
                cArr[i26] = 't';
                i15 = i27 + 1;
                cArr[i27] = 'y';
            } else if (d5 == Double.NEGATIVE_INFINITY) {
                int i28 = i5 + 1;
                cArr[i5] = '-';
                int i29 = i28 + 1;
                cArr[i28] = 'I';
                int i30 = i29 + 1;
                cArr[i29] = 'n';
                int i31 = i30 + 1;
                cArr[i30] = 'f';
                int i32 = i31 + 1;
                cArr[i31] = 'i';
                int i33 = i32 + 1;
                cArr[i32] = 'n';
                int i34 = i33 + 1;
                cArr[i33] = 'i';
                int i35 = i34 + 1;
                cArr[i34] = 't';
                i20 = i35 + 1;
                cArr[i35] = 'y';
            } else {
                long jDoubleToLongBits = java.lang.Double.doubleToLongBits(d5);
                if (jDoubleToLongBits == 0) {
                    int i36 = i5 + 1;
                    cArr[i5] = '0';
                    int i37 = i36 + 1;
                    cArr[i36] = '.';
                    i20 = i37 + 1;
                    cArr[i37] = '0';
                } else if (jDoubleToLongBits == Long.MIN_VALUE) {
                    int i38 = i5 + 1;
                    cArr[i5] = '-';
                    int i39 = i38 + 1;
                    cArr[i38] = '0';
                    int i40 = i39 + 1;
                    cArr[i39] = '.';
                    i15 = i40 + 1;
                    cArr[i40] = '0';
                } else {
                    int i41 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                    long j9 = jDoubleToLongBits & 4503599627370495L;
                    if (i41 == 0) {
                        i6 = -1074;
                    } else {
                        i6 = (i41 - 1023) - 52;
                        j9 |= 4503599627370496L;
                    }
                    boolean z6 = jDoubleToLongBits < 0;
                    boolean z7 = (j9 & 1) == 0;
                    long j10 = 4 * j9;
                    long j11 = j10 + 2;
                    int i42 = (j9 != 4503599627370496L || i41 <= 1) ? 1 : 0;
                    long j12 = (j10 - 1) - ((long) i42);
                    int i43 = i6 - 2;
                    int i44 = 3;
                    if (i43 >= 0) {
                        int iMax = java.lang.Math.max(0, ((int) ((((long) i43) * 3010299) / 10000000)) - 1);
                        int i45 = ((((-i43) + iMax) + (((iMax == 0 ? 1 : (int) ((((((long) iMax) * 23219280) + 10000000) - 1) / 10000000)) + 122) - 1)) - 93) - 21;
                        if (i45 >= 0) {
                            int[] iArr = POW5_INV_SPLIT[iMax];
                            long j13 = j10 >>> 31;
                            long j14 = j10 & 2147483647L;
                            long j15 = ((long) iArr[0]) * j13;
                            z4 = z6;
                            z5 = z7;
                            long j16 = ((((((((((((j14 * ((long) iArr[3])) >>> 31) + (((long) iArr[2]) * j14)) + (j13 * ((long) iArr[3]))) >>> 31) + (((long) iArr[1]) * j14)) + (((long) iArr[2]) * j13)) >>> 31) + (((long) iArr[0]) * j14)) + (((long) iArr[1]) * j13)) >>> 21) + (j15 << 10)) >>> i45;
                            long j17 = j11 >>> 31;
                            long j18 = j11 & 2147483647L;
                            long j19 = ((long) iArr[0]) * j17;
                            long j20 = ((((((((((((j18 * ((long) iArr[3])) >>> 31) + (((long) iArr[2]) * j18)) + (j17 * ((long) iArr[3]))) >>> 31) + (((long) iArr[1]) * j18)) + (((long) iArr[2]) * j17)) >>> 31) + (((long) iArr[0]) * j18)) + (((long) iArr[1]) * j17)) >>> 21) + (j19 << 10)) >>> i45;
                            long j21 = j12 >>> 31;
                            long j22 = j12 & 2147483647L;
                            long j23 = ((long) iArr[0]) * j21;
                            j7 = j20;
                            j6 = ((((((((((((j22 * ((long) iArr[3])) >>> 31) + (((long) iArr[2]) * j22)) + (j21 * ((long) iArr[3]))) >>> 31) + (((long) iArr[1]) * j22)) + (((long) iArr[2]) * j21)) >>> 31) + (((long) iArr[0]) * j22)) + (((long) iArr[1]) * j21)) >>> 21) + (j23 << 10)) >>> i45;
                            if (iMax <= 21) {
                                long j24 = j10 % 5;
                                if (j24 == 0) {
                                    if (j24 != 0) {
                                        i19 = 0;
                                    } else if (j10 % 25 != 0) {
                                        i19 = 1;
                                    } else if (j10 % 125 != 0) {
                                        i19 = 2;
                                    } else if (j10 % 625 != 0) {
                                        i19 = 3;
                                    } else {
                                        long j25 = j10 / 625;
                                        i19 = 4;
                                        for (long j26 = 0; j25 > j26 && j25 % 5 == j26; j26 = 0) {
                                            j25 /= 5;
                                            i19++;
                                        }
                                    }
                                    i9 = i19 >= iMax ? 1 : 0;
                                    i16 = 0;
                                } else {
                                    if (z5) {
                                        if (j12 % 5 != 0) {
                                            i18 = 0;
                                        } else if (j12 % 25 != 0) {
                                            i18 = 1;
                                        } else if (j12 % 125 != 0) {
                                            i18 = 2;
                                        } else if (j12 % 625 != 0) {
                                            i18 = 3;
                                        } else {
                                            long j27 = j12 / 625;
                                            i18 = 4;
                                            for (long j28 = 0; j27 > j28 && j27 % 5 == j28; j28 = 0) {
                                                j27 /= 5;
                                                i18++;
                                            }
                                        }
                                        i16 = i18 >= iMax ? 1 : 0;
                                        i9 = 0;
                                    } else {
                                        if (j11 % 5 != 0) {
                                            i17 = 0;
                                        } else if (j11 % 25 != 0) {
                                            i17 = 1;
                                        } else if (j11 % 125 != 0) {
                                            i17 = 2;
                                        } else if (j11 % 625 != 0) {
                                            i17 = 3;
                                        } else {
                                            long j29 = j11 / 625;
                                            i17 = 4;
                                            for (long j30 = 0; j29 > j30 && j29 % 5 == j30; j30 = 0) {
                                                j29 /= 5;
                                                i17++;
                                            }
                                        }
                                        if (i17 >= iMax) {
                                            j7--;
                                        }
                                    }
                                    i9 = 0;
                                }
                            } else {
                                i9 = 0;
                            }
                            i10 = i16;
                            j5 = j16;
                            i8 = iMax;
                            i7 = 0;
                        } else {
                            throw new java.lang.IllegalArgumentException("" + i45);
                        }
                    } else {
                        z4 = z6;
                        z5 = z7;
                        int i46 = -i43;
                        int iMax2 = java.lang.Math.max(0, ((int) ((((long) i46) * 6989700) / 10000000)) - 1);
                        int i47 = i46 - iMax2;
                        int i48 = ((iMax2 - ((i47 == 0 ? 1 : (int) ((((((long) i47) * 23219280) + 10000000) - 1) / 10000000)) - 121)) - 93) - 21;
                        if (i48 >= 0) {
                            int[] iArr2 = POW5_SPLIT[i47];
                            long j31 = j10 >>> 31;
                            long j32 = j10 & 2147483647L;
                            long j33 = ((long) iArr2[0]) * j31;
                            int i49 = i42;
                            long j34 = ((((((((((((j32 * ((long) iArr2[3])) >>> 31) + (((long) iArr2[2]) * j32)) + (j31 * ((long) iArr2[3]))) >>> 31) + (((long) iArr2[1]) * j32)) + (((long) iArr2[2]) * j31)) >>> 31) + (((long) iArr2[0]) * j32)) + (((long) iArr2[1]) * j31)) >>> 21) + (j33 << 10)) >>> i48;
                            long j35 = j11 >>> 31;
                            long j36 = j11 & 2147483647L;
                            long j37 = ((long) iArr2[0]) * j35;
                            j5 = j34;
                            long j38 = ((((((((((((j36 * ((long) iArr2[3])) >>> 31) + (((long) iArr2[2]) * j36)) + (j35 * ((long) iArr2[3]))) >>> 31) + (((long) iArr2[1]) * j36)) + (((long) iArr2[2]) * j35)) >>> 31) + (((long) iArr2[0]) * j36)) + (((long) iArr2[1]) * j35)) >>> 21) + (j37 << 10)) >>> i48;
                            long j39 = j12 >>> 31;
                            long j40 = j12 & 2147483647L;
                            i7 = 0;
                            long j41 = ((long) iArr2[0]) * j39;
                            j6 = ((((((((((((j40 * ((long) iArr2[3])) >>> 31) + (((long) iArr2[2]) * j40)) + (j39 * ((long) iArr2[3]))) >>> 31) + (((long) iArr2[1]) * j40)) + (((long) iArr2[2]) * j39)) >>> 31) + (((long) iArr2[0]) * j40)) + (((long) iArr2[1]) * j39)) >>> 21) + (j41 << 10)) >>> i48;
                            i8 = iMax2 + i43;
                            i9 = 1;
                            if (iMax2 > 1) {
                                if (iMax2 < 63) {
                                    i9 = (j10 & ((1 << (iMax2 - 1)) - 1)) == 0 ? 1 : 0;
                                    i10 = 0;
                                } else {
                                    i9 = 0;
                                    i10 = 0;
                                }
                                j7 = j38;
                            } else if (z5) {
                                j7 = j38;
                                i10 = i49 == 1 ? 1 : 0;
                            } else {
                                j7 = j38 - 1;
                                i10 = 0;
                            }
                        } else {
                            throw new java.lang.IllegalArgumentException("" + i48);
                        }
                    }
                    if (j7 >= 1000000000000000000L) {
                        i44 = 19;
                    } else if (j7 >= 100000000000000000L) {
                        i44 = 18;
                    } else if (j7 >= 10000000000000000L) {
                        i44 = 17;
                    } else if (j7 >= 1000000000000000L) {
                        i44 = 16;
                    } else if (j7 >= 100000000000000L) {
                        i44 = 15;
                    } else if (j7 >= 10000000000000L) {
                        i44 = 14;
                    } else if (j7 >= 1000000000000L) {
                        i44 = 13;
                    } else if (j7 >= 100000000000L) {
                        i44 = 12;
                    } else if (j7 >= 10000000000L) {
                        i44 = 11;
                    } else if (j7 >= 1000000000) {
                        i44 = 10;
                    } else if (j7 >= 100000000) {
                        i44 = 9;
                    } else if (j7 >= 10000000) {
                        i44 = 8;
                    } else if (j7 >= 1000000) {
                        i44 = 7;
                    } else if (j7 >= 100000) {
                        i44 = 6;
                    } else if (j7 >= 10000) {
                        i44 = 5;
                    } else if (j7 >= 1000) {
                        i44 = 4;
                    } else if (j7 < 100) {
                        i44 = j7 >= 10 ? 2 : 1;
                    }
                    int i50 = (i8 + i44) - 1;
                    int i51 = (i50 < -3 || i50 >= 7) ? 1 : i7;
                    if (i10 == 0 && i9 == 0) {
                        int i52 = i7;
                        i11 = i52;
                        while (true) {
                            long j42 = j7 / 10;
                            long j43 = j6 / 10;
                            if (j42 <= j43 || (j7 < 100 && i51 != 0)) {
                                break;
                            }
                            i52 = (int) (j5 % 10);
                            j5 /= 10;
                            i11++;
                            j7 = j42;
                            j6 = j43;
                        }
                        j8 = j5 + ((long) ((j5 == j6 || i52 >= 5) ? 1 : i7));
                    } else {
                        int i53 = i7;
                        int i54 = i53;
                        while (true) {
                            long j44 = j7 / 10;
                            long j45 = j6 / 10;
                            if (j44 <= j45 || (j7 < 100 && i51 != 0)) {
                                break;
                            }
                            i10 &= j6 % 10 == 0 ? 1 : i7;
                            i9 &= i53 == 0 ? 1 : i7;
                            i53 = (int) (j5 % 10);
                            j5 /= 10;
                            i54++;
                            j7 = j44;
                            j6 = j45;
                        }
                        if (i10 != 0 && z5) {
                            while (j6 % 10 == 0 && (j7 >= 100 || i51 == 0)) {
                                i9 &= i53 == 0 ? 1 : i7;
                                i53 = (int) (j5 % 10);
                                j7 /= 10;
                                j5 /= 10;
                                j6 /= 10;
                                i54++;
                            }
                        }
                        if (i9 != 0 && i53 == 5 && j5 % 2 == 0) {
                            i53 = 4;
                        }
                        j8 = j5 + ((long) (((j5 != j6 || (i10 != 0 && z5)) && i53 < 5) ? i7 : 1));
                        i11 = i54;
                    }
                    int i55 = i44 - i11;
                    if (z4) {
                        i12 = i5 + 1;
                        cArr[i5] = '-';
                    } else {
                        i12 = i5;
                    }
                    if (i51 == 0) {
                        char c5 = '0';
                        if (i50 < 0) {
                            int i56 = i12 + 1;
                            cArr[i12] = '0';
                            int i57 = i56 + 1;
                            cArr[i56] = '.';
                            int i58 = -1;
                            while (i58 > i50) {
                                cArr[i57] = c5;
                                i58--;
                                i57++;
                                c5 = '0';
                            }
                            i13 = i57;
                            while (i7 < i55) {
                                cArr[((i57 + i55) - i7) - 1] = (char) ((j8 % 10) + 48);
                                j8 /= 10;
                                i13++;
                                i7++;
                            }
                        } else {
                            int i59 = i50 + 1;
                            if (i59 >= i55) {
                                while (i7 < i55) {
                                    cArr[((i12 + i55) - i7) - 1] = (char) ((j8 % 10) + 48);
                                    j8 /= 10;
                                    i7++;
                                }
                                int i60 = i12 + i55;
                                while (i55 < i59) {
                                    cArr[i60] = '0';
                                    i55++;
                                    i60++;
                                }
                                int i61 = i60 + 1;
                                cArr[i60] = '.';
                                cArr[i61] = '0';
                                i13 = i61 + 1;
                            } else {
                                int i62 = i12 + 1;
                                while (i7 < i55) {
                                    if ((i55 - i7) - 1 == i50) {
                                        cArr[((i62 + i55) - i7) - 1] = '.';
                                        i62--;
                                    }
                                    cArr[((i62 + i55) - i7) - 1] = (char) ((j8 % 10) + 48);
                                    j8 /= 10;
                                    i7++;
                                }
                                i13 = i12 + i55 + 1;
                            }
                        }
                        return i13 - i5;
                    }
                    while (i7 < i55 - 1) {
                        int i63 = (int) (j8 % 10);
                        j8 /= 10;
                        cArr[(i12 + i55) - i7] = (char) (i63 + 48);
                        i7++;
                    }
                    cArr[i12] = (char) ((j8 % 10) + 48);
                    cArr[i12 + 1] = '.';
                    int i64 = i12 + i55 + 1;
                    if (i55 == 1) {
                        cArr[i64] = '0';
                        i64++;
                    }
                    int i65 = i64 + 1;
                    cArr[i64] = 'E';
                    if (i50 < 0) {
                        cArr[i65] = '-';
                        i50 = -i50;
                        i65++;
                    }
                    if (i50 >= 100) {
                        int i66 = i65 + 1;
                        i14 = 48;
                        cArr[i65] = (char) ((i50 / 100) + 48);
                        i50 %= 100;
                        i65 = i66 + 1;
                        cArr[i66] = (char) ((i50 / 10) + 48);
                    } else {
                        i14 = 48;
                        if (i50 >= 10) {
                            cArr[i65] = (char) ((i50 / 10) + 48);
                            i65++;
                        }
                    }
                    i15 = i65 + 1;
                    cArr[i65] = (char) ((i50 % 10) + i14);
                }
            }
            return i15 - i5;
        }
        int i67 = i5 + 1;
        cArr[i5] = 'N';
        int i68 = i67 + 1;
        cArr[i67] = 'a';
        i20 = i68 + 1;
        cArr[i68] = 'N';
        return i20 - i5;
    }
}
