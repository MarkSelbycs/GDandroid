package com.cndatacom.topology.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TopologyKeyUtil {
    public static java.lang.String createNeighbourDiscoverKey(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return com.cndatacom.sdk.portal.util.CryptoUtil.getTextMD5((i5 + 1) + str + str2 + str3);
    }

    public static java.lang.String createNeighbourKey(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        return com.cndatacom.sdk.portal.util.CryptoUtil.getTextMD5(str4 + str3 + str + str2);
    }

    public static java.lang.String createNeighbourTargetIp(int i5, java.lang.String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf <= -1) {
            return str;
        }
        return str.substring(0, iLastIndexOf) + "." + i5;
    }

    public static java.lang.String createRouterDiscoverKey(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return com.cndatacom.sdk.portal.util.CryptoUtil.getTextMD5(1 + str + str2 + str3);
    }

    public static java.lang.String createRouterKey(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
        return com.cndatacom.sdk.portal.util.CryptoUtil.getTextMD5(str5 + str4 + str3 + str + str2);
    }
}
