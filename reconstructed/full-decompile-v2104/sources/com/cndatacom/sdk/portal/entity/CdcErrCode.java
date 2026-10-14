package com.cndatacom.sdk.portal.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class CdcErrCode {
    public static final java.lang.String ACCESS_LIMIT = "105";
    public static final java.lang.String ALGO_EXPIRED = "200";
    public static final java.lang.String AUTH_DENY = "102";
    public static final java.lang.String CHECK_NET_REDIRECT = "10";
    public static final java.lang.String CHECK_NET_TIMEOUT = "11";
    public static final java.lang.String CLIENT_DAMAGED = "755";
    public static final java.lang.String CONFIG_URL_ERROR = "300309";
    public static final java.lang.String DB_EXCEPTION = "901";
    public static final java.lang.String DECODE_ERROR = "200114";
    public static final java.lang.String ENCODE_ERROR = "200113";
    public static final java.lang.String ERR_TYPE_PORTAL = "140";
    public static final java.lang.String INVALID_ALGOID = "13";
    public static final java.lang.String INVALID_CHALLENGE = "101";
    public static final java.lang.String INVALID_CHECKSUM = "15";
    public static final java.lang.String INVALID_CLIENTID = "12";
    public static final java.lang.String INVALID_IP = "10";
    public static final java.lang.String INVALID_MAC = "11";
    public static final java.lang.String INVALID_TICKET = "14";
    public static final java.lang.String INVALID_TYPE = "1";
    public static final java.lang.String INVALID_USRPWD = "100";
    public static final java.lang.String IP_MAC_ERROR = "200112";
    public static final java.lang.String KEEP_TIMEOUT_ERROR = "200117";
    public static final java.lang.String NETWORK_ERROR = "300108";
    public static final java.lang.String PARSER_ERROR = "200115";
    public static final java.lang.String PORTAL_EXCEPTION = "902";
    public static final java.lang.String REVERSE_NOTIFY_ERROR = "200118";
    public static final java.lang.String SERVER_ERROR = "300308";
    public static final java.lang.String SHARED_APP_ERROR = "200127";
    public static final java.lang.String SHARED_ERROR = "200119";
    public static final java.lang.String SUCCESS = "0";
    public static final java.lang.String SYSTEM_EXCEPTION = "990";
    public static final java.lang.String TERM_REASON_EXIT = "2";
    public static final java.lang.String TERM_REASON_MANAGE = "8";
    public static final java.lang.String TERM_REASON_MANUAL = "1";
    public static final java.lang.String TERM_REASON_SHARE = "6";
    public static final java.lang.String TERM_REASON_START = "5";
    public static final java.lang.String TOOLMANY_CLIENT = "103";
    public static final java.lang.String UNKNOW_USER = "104";
    public static final java.lang.String UNSUPPORT_CLIENT = "3";
    public static final java.lang.String UNSUPPORT_OS = "2";
    public static final java.lang.String VPN_CLOSED_ERROR = "200122";
    public static final java.lang.String VPN_CREATE_ERROR = "200124";
    public static final java.lang.String VPN_SERVICE_KILLED_ERROR = "200121";
    public static final java.lang.String WAIT_CLIENT_AUTH = "300";
    public static final java.lang.String WAIT_SERVER_AUTH = "301";

    private CdcErrCode() {
    }

    public static java.lang.String getErrorCode(int i5) {
        return (400 > i5 || i5 > 600) ? NETWORK_ERROR : SERVER_ERROR;
    }

    public static boolean isNetError(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        return returnUIResult.getErrorCode().equals(SERVER_ERROR) || returnUIResult.getErrorCode().equals(NETWORK_ERROR);
    }

    public static boolean isProtocolError(java.lang.String str) {
        return str.startsWith(ERR_TYPE_PORTAL);
    }

    public static java.lang.String makePortalErrorCode(java.lang.String str) {
        return makeUiErrorCode(ERR_TYPE_PORTAL, str);
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult makeUiErrorCode(com.cndatacom.sdk.portal.http.CdcHttpClient.Result result) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        if (!android.text.TextUtils.isEmpty(result.getExtraCode())) {
            returnUIResult.setErrorCode(result.getExtraCode());
            return returnUIResult;
        }
        if (!result.isHttpOk()) {
            returnUIResult.setErrorCode(getErrorCode(result.getHttpCode()));
            return returnUIResult;
        }
        if (SUCCESS.equals(result.getCdcCode())) {
            returnUIResult.setErrorCode(SUCCESS);
            return returnUIResult;
        }
        returnUIResult.setErrorCode(makeUiErrorCode(ERR_TYPE_PORTAL, result.getCdcCode()));
        returnUIResult.setSubErrorCode(result.getSubCode());
        return returnUIResult;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult makeUiErrorCode(int i5) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        returnUIResult.setErrorCode(getErrorCode(i5));
        return returnUIResult;
    }

    public static java.lang.String makeUiErrorCode(java.lang.String str, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        for (int length = 3 - str2.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(str2);
        return sb.toString();
    }
}
