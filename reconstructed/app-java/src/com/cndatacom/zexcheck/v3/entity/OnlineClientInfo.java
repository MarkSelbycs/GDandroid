package com.cndatacom.zexcheck.v3.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class OnlineClientInfo {
    public java.lang.String ticket = "";
    public java.lang.String ipv4 = "";
    public java.lang.String ipv6 = "";
    public java.lang.String ip = "";
    public int udpPort = 0;
    public int tcpPort = 0;
    public boolean isRecvUdp = false;

    public java.lang.String getIp() {
        return this.ip;
    }

    public java.lang.String getIpv4() {
        return this.ipv4;
    }

    public java.lang.String getIpv6() {
        return this.ipv6;
    }

    public int getTcpPort() {
        return this.tcpPort;
    }

    public java.lang.String getTicket() {
        return this.ticket;
    }

    public int getUdpPort() {
        return this.udpPort;
    }

    public boolean isRecvUdp() {
        return this.isRecvUdp;
    }

    public void setIp(java.lang.String str) {
        this.ip = str;
    }

    public void setIpv4(java.lang.String str) {
        this.ipv4 = str;
    }

    public void setIpv6(java.lang.String str) {
        this.ipv6 = str;
    }

    public void setRecvUdp(boolean z4) {
        this.isRecvUdp = z4;
    }

    public void setTcpPort(int i5) {
        this.tcpPort = i5;
    }

    public void setTicket(java.lang.String str) {
        this.ticket = str;
    }

    public void setUdpPort(int i5) {
        this.udpPort = i5;
    }
}
