package com.cndatacom.sdk.portal.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NetInfo {
    public static final int INVALID_RSSI = -127;
    public static final int LOW_RSSI = -76;
    public static final int MAX_RSSI = 200;
    public static final int MIN_RSSI = -126;
    private java.lang.String dns1;
    private java.lang.String dns2;
    private java.lang.String gateway;
    private java.lang.String ipv4;
    private java.lang.String ipv4MaskPrefixLength;
    private java.lang.String ipv6;
    private java.lang.String ipv6MaskPrefixLength;
    private java.lang.String mac;
    private org.json.JSONObject netObject;
    private java.lang.String networkInterfaceName;
    private int rssi;
    private java.lang.String ssid;
    private java.lang.String unknown;
    private java.lang.String wifiMac;

    private NetInfo() {
        this.rssi = INVALID_RSSI;
        this.networkInterfaceName = "";
        this.gateway = "";
        this.ssid = "";
        this.mac = "";
        this.ipv4 = "";
        this.ipv6 = "";
        this.wifiMac = "";
        this.unknown = "<unknown ssid>";
        this.netObject = new org.json.JSONObject();
    }

    private java.lang.String getIpByInt(int i5) {
        try {
            return java.net.InetAddress.getByAddress(new byte[]{(byte) (i5 & 255), (byte) ((i5 >> 8) & 255), (byte) ((i5 >> 16) & 255), (byte) ((i5 >> 24) & 255)}).getHostAddress();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    private java.lang.String getMaskMap(java.lang.String str) {
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

    public static com.cndatacom.sdk.portal.entity.NetInfo obtain() {
        return new com.cndatacom.sdk.portal.entity.NetInfo();
    }

    public static com.cndatacom.sdk.portal.entity.NetInfo parse(java.lang.String str) {
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = new com.cndatacom.sdk.portal.entity.NetInfo();
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(str);
            netInfo.ssid = jSONObject.optString("ssid", "");
            netInfo.rssi = jSONObject.optInt("rssi", INVALID_RSSI);
            netInfo.mac = jSONObject.optString("mac", "");
            netInfo.dns1 = jSONObject.optString("dns1", "");
            netInfo.dns2 = jSONObject.optString("dns2", "");
            netInfo.gateway = jSONObject.optString("gateway", "");
            netInfo.ipv4 = jSONObject.optString("ipv4", "");
            netInfo.ipv6 = jSONObject.optString("ipv6", "");
            netInfo.ipv4MaskPrefixLength = jSONObject.optString("ipv4MaskPrefixLength", "");
            netInfo.ipv6MaskPrefixLength = jSONObject.optString("ipv6MaskPrefixLength", "");
            netInfo.networkInterfaceName = jSONObject.optString("networkInterfaceName", "");
            netInfo.wifiMac = jSONObject.optString("wifiMac", "");
            netInfo.netObject = jSONObject;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return netInfo;
    }

    private int toInt(java.lang.String str, int i5) {
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.Exception unused) {
            return i5;
        }
    }

    public boolean equals(com.cndatacom.sdk.portal.entity.NetInfo netInfo) {
        boolean z4 = (android.text.TextUtils.isEmpty(this.ipv4) || android.text.TextUtils.isEmpty(netInfo.ipv4) || !this.ipv4.equals(netInfo.ipv4)) ? false : true;
        if (android.text.TextUtils.isEmpty(this.ipv6) || android.text.TextUtils.isEmpty(netInfo.ipv6) || !this.ipv6.equals(netInfo.ipv6)) {
            return z4;
        }
        return true;
    }

    public java.lang.String getDns1() {
        return this.dns1;
    }

    public java.lang.String getDns2() {
        return this.dns2;
    }

    public java.lang.String getGateway() {
        return this.gateway;
    }

    public java.lang.String getIpv4() {
        return this.ipv4;
    }

    public java.lang.String getIpv4MaskPrefixLength() {
        return this.ipv4MaskPrefixLength;
    }

    public java.lang.String getIpv6() {
        return this.ipv6;
    }

    public java.lang.String getIpv6MaskPrefixLength() {
        return this.ipv6MaskPrefixLength;
    }

    public java.lang.String getMac() {
        return this.mac;
    }

    public java.lang.String getMask() {
        return getMaskMap(this.ipv4MaskPrefixLength + "");
    }

    public int getMaskPrefixLength() {
        return toInt(this.ipv4MaskPrefixLength, 0);
    }

    public java.lang.String getNetworkInterfaceName() {
        return this.networkInterfaceName;
    }

    public int getRssi() {
        return this.rssi;
    }

    public java.lang.String getSsid() {
        return this.ssid;
    }

    public java.lang.String getWifiMac() {
        return this.wifiMac;
    }

    public boolean isLowRSSI() {
        return this.rssi <= -76;
    }

    public boolean isUnknown() {
        return this.ssid.equals(this.unknown);
    }

    public java.lang.String toString() {
        return this.netObject.toString();
    }

    public NetInfo(android.content.Context context, boolean z4) throws java.lang.Throwable {
        int ipAddress;
        android.net.DhcpInfo dhcpInfo;
        android.net.wifi.WifiInfo connectionInfo;
        this.rssi = INVALID_RSSI;
        this.networkInterfaceName = "";
        this.gateway = "";
        this.ssid = "";
        this.mac = "";
        this.ipv4 = "";
        this.ipv6 = "";
        this.wifiMac = "";
        this.unknown = "<unknown ssid>";
        this.netObject = new org.json.JSONObject();
        android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi");
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            ipAddress = 0;
        } else {
            if (z4) {
                this.ssid = connectionInfo.getSSID();
                while (this.ssid.startsWith("\"")) {
                    this.ssid = this.ssid.substring(1);
                }
                while (this.ssid.endsWith("\"")) {
                    java.lang.String str = this.ssid;
                    this.ssid = str.substring(0, str.length() - 1);
                }
            }
            ipAddress = connectionInfo.getIpAddress();
            this.rssi = connectionInfo.getRssi();
            this.wifiMac = connectionInfo.getBSSID();
        }
        if (android.text.TextUtils.isEmpty(this.ssid)) {
            this.ssid = this.unknown;
        }
        java.lang.String[] networkInfo = com.cndatacom.sdk.portal.util.NetUtil.getNetworkInfo(context);
        this.mac = networkInfo[0];
        this.ipv4 = ipAddress != 0 ? getIpByInt(ipAddress) : networkInfo[1];
        this.ipv6 = networkInfo[2];
        this.ipv4MaskPrefixLength = networkInfo[3];
        this.ipv6MaskPrefixLength = networkInfo[4];
        this.networkInterfaceName = networkInfo[5];
        java.lang.String str2 = networkInfo[6];
        this.gateway = str2;
        if (android.text.TextUtils.isEmpty(str2) && wifiManager != null && (dhcpInfo = wifiManager.getDhcpInfo()) != null) {
            this.gateway = getIpByInt(dhcpInfo.gateway);
        }
        this.dns1 = networkInfo[7];
        this.dns2 = networkInfo[8];
        try {
            this.netObject.put("rssi", this.rssi);
            this.netObject.put("isLowRSSI", isLowRSSI());
            this.netObject.put("ssid", this.ssid);
            this.netObject.put("gateway", this.gateway);
            this.netObject.put("dns1", this.dns1);
            this.netObject.put("dns2", this.dns2);
            this.netObject.put("ipv4", this.ipv4);
            this.netObject.put("ipv6", this.ipv6);
            this.netObject.put("ipv4MaskPrefixLength", this.ipv4MaskPrefixLength);
            this.netObject.put("ipv6MaskPrefixLength", this.ipv6MaskPrefixLength);
            this.netObject.put("networkInterfaceName", this.networkInterfaceName);
            this.netObject.put("mac", this.mac);
            this.netObject.put("wifiMac", this.wifiMac);
        } catch (org.json.JSONException e5) {
            e5.printStackTrace();
        }
    }
}
