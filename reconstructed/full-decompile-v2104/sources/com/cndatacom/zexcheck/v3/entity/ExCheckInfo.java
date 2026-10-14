package com.cndatacom.zexcheck.v3.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ExCheckInfo {
    private com.cndatacom.sdk.portal.entity.NetInfo netInfo;
    private java.lang.String clientId = "";
    private java.lang.String schoolId = "";
    private java.lang.String account = "";
    private java.lang.String ticket = "";
    private java.lang.String interval = "";
    private java.lang.String uploadUrl = "";
    private java.lang.String getUrl = "";
    private java.lang.String port = "";
    private java.lang.String timeout = "";
    private java.lang.String delay = "";
    private boolean ipv6First = false;
    private java.lang.String udpPort = "";
    private java.lang.String tcpPort = "";

    private int toInt(java.lang.String str, int i5) {
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return i5;
        }
    }

    public java.lang.String getAccount() {
        return this.account;
    }

    public java.lang.String getClientId() {
        return this.clientId;
    }

    public int getDelay() {
        return toInt(this.delay, 10) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO;
    }

    public java.lang.String getGetUrl() {
        return this.getUrl;
    }

    public int getInterval() {
        return toInt(this.interval, com.cndatacom.sdk.portal.entity.ConfigInfo.KEEP_INTERVAL_DEF) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO;
    }

    public com.cndatacom.sdk.portal.entity.NetInfo getNetInfo() {
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = this.netInfo;
        return netInfo != null ? netInfo : com.cndatacom.sdk.portal.entity.NetInfo.obtain();
    }

    public int getPort() {
        return toInt(this.port, 13516);
    }

    public java.lang.String getSchoolId() {
        return this.schoolId;
    }

    public int getTcpPort() {
        return toInt(this.tcpPort, 20000);
    }

    public java.lang.String getTicket() {
        return this.ticket;
    }

    public int getTimeout() {
        return toInt(this.timeout, 60) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO;
    }

    public int getUdpPort() {
        return toInt(this.udpPort, 10000);
    }

    public java.lang.String getUploadUrl() {
        return this.uploadUrl;
    }

    public boolean isIpv4() {
        java.lang.String ipv4 = this.netInfo.getIpv4();
        java.lang.String ipv6 = this.netInfo.getIpv6();
        if (this.ipv6First || ipv4.equals("")) {
            return (!this.ipv6First || ipv6.equals("")) && ipv6.equals("");
        }
        return true;
    }

    public boolean isIpv6First() {
        return this.ipv6First;
    }

    public void setAccount(java.lang.String str) {
        this.account = str;
    }

    public void setClientId(java.lang.String str) {
        this.clientId = str;
    }

    public void setDelay(java.lang.String str) {
        this.delay = str;
    }

    public void setGetUrl(java.lang.String str) {
        this.getUrl = str;
    }

    public void setInterval(java.lang.String str) {
        this.interval = str;
    }

    public void setIpv6First(boolean z4) {
        this.ipv6First = z4;
    }

    public void setNetInfo(com.cndatacom.sdk.portal.entity.NetInfo netInfo) {
        this.netInfo = netInfo;
    }

    public void setPort(java.lang.String str) {
        this.port = str;
    }

    public void setSchoolId(java.lang.String str) {
        this.schoolId = str;
    }

    public void setTcpPort(java.lang.String str) {
        this.tcpPort = str;
    }

    public void setTicket(java.lang.String str) {
        this.ticket = str;
    }

    public void setTimeout(java.lang.String str) {
        this.timeout = str;
    }

    public void setUdpPort(java.lang.String str) {
        this.udpPort = str;
    }

    public void setUploadUrl(java.lang.String str) {
        this.uploadUrl = str;
    }
}
