package com.cndatacom.zexcheck.v3.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PacketInfo {
    private java.lang.String ip;
    private int port;
    private java.lang.String ticket = "";
    private int udpPort = 0;
    private int tcpPort = 0;

    public java.lang.String getIp() {
        return this.ip;
    }

    public int getPort() {
        return this.port;
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

    public void setIp(java.lang.String str) {
        this.ip = str;
    }

    public void setPort(int i5) {
        this.port = i5;
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
