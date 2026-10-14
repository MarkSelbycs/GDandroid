package com.cndatacom.zexcheck.v3.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ExCheckResult {
    public static final int DETECT_CRC_ERR = 6;
    public static final int DETECT_FAIL = 0;
    public static final int DETECT_IP_ERR = 7;
    public static final int DETECT_LOCAL_ERR = 2;
    public static final int DETECT_MAC_ERR = 9;
    public static final int DETECT_NETWORK_ERR = 3;
    public static final int DETECT_PORT_ERR = 8;
    public static final int DETECT_RESPONSE_ERR = 5;
    public static final int DETECT_SELF_FAIL = -1;
    public static final int DETECT_SUCCESS = 1;
    public static final int DETECT_TIMEOUT_ERR = 4;
    public java.lang.String ip;
    public boolean isUdp;
    public int port;
    private java.lang.String ticket = "";
    public int errType = 2;

    public java.lang.String createKey(boolean z4, java.lang.String str, int i5) {
        return z4 + str + i5;
    }

    public int getErrType() {
        return this.errType;
    }

    public java.lang.String getErrorText() {
        int i5 = this.errType;
        if (i5 == -1) {
            return "检测自身失败";
        }
        if (i5 == 0) {
            return "检测失败";
        }
        if (i5 == 1) {
            return "成功";
        }
        if (i5 == 2) {
            return "本地错误";
        }
        if (i5 == 4) {
            return "超时";
        }
        if (i5 != 5) {
            return i5 != 6 ? "" : "CRC错误";
        }
        return "报文格式错误";
    }

    public java.lang.String getIp() {
        return this.ip;
    }

    public java.lang.String getKey() {
        return this.isUdp + this.ip + this.port;
    }

    public int getPort() {
        return this.port;
    }

    public java.lang.String getTicket() {
        return this.ticket;
    }

    public boolean isUdp() {
        return this.isUdp;
    }

    public void setErrType(java.lang.Integer num) {
        this.errType = num.intValue();
    }

    public void setIp(java.lang.String str) {
        this.ip = str;
    }

    public void setPort(int i5) {
        this.port = i5;
    }

    public void setTicket(java.lang.String str) {
        this.ticket = str;
    }

    public void setUdp(boolean z4) {
        this.isUdp = z4;
    }
}
