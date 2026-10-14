package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class RyuFloat {
    private static final int[][] POW5_SPLIT = {new int[]{com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_WIDE, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{1000000000, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY}, new int[]{762939453, com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    private static final int[][] POW5_INV_SPLIT = {new int[]{com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static java.lang.String toString(float f5) {
        char[] cArr = new char[15];
        return new java.lang.String(cArr, 0, toString(f5, cArr, 0));
    }

    public static int toString(float f5, char[] cArr, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
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
        if (java.lang.Float.isNaN(f5)) {
            int i21 = i5 + 1;
            cArr[i5] = 'N';
            int i22 = i21 + 1;
            cArr[i21] = 'a';
            i20 = i22 + 1;
            cArr[i22] = 'N';
        } else {
            if (f5 == Float.POSITIVE_INFINITY) {
                int i23 = i5 + 1;
                cArr[i5] = 'I';
                int i24 = i23 + 1;
                cArr[i23] = 'n';
                int i25 = i24 + 1;
                cArr[i24] = 'f';
                int i26 = i25 + 1;
                cArr[i25] = 'i';
                int i27 = i26 + 1;
                cArr[i26] = 'n';
                int i28 = i27 + 1;
                cArr[i27] = 'i';
                int i29 = i28 + 1;
                cArr[i28] = 't';
                cArr[i29] = 'y';
                return (i29 + 1) - i5;
            }
            if (f5 == Float.NEGATIVE_INFINITY) {
                int i30 = i5 + 1;
                cArr[i5] = '-';
                int i31 = i30 + 1;
                cArr[i30] = 'I';
                int i32 = i31 + 1;
                cArr[i31] = 'n';
                int i33 = i32 + 1;
                cArr[i32] = 'f';
                int i34 = i33 + 1;
                cArr[i33] = 'i';
                int i35 = i34 + 1;
                cArr[i34] = 'n';
                int i36 = i35 + 1;
                cArr[i35] = 'i';
                int i37 = i36 + 1;
                cArr[i36] = 't';
                i20 = i37 + 1;
                cArr[i37] = 'y';
            } else {
                int iFloatToIntBits = java.lang.Float.floatToIntBits(f5);
                if (iFloatToIntBits != 0) {
                    if (iFloatToIntBits == Integer.MIN_VALUE) {
                        int i38 = i5 + 1;
                        cArr[i5] = '-';
                        int i39 = i38 + 1;
                        cArr[i38] = '0';
                        int i40 = i39 + 1;
                        cArr[i39] = '.';
                        cArr[i40] = '0';
                        return (i40 + 1) - i5;
                    }
                    int i41 = (iFloatToIntBits >> 23) & 255;
                    int i42 = 8388607 & iFloatToIntBits;
                    if (i41 == 0) {
                        i6 = -149;
                    } else {
                        i6 = (i41 + com.cndatacom.sdk.portal.entity.NetInfo.INVALID_RSSI) - 23;
                        i42 |= 8388608;
                    }
                    boolean z4 = iFloatToIntBits < 0;
                    boolean z5 = (i42 & 1) == 0;
                    int i43 = i42 * 4;
                    int i44 = i43 + 2;
                    int i45 = i43 - ((((long) i42) != 8388608 || i41 <= 1) ? 2 : 1);
                    int i46 = i6 - 2;
                    if (i46 >= 0) {
                        i16 = (int) ((((long) i46) * 3010299) / 10000000);
                        int i47 = i16 == 0 ? 1 : (int) ((((((long) i16) * 23219280) + 10000000) - 1) / 10000000);
                        int i48 = (-i46) + i16;
                        int[][] iArr = POW5_INV_SPLIT;
                        long j5 = iArr[i16][0];
                        long j6 = iArr[i16][1];
                        long j7 = i43;
                        int i49 = (((i47 + 59) - 1) + i48) - 31;
                        int i50 = (int) (((j7 * j5) + ((j7 * j6) >> 31)) >> i49);
                        long j8 = i44;
                        i11 = (int) (((j8 * j5) + ((j8 * j6) >> 31)) >> i49);
                        int i51 = i45;
                        long j9 = i51;
                        int i52 = (int) (((j5 * j9) + ((j9 * j6) >> 31)) >> i49);
                        if (i16 == 0 || (i11 - 1) / 10 > i52 / 10) {
                            i15 = 0;
                        } else {
                            int i53 = i16 - 1;
                            i15 = (int) ((((((long) iArr[i53][0]) * j7) + ((((long) iArr[i53][1]) * j7) >> 31)) >> (((i48 - 1) + (((i53 == 0 ? 1 : (int) ((((((long) i53) * 23219280) + 10000000) - 1) / 10000000)) + 59) - 1)) - 31)) % 10);
                        }
                        int i54 = 0;
                        while (i44 > 0 && i44 % 5 == 0) {
                            i44 /= 5;
                            i54++;
                        }
                        int i55 = 0;
                        while (i43 > 0 && i43 % 5 == 0) {
                            i43 /= 5;
                            i55++;
                        }
                        int i56 = 0;
                        while (i51 > 0 && i51 % 5 == 0) {
                            i51 /= 5;
                            i56++;
                        }
                        int i57 = i54 >= i16 ? 1 : 0;
                        i10 = i55 >= i16 ? 1 : 0;
                        i12 = i56 >= i16 ? 1 : 0;
                        i7 = 0;
                        i9 = i57;
                        i13 = i52;
                        i14 = i50;
                    } else {
                        int i58 = -i46;
                        int i59 = (int) ((((long) i58) * 6989700) / 10000000);
                        int i60 = i58 - i59;
                        int i61 = i60 == 0 ? 1 : (int) ((((((long) i60) * 23219280) + 10000000) - 1) / 10000000);
                        int[][] iArr2 = POW5_SPLIT;
                        long j10 = iArr2[i60][0];
                        long j11 = iArr2[i60][1];
                        int i62 = (i59 - (i61 - 61)) - 31;
                        long j12 = i43;
                        int i63 = (int) (((j12 * j10) + ((j12 * j11) >> 31)) >> i62);
                        long j13 = i44;
                        int i64 = (int) (((j13 * j10) + ((j13 * j11) >> 31)) >> i62);
                        long j14 = i45;
                        int i65 = (int) (((j10 * j14) + ((j14 * j11) >> 31)) >> i62);
                        if (i59 == 0 || (i64 - 1) / 10 > i65 / 10) {
                            i7 = 0;
                            i8 = 0;
                        } else {
                            int i66 = i60 + 1;
                            i7 = 0;
                            i8 = (int) ((((((long) iArr2[i66][0]) * j12) + ((j12 * ((long) iArr2[i66][1])) >> 31)) >> (((i59 - 1) - ((i66 == 0 ? 1 : (int) ((((((long) i66) * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31)) % 10);
                        }
                        int i67 = i59 + i46;
                        i9 = 1 >= i59 ? 1 : i7;
                        i10 = (i59 >= 23 || (i43 & ((1 << (i59 + (-1))) - 1)) != 0) ? i7 : 1;
                        i11 = i64;
                        i12 = (i45 % 2 == 1 ? i7 : 1) >= i59 ? 1 : i7;
                        i13 = i65;
                        i14 = i63;
                        i15 = i8;
                        i16 = i67;
                    }
                    int i68 = 1000000000;
                    int i69 = 10;
                    while (i69 > 0 && i11 < i68) {
                        i68 /= 10;
                        i69--;
                    }
                    int i70 = (i16 + i69) - 1;
                    int i71 = (i70 < -3 || i70 >= 7) ? 1 : i7;
                    if (i9 != 0 && !z5) {
                        i11--;
                    }
                    int i72 = i7;
                    while (true) {
                        int i73 = i11 / 10;
                        int i74 = i13 / 10;
                        if (i73 <= i74 || (i11 < 100 && i71 != 0)) {
                            break;
                        }
                        i12 &= i13 % 10 == 0 ? 1 : i7;
                        i15 = i14 % 10;
                        i14 /= 10;
                        i72++;
                        i11 = i73;
                        i13 = i74;
                    }
                    if (i12 != 0 && z5 != 0) {
                        while (i13 % 10 == 0 && (i11 >= 100 || i71 == 0)) {
                            i11 /= 10;
                            i15 = i14 % 10;
                            i14 /= 10;
                            i13 /= 10;
                            i72++;
                        }
                    }
                    if (i10 != 0 && i15 == 5 && i14 % 2 == 0) {
                        i15 = 4;
                    }
                    int i75 = i14 + ((!(i14 == i13 && (i12 == 0 || z5 == 0)) && i15 < 5) ? i7 : 1);
                    int i76 = i69 - i72;
                    if (z4) {
                        i17 = i5 + 1;
                        cArr[i5] = '-';
                    } else {
                        i17 = i5;
                    }
                    if (i71 != 0) {
                        for (int i77 = i7; i77 < i76 - 1; i77++) {
                            int i78 = i75 % 10;
                            i75 /= 10;
                            cArr[(i17 + i76) - i77] = (char) (i78 + 48);
                        }
                        cArr[i17] = (char) ((i75 % 10) + 48);
                        cArr[i17 + 1] = '.';
                        int i79 = i17 + i76 + 1;
                        if (i76 == 1) {
                            cArr[i79] = '0';
                            i79++;
                        }
                        int i80 = i79 + 1;
                        cArr[i79] = 'E';
                        if (i70 < 0) {
                            cArr[i80] = '-';
                            i70 = -i70;
                            i80++;
                        }
                        if (i70 >= 10) {
                            i19 = 48;
                            cArr[i80] = (char) ((i70 / 10) + 48);
                            i80++;
                        } else {
                            i19 = 48;
                        }
                        i18 = i80 + 1;
                        cArr[i80] = (char) ((i70 % 10) + i19);
                    } else {
                        int i81 = 48;
                        if (i70 < 0) {
                            int i82 = i17 + 1;
                            cArr[i17] = '0';
                            int i83 = i82 + 1;
                            cArr[i82] = '.';
                            int i84 = -1;
                            while (i84 > i70) {
                                cArr[i83] = '0';
                                i84--;
                                i83++;
                            }
                            int i85 = i83;
                            int i86 = i7;
                            while (i86 < i76) {
                                cArr[((i83 + i76) - i86) - 1] = (char) ((i75 % 10) + i81);
                                i75 /= 10;
                                i85++;
                                i86++;
                                i81 = 48;
                            }
                            i18 = i85;
                        } else {
                            int i87 = i70 + 1;
                            if (i87 >= i76) {
                                for (int i88 = i7; i88 < i76; i88++) {
                                    cArr[((i17 + i76) - i88) - 1] = (char) ((i75 % 10) + 48);
                                    i75 /= 10;
                                }
                                int i89 = i17 + i76;
                                while (i76 < i87) {
                                    cArr[i89] = '0';
                                    i76++;
                                    i89++;
                                }
                                int i90 = i89 + 1;
                                cArr[i89] = '.';
                                i18 = i90 + 1;
                                cArr[i90] = '0';
                            } else {
                                int i91 = i17 + 1;
                                for (int i92 = i7; i92 < i76; i92++) {
                                    if ((i76 - i92) - 1 == i70) {
                                        cArr[((i91 + i76) - i92) - 1] = '.';
                                        i91--;
                                    }
                                    cArr[((i91 + i76) - i92) - 1] = (char) ((i75 % 10) + 48);
                                    i75 /= 10;
                                }
                                i18 = i17 + i76 + 1;
                            }
                        }
                    }
                    return i18 - i5;
                }
                int i93 = i5 + 1;
                cArr[i5] = '0';
                int i94 = i93 + 1;
                cArr[i93] = '.';
                i20 = i94 + 1;
                cArr[i94] = '0';
            }
        }
        return i20 - i5;
    }
}
