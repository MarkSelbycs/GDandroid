package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NetUtil {
    public static final int NONE = -1;
    public static final int UNKNOWN = -2;
    public static final int WIFI_CLOSED = 1;
    public static final int WIFI_CONNECTED = 3;
    public static final int WIFI_OPENED = 2;

    private static void getActiveNetworkInfo(android.net.ConnectivityManager connectivityManager, java.lang.String[] strArr) throws java.lang.Throwable {
        android.net.NetworkCapabilities networkCapabilities;
        android.net.LinkProperties linkProperties;
        java.net.Inet4Address dhcpServerAddress;
        android.net.Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasTransport(1) || (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) == null) {
            return;
        }
        java.lang.String interfaceName = linkProperties.getInterfaceName();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("getActiveNetworkInfo name->" + interfaceName);
        strArr[5] = interfaceName;
        if (android.os.Build.VERSION.SDK_INT >= 30 && (dhcpServerAddress = linkProperties.getDhcpServerAddress()) != null) {
            strArr[6] = dhcpServerAddress.getHostAddress();
        }
        java.util.List<java.net.InetAddress> dnsServers = linkProperties.getDnsServers();
        if (dnsServers.size() > 0) {
            int i5 = 7;
            int i6 = 0;
            while (i6 < 2 && i6 < dnsServers.size()) {
                java.lang.String hostAddress = dnsServers.get(i6).getHostAddress();
                if (hostAddress.contains("%")) {
                    hostAddress = hostAddress.substring(0, hostAddress.indexOf("%"));
                }
                strArr[i5] = hostAddress;
                i6++;
                i5++;
            }
        }
        java.util.List<android.net.LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
        if (linkAddresses == null) {
            return;
        }
        for (android.net.LinkAddress linkAddress : linkAddresses) {
            java.net.InetAddress address = linkAddress.getAddress();
            if (!address.isLoopbackAddress() && !address.isLinkLocalAddress() && !address.isAnyLocalAddress() && !address.isMulticastAddress()) {
                if (address instanceof java.net.Inet6Address) {
                    strArr[2] = address.getHostAddress();
                    strArr[4] = linkAddress.getPrefixLength() + "";
                } else if (address instanceof java.net.Inet4Address) {
                    strArr[1] = address.getHostAddress();
                    strArr[3] = linkAddress.getPrefixLength() + "";
                }
            }
        }
        java.lang.String macByName = getMacByName(interfaceName);
        if (android.text.TextUtils.isEmpty(macByName) || "02:00:00:00:00:00".equals(macByName)) {
            return;
        }
        strArr[0] = macByName;
    }

    private static java.lang.String getMacByName(java.lang.String str) throws java.lang.Throwable {
        java.lang.String strExec = com.cndatacom.sdk.portal.util.CommandUtil.exec("ip address show " + str);
        if (!android.text.TextUtils.isEmpty(strExec)) {
            for (java.lang.String str2 : strExec.split("\n")) {
                java.lang.String strTrim = str2.trim();
                if (!android.text.TextUtils.isEmpty(strTrim)) {
                    java.lang.String valueByRegex = getValueByRegex(strTrim, "([0-9a-fA-F]{2})(([/\\s:-][0-9a-fA-F]{2}){5})");
                    if (!android.text.TextUtils.isEmpty(valueByRegex)) {
                        return valueByRegex;
                    }
                }
            }
        }
        return "";
    }

    @android.annotation.SuppressLint({"MissingPermission"})
    public static java.lang.String[] getNetworkInfo(android.content.Context context) throws java.lang.Throwable {
        java.lang.String[] strArr = {"", "", "", "", "", "", "", "", ""};
        android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return strArr;
        }
        getActiveNetworkInfo(connectivityManager, strArr);
        if (android.text.TextUtils.isEmpty(strArr[1]) && android.text.TextUtils.isEmpty(strArr[2])) {
            getNetworkInfo(connectivityManager, strArr);
        }
        return strArr;
    }

    public static java.lang.String[] getTetheredIfaces(android.content.Context context) {
        java.lang.String[] strArr;
        try {
            android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity");
            java.lang.reflect.Method method = connectivityManager.getClass().getMethod("getTetheredIfaces", new java.lang.Class[0]);
            if (method == null || (strArr = (java.lang.String[]) method.invoke(connectivityManager, new java.lang.Object[0])) == null || strArr.length <= 0) {
                return null;
            }
            return strArr;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private static java.lang.String getValueByRegex(java.lang.String str, java.lang.String str2) {
        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(" + str2 + ")").matcher(str);
        if (!matcher.find()) {
            return "";
        }
        java.util.regex.Matcher matcher2 = java.util.regex.Pattern.compile(str2).matcher(matcher.group());
        return matcher2.find() ? matcher2.group().trim() : "";
    }

    public static int getWifiState(android.content.Context context) {
        android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi");
        if (wifiManager == null || wifiManager.getWifiState() != 3) {
            return 1;
        }
        return isWifiConnected(context) ? 3 : 2;
    }

    public static boolean isNetworkSharing(android.content.Context context) {
        java.lang.String[] tetheredIfaces = getTetheredIfaces(context);
        return tetheredIfaces != null && tetheredIfaces.length > 0;
    }

    public static boolean isWifiConnected(android.content.Context context) {
        return wifiConnected1(context) || wifiConnected2(context);
    }

    private static boolean wifiConnected1(android.content.Context context) {
        android.net.wifi.WifiInfo connectionInfo;
        android.net.wifi.SupplicantState supplicantState;
        android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi");
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null || (supplicantState = connectionInfo.getSupplicantState()) == null) {
            return false;
        }
        return supplicantState.name().equals(android.net.wifi.SupplicantState.COMPLETED.name());
    }

    private static boolean wifiConnected2(android.content.Context context) {
        android.net.NetworkCapabilities networkCapabilities;
        android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        android.net.Network activeNetwork = connectivityManager.getActiveNetwork();
        boolean z4 = false;
        boolean z5 = (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || (!networkCapabilities.toString().contains("WIFI") && !networkCapabilities.hasTransport(1))) ? false : true;
        if (z5) {
            return z5;
        }
        android.net.NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected() && networkInfo.isAvailable() && networkInfo.getState() == android.net.NetworkInfo.State.CONNECTED) {
            z4 = true;
        }
        return z4;
    }

    private static void getNetworkInfo(android.net.ConnectivityManager connectivityManager, java.lang.String[] strArr) throws java.lang.Throwable {
        android.net.LinkProperties linkProperties;
        java.net.Inet4Address dhcpServerAddress;
        for (android.net.Network network : connectivityManager.getAllNetworks()) {
            android.net.NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasTransport(1) && (linkProperties = connectivityManager.getLinkProperties(network)) != null) {
                java.lang.String interfaceName = linkProperties.getInterfaceName();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("getNetworkInfo name->" + interfaceName);
                strArr[5] = linkProperties.getInterfaceName();
                if (android.os.Build.VERSION.SDK_INT >= 30 && (dhcpServerAddress = linkProperties.getDhcpServerAddress()) != null) {
                    strArr[6] = dhcpServerAddress.getHostAddress();
                }
                java.util.List<java.net.InetAddress> dnsServers = linkProperties.getDnsServers();
                if (dnsServers.size() > 0) {
                    int i5 = 7;
                    int i6 = 0;
                    while (i6 < 2 && i6 < dnsServers.size()) {
                        java.lang.String hostAddress = dnsServers.get(i6).getHostAddress();
                        if (hostAddress.contains("%")) {
                            hostAddress = hostAddress.substring(0, hostAddress.indexOf("%"));
                        }
                        strArr[i5] = hostAddress;
                        i6++;
                        i5++;
                    }
                }
                java.util.List<android.net.LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
                if (linkAddresses != null) {
                    for (android.net.LinkAddress linkAddress : linkAddresses) {
                        java.net.InetAddress address = linkAddress.getAddress();
                        if (!address.isLoopbackAddress() && !address.isLinkLocalAddress() && !address.isAnyLocalAddress() && !address.isMulticastAddress()) {
                            if (address instanceof java.net.Inet6Address) {
                                strArr[2] = address.getHostAddress();
                                strArr[4] = linkAddress.getPrefixLength() + "";
                            } else if (address instanceof java.net.Inet4Address) {
                                strArr[1] = address.getHostAddress();
                                strArr[3] = linkAddress.getPrefixLength() + "";
                            }
                        }
                    }
                    java.lang.String macByName = getMacByName(interfaceName);
                    if (!android.text.TextUtils.isEmpty(macByName) && !"02:00:00:00:00:00".equals(macByName)) {
                        strArr[0] = macByName;
                    }
                }
            }
        }
    }
}
