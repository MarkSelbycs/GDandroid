package com.cndatacom.topology.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IpUtil {
    public static java.lang.Long getBeginIpLong(java.lang.String str, java.lang.String str2) {
        return java.lang.Long.valueOf(getIpFromString(getMaskByMaskBit(str2)).longValue() & getIpFromString(str).longValue());
    }

    public static java.lang.String getBeginIpStr(java.lang.String str, java.lang.String str2) {
        return getIpFromLong(getBeginIpLong(str, str2));
    }

    public static java.lang.Long getEndIpLong(java.lang.String str, java.lang.String str2) {
        return java.lang.Long.valueOf(getBeginIpLong(str, str2).longValue() + (~getIpFromString(getMaskByMaskBit(str2)).longValue()));
    }

    public static java.lang.String getEndIpStr(java.lang.String str, java.lang.String str2) {
        return getIpFromLong(getEndIpLong(str, str2));
    }

    public static int getIpCount(java.lang.String str) {
        return java.math.BigDecimal.valueOf(java.lang.Math.pow(2.0d, 32 - java.lang.Integer.parseInt(str))).setScale(0, 1).intValue();
    }

    public static java.lang.String getIpFromLong(java.lang.Long l5) {
        return java.lang.String.valueOf((l5.longValue() & 4278190080L) / 16777216) + "." + java.lang.String.valueOf((l5.longValue() & 16711680) / okio.SegmentPool.MAX_SIZE) + "." + java.lang.String.valueOf((l5.longValue() & 65280) / 256) + "." + java.lang.String.valueOf(l5.longValue() & 255);
    }

    public static java.lang.Long getIpFromString(java.lang.String str) {
        java.lang.Long l5 = 0L;
        java.lang.Long lValueOf = java.lang.Long.valueOf((l5.longValue() * 256) + java.lang.Long.parseLong(str.substring(0, str.indexOf(46))));
        java.lang.String strSubstring = str.substring(str.indexOf(46) + 1, str.length());
        java.lang.Long lValueOf2 = java.lang.Long.valueOf((lValueOf.longValue() * 256) + java.lang.Long.parseLong(strSubstring.substring(0, strSubstring.indexOf(46))));
        java.lang.String strSubstring2 = strSubstring.substring(strSubstring.indexOf(".") + 1, strSubstring.length());
        return java.lang.Long.valueOf((java.lang.Long.valueOf((lValueOf2.longValue() * 256) + java.lang.Long.parseLong(strSubstring2.substring(0, strSubstring2.indexOf(46)))).longValue() * 256) + java.lang.Long.parseLong(strSubstring2.substring(strSubstring2.indexOf(46) + 1, strSubstring2.length())));
    }

    public static java.lang.String getMaskByMaskBit(java.lang.String str) {
        return "".equals(str) ? "error, maskBit is null !" : getMaskMap(str);
    }

    public static java.lang.String getMaskMap(java.lang.String str) {
        if ("1".equals(str)) {
            return "128.0.0.0";
        }
        if ("2".equals(str)) {
            return "192.0.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.UNSUPPORT_CLIENT.equals(str)) {
            return "224.0.0.0";
        }
        if ("4".equals(str)) {
            return "240.0.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.TERM_REASON_START.equals(str)) {
            return "248.0.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.TERM_REASON_SHARE.equals(str)) {
            return "252.0.0.0";
        }
        if ("7".equals(str)) {
            return "254.0.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.TERM_REASON_MANAGE.equals(str)) {
            return "255.0.0.0";
        }
        if ("9".equals(str)) {
            return "255.128.0.0";
        }
        if ("10".equals(str)) {
            return "255.192.0.0";
        }
        if ("11".equals(str)) {
            return "255.224.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.INVALID_CLIENTID.equals(str)) {
            return "255.240.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.INVALID_ALGOID.equals(str)) {
            return "255.248.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.INVALID_TICKET.equals(str)) {
            return "255.252.0.0";
        }
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.INVALID_CHECKSUM.equals(str)) {
            return "255.254.0.0";
        }
        if ("16".equals(str)) {
            return "255.255.0.0";
        }
        if ("17".equals(str)) {
            return "255.255.128.0";
        }
        if ("18".equals(str)) {
            return "255.255.192.0";
        }
        if ("19".equals(str)) {
            return "255.255.224.0";
        }
        if ("20".equals(str)) {
            return "255.255.240.0";
        }
        if ("21".equals(str)) {
            return "255.255.248.0";
        }
        if ("22".equals(str)) {
            return "255.255.252.0";
        }
        if ("23".equals(str)) {
            return "255.255.254.0";
        }
        if ("24".equals(str)) {
            return "255.255.255.0";
        }
        if ("25".equals(str)) {
            return "255.255.255.128";
        }
        if ("26".equals(str)) {
            return "255.255.255.192";
        }
        if ("27".equals(str)) {
            return "255.255.255.224";
        }
        if ("28".equals(str)) {
            return "255.255.255.240";
        }
        if ("29".equals(str)) {
            return "255.255.255.248";
        }
        if ("30".equals(str)) {
            return "255.255.255.252";
        }
        if ("31".equals(str)) {
            return "255.255.255.254";
        }
        return "32".equals(str) ? "255.255.255.255" : "-1";
    }

    public static int getNetMask(java.lang.String str) {
        int iIndexOf;
        int i5 = 0;
        for (java.lang.String str2 : str.split("\\.")) {
            java.lang.String string = toBin(java.lang.Integer.parseInt(str2)).reverse().toString();
            int i6 = 0;
            int i7 = 0;
            while (i6 < string.length() && (iIndexOf = string.indexOf(49, i6)) != -1) {
                i7++;
                i6 = iIndexOf + 1;
            }
            i5 += i7;
        }
        return i5;
    }

    public static int getPoolMax(int i5) {
        if (i5 <= 0 || i5 >= 32) {
            return 0;
        }
        return ((int) java.lang.Math.pow(2.0d, 32 - i5)) - 2;
    }

    public static java.lang.String intToIP(int i5) {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer("");
        stringBuffer.append(java.lang.String.valueOf(i5 >>> 24));
        stringBuffer.append(".");
        stringBuffer.append(java.lang.String.valueOf((16777215 & i5) >>> 16));
        stringBuffer.append(".");
        stringBuffer.append(java.lang.String.valueOf((65535 & i5) >>> 8));
        stringBuffer.append(".");
        stringBuffer.append(java.lang.String.valueOf(i5 & 255));
        return stringBuffer.toString();
    }

    public static double ipToDouble(java.lang.String str) {
        java.lang.String[] strArrSplit = str.split("\\.");
        double d5 = java.lang.Double.parseDouble(strArrSplit[0]);
        double d6 = java.lang.Double.parseDouble(strArrSplit[1]);
        double d7 = java.lang.Double.parseDouble(strArrSplit[2]);
        return (d5 * java.lang.Math.pow(256.0d, 3.0d)) + (d6 * java.lang.Math.pow(256.0d, 2.0d)) + (d7 * 256.0d) + java.lang.Double.parseDouble(strArrSplit[3]);
    }

    public static int ipToInt(java.lang.String str) {
        java.lang.String[] strArrSplit = str.split("\\.");
        return (java.lang.Integer.parseInt(strArrSplit[0]) << 24) + (java.lang.Integer.parseInt(strArrSplit[1]) << 16) + (java.lang.Integer.parseInt(strArrSplit[2]) << 8) + java.lang.Integer.parseInt(strArrSplit[3]);
    }

    public static boolean isIP(java.lang.String str) {
        return java.util.regex.Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}").matcher(str).matches();
    }

    public static boolean isInRange(java.lang.String str, java.lang.String str2) {
        java.lang.String[] strArrSplit = str.split("\\.");
        int i5 = java.lang.Integer.parseInt(strArrSplit[3]) | (java.lang.Integer.parseInt(strArrSplit[0]) << 24) | (java.lang.Integer.parseInt(strArrSplit[1]) << 16) | (java.lang.Integer.parseInt(strArrSplit[2]) << 8);
        int i6 = (-1) << (32 - java.lang.Integer.parseInt(str2.replaceAll(".*/", "")));
        java.lang.String[] strArrSplit2 = str2.replaceAll("/.*", "").split("\\.");
        return (i5 & i6) == ((java.lang.Integer.parseInt(strArrSplit2[3]) | (((java.lang.Integer.parseInt(strArrSplit2[0]) << 24) | (java.lang.Integer.parseInt(strArrSplit2[1]) << 16)) | (java.lang.Integer.parseInt(strArrSplit2[2]) << 8))) & i6);
    }

    public static java.util.List<java.lang.String> parseAllIpMaskRange(java.lang.String str, java.lang.String str2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (!"32".equals(str2)) {
            return parseIpRange(getBeginIpStr(str, str2), getEndIpStr(str, str2));
        }
        arrayList.add(str);
        return arrayList;
    }

    public static java.util.List<java.lang.String> parseIpMaskRange(java.lang.String str, java.lang.String str2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if ("32".equals(str2)) {
            arrayList.add(str);
            return arrayList;
        }
        java.lang.String beginIpStr = getBeginIpStr(str, str2);
        java.lang.String endIpStr = getEndIpStr(str, str2);
        if (!"31".equals(str2)) {
            java.lang.String str3 = beginIpStr.split("\\.")[0] + "." + beginIpStr.split("\\.")[1] + "." + beginIpStr.split("\\.")[2] + ".";
            java.lang.String str4 = endIpStr.split("\\.")[0] + "." + endIpStr.split("\\.")[1] + "." + endIpStr.split("\\.")[2] + ".";
            java.lang.String str5 = str3 + (java.lang.Integer.parseInt(beginIpStr.split("\\.")[3]) + 1);
            endIpStr = str4 + (java.lang.Integer.parseInt(endIpStr.split("\\.")[3]) - 1);
            beginIpStr = str5;
        }
        return parseIpRange(beginIpStr, endIpStr);
    }

    public static java.util.List<java.lang.String> parseIpRange(java.lang.String str, java.lang.String str2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.String[] strArrSplit = str.split("\\.");
        java.lang.String[] strArrSplit2 = str2.split("\\.");
        int[] iArr = new int[4];
        int[] iArr2 = new int[4];
        for (int i5 = 0; i5 < 4; i5++) {
            iArr[i5] = java.lang.Integer.parseInt(strArrSplit[i5]);
            iArr2[i5] = java.lang.Integer.parseInt(strArrSplit2[i5]);
        }
        int i6 = iArr[0];
        while (i6 <= iArr2[0]) {
            int i7 = i6 == iArr[0] ? iArr[1] : 0;
            while (true) {
                if (i7 <= (i6 == iArr2[0] ? iArr2[1] : 255)) {
                    int i8 = i7 == iArr[1] ? iArr[2] : 0;
                    while (true) {
                        if (i8 <= (i7 == iArr2[1] ? iArr2[2] : 255)) {
                            int i9 = i8 == iArr[2] ? iArr[3] : 0;
                            while (true) {
                                if (i9 <= (i8 == iArr2[2] ? iArr2[3] : 255)) {
                                    arrayList.add(i6 + "." + i7 + "." + i8 + "." + i9);
                                    i9++;
                                }
                            }
                            i8++;
                        }
                    }
                    i7++;
                }
            }
            i6++;
        }
        return arrayList;
    }

    private static java.lang.StringBuilder toBin(int i5) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(i5 % 2);
        for (int i6 = i5 / 2; i6 > 0; i6 /= 2) {
            sb.append(i6 % 2);
        }
        return sb;
    }

    public static int toInt(java.lang.String str, int i5) {
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.NumberFormatException unused) {
            return i5;
        }
    }

    public static long toLong(java.lang.String str, int i5) {
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.NumberFormatException unused) {
            return i5;
        }
    }
}
