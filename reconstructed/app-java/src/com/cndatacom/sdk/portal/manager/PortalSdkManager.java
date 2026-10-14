package com.cndatacom.sdk.portal.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PortalSdkManager {
    private static volatile com.cndatacom.sdk.portal.manager.PortalSdkManager _PortalSdkManager;
    private java.lang.Thread.UncaughtExceptionHandler mErrorHandler = new java.lang.Thread.UncaughtExceptionHandler() { // from class: com.cndatacom.sdk.portal.manager.PortalSdkManager.1
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
            th.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.e("UncaughtException: ", th.getMessage());
        }
    };

    public static com.cndatacom.sdk.portal.manager.PortalSdkManager getInstance() {
        synchronized (com.cndatacom.sdk.portal.manager.PortalSdkManager.class) {
            if (_PortalSdkManager == null) {
                _PortalSdkManager = new com.cndatacom.sdk.portal.manager.PortalSdkManager();
            }
        }
        return _PortalSdkManager;
    }

    private void handleAuth(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        if (portalEvent != null) {
            try {
                portalEvent.handleConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("", "", "60"));
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                return;
            }
        }
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultOnTicket = onTicket(context, configInfo);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("ticket errorcode : " + returnUIResultOnTicket.getErrorCode() + " and suberrorcode : " + returnUIResultOnTicket.getSubErrorCode());
        if (!returnUIResultOnTicket.isSuccess()) {
            portalEvent.handleConnectFailMsg(returnUIResultOnTicket);
            return;
        }
        configInfo.save();
        if (portalEvent != null) {
            portalEvent.handleConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("", "", "70"));
        }
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultOnAuth = onAuth(context, configInfo, str, str2, str3);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("handleAuth errorcode : " + returnUIResultOnAuth.getErrorCode() + " and suberrorcode : " + returnUIResultOnAuth.getSubErrorCode());
        if (portalEvent != null) {
            portalEvent.handleConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("", "", "80"));
        }
        if (!returnUIResultOnAuth.isSuccess()) {
            if (portalEvent != null) {
                portalEvent.handleConnectFailMsg(returnUIResultOnAuth);
            }
        } else if (portalEvent != null) {
            configInfo.resetOnlineTime().save();
            portalEvent.handleConnectedMsg(false, new com.cndatacom.sdk.portal.entity.ReturnUIResult("200201", "", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS));
        }
    }

    private com.cndatacom.sdk.portal.entity.ReturnUIResult handleDetectPortal(android.content.Context context, int i5, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("handleDetectPortal step->" + i5);
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
        int i6 = 0;
        while (i6 <= i5 && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
            if (i6 == 0) {
                if (!com.cndatacom.sdk.portal.util.NetUtil.isWifiConnected(context)) {
                    break;
                }
                com.cndatacom.sdk.portal.entity.NetInfo netInfo = new com.cndatacom.sdk.portal.entity.NetInfo(context, configInfoObtain.isOpenSSID());
                java.lang.String privateConfig = configInfoObtain.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_URL, "");
                int iDetect = android.text.TextUtils.isEmpty(privateConfig) ? com.cndatacom.sdk.portal.http.CdcProtocol.detect(context, configInfoObtain, true, true) : com.cndatacom.sdk.portal.util.CdcUtil.toInt(com.cndatacom.sdk.portal.http.CdcProtocol.detectConfig(context, configInfoObtain, privateConfig, true, true).getErrorCode(), 0);
                if (iDetect == 200) {
                    configInfoObtain.setNetInfo(netInfo);
                } else {
                    if (iDetect == 201) {
                        break;
                    }
                    com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
                    i6 = -1;
                }
            } else if (i6 == 1 || i6 == 3 || (i6 == 2 && i5 != 3)) {
                if (i6 == 1) {
                    returnUIResult = com.cndatacom.sdk.portal.http.CdcProtocol.ticket(context, configInfoObtain);
                } else {
                    returnUIResult = i6 == 3 ? com.cndatacom.sdk.portal.http.CdcProtocol.auth(context, configInfoObtain, str, str2, str3) : com.cndatacom.sdk.portal.http.CdcProtocol.state(context, configInfoObtain);
                }
                if (!com.cndatacom.sdk.portal.entity.CdcErrCode.isNetError(returnUIResult)) {
                    if (!returnUIResult.isSuccess() || i6 == i5) {
                        break;
                    }
                } else {
                    com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
                    i6 = -1;
                }
            }
            i6++;
        }
        if (!com.cndatacom.sdk.portal.entity.CdcErrCode.isNetError(returnUIResult)) {
            configInfoObtain.save();
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("handleDetectPortal errorcode : " + returnUIResult.getErrorCode() + " and suberrorcode : " + returnUIResult.getSubErrorCode());
        return returnUIResult;
    }

    private void handlePortalNet(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, boolean z4, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        if (portalEvent != null && z4) {
            portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200111", "", "90"));
        }
        if (configInfo.isOnline()) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handlePortalNet ->term ticket:" + configInfo.getTicket());
            if (com.cndatacom.sdk.portal.http.CdcProtocol.term(context, configInfo, com.cndatacom.sdk.portal.entity.CdcErrCode.TERM_REASON_START).isSuccess()) {
                configInfo.save();
            }
        }
        configInfo.save();
        if (portalEvent != null) {
            portalEvent.handlePreConnectedMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200104"));
        }
    }

    private void handleUsefulNet(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, com.cndatacom.sdk.portal.entity.NetInfo netInfo, boolean z4, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        com.cndatacom.sdk.portal.entity.NetInfo netInfo2 = configInfo.getNetInfo();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("net wifi info : " + netInfo.toString());
        com.cndatacom.sdk.portal.util.ExLogUtil.i("local wifi info : " + netInfo2.toString());
        if (!netInfo2.equals(netInfo)) {
            if (portalEvent != null) {
                portalEvent.handlePreConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200102"));
                return;
            }
            return;
        }
        if (portalEvent != null && z4) {
            portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200111", "", "90"));
        }
        if (!com.cndatacom.sdk.portal.http.CdcProtocol.state(context, configInfo).isSuccess()) {
            if (portalEvent != null) {
                portalEvent.handlePreConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200128"));
            }
        } else if (portalEvent != null) {
            portalEvent.handleConnectedMsg(true, new com.cndatacom.sdk.portal.entity.ReturnUIResult("200201", "", configInfo.getOnlineTime() + ""));
        }
    }

    private boolean onCheckVerifyCode(android.content.Context context, java.lang.String str, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        return com.cndatacom.sdk.portal.http.CdcProtocol.checkVerifyCode(context, configInfo, str, configInfo.getSchoolId());
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult onKeep(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        return onKeep(context, configInfo, null);
    }

    public java.lang.String getCacheData(java.lang.String str) {
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        java.lang.String config = configInfoObtain.getConfig(str, "");
        return android.text.TextUtils.isEmpty(config) ? configInfoObtain.getPrivateConfig(str, "") : config;
    }

    public void init(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ContextUtil.init(context);
        java.lang.Thread.setDefaultUncaughtExceptionHandler(this.mErrorHandler);
    }

    public void initLog(android.content.Context context, boolean z4) {
        com.cndatacom.sdk.portal.util.ExLogUtil.init(context, com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(context, com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_LOGCAT), com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(context, com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_MODULE_LOGCAT), com.cndatacom.sdk.portal.constant.ResourceConstants.APP_NAME);
        if (z4) {
            com.cndatacom.sdk.portal.util.ExLogUtil.logBuildInfo(context);
        }
    }

    public void onAuth(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        if (portalEvent != null) {
            try {
                if (android.text.TextUtils.isEmpty(str3)) {
                    portalEvent.handleConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("", "", "30"));
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                return;
            }
        }
        java.lang.String userId = configInfo.getUserId();
        if ((!android.text.TextUtils.isEmpty(userId) && userId.equals(str)) || !android.text.TextUtils.isEmpty(str3) || !onCheckVerifyCode(context, str, configInfo)) {
            handleAuth(context, configInfo, str, str2, str3, portalEvent);
        } else if (portalEvent != null) {
            portalEvent.handleConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("", "", "50"));
            portalEvent.handleConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("140102", "11062000"));
        }
    }

    public void onCheckNet(android.content.Context context, int i5, boolean z4, boolean z5, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        if (portalEvent != null && z4 && z5) {
            portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200107", "", "20"));
        }
        if (i5 == 1) {
            if (portalEvent != null) {
                portalEvent.handlePreConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200100"));
                return;
            }
            return;
        }
        if (i5 == 2) {
            if (portalEvent != null && z4 && z5) {
                portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200108", "", "40"));
            }
            if (portalEvent != null) {
                portalEvent.handlePreConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200101"));
                return;
            }
            return;
        }
        if (i5 != 3) {
            return;
        }
        if (portalEvent != null && z4 && z5) {
            portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200108", "", "40"));
        }
        if (portalEvent != null && z4 && z5) {
            portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200109", "", "60"));
        }
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = new com.cndatacom.sdk.portal.entity.NetInfo(context, configInfoObtain.isOpenSSID());
        if (portalEvent != null) {
            portalEvent.handleNetworkInfoMsg(netInfo);
        }
        if (!z4 || !netInfo.isLowRSSI()) {
            onCheckNet(context, configInfoObtain, netInfo, z5, portalEvent);
        } else if (portalEvent != null) {
            portalEvent.handlePreConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200103"));
        }
    }

    public boolean onGetVerificatioCode(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str) {
        return com.cndatacom.sdk.portal.http.CdcProtocol.getVerifyCode(context, configInfo, str, configInfo.getSchoolId());
    }

    public com.cndatacom.sdk.portal.entity.ReturnUIResult onState(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultState = com.cndatacom.sdk.portal.http.CdcProtocol.state(context, configInfo);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onState errorcode : " + returnUIResultState.getErrorCode() + " and suberrorcode : " + returnUIResultState.getSubErrorCode());
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.isNetError(returnUIResultState) && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
            return handleDetectPortal(context, 2, returnUIResultState, "", "", "");
        }
        if (returnUIResultState.isSuccess()) {
            configInfo.save();
        }
        return returnUIResultState;
    }

    public void onTerm(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        if (portalEvent != null) {
            portalEvent.handleDisConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult());
        }
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultTerm = com.cndatacom.sdk.portal.http.CdcProtocol.term(context, configInfo, str);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onTerm errorcode : " + returnUIResultTerm.getErrorCode() + " and suberrorcode : " + returnUIResultTerm.getSubErrorCode());
        if (returnUIResultTerm.isSuccess()) {
            configInfo.save();
            try {
                java.lang.Thread.sleep(5000L);
            } catch (java.lang.InterruptedException e5) {
                e5.printStackTrace();
            }
        }
        if (portalEvent != null) {
            portalEvent.handleDisconnectedMsg(returnUIResultTerm);
        }
    }

    public com.cndatacom.sdk.portal.entity.ReturnUIResult onTicket(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultTicket = com.cndatacom.sdk.portal.http.CdcProtocol.ticket(context, configInfo);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onTicket errorcode : " + returnUIResultTicket.getErrorCode() + " and suberrorcode : " + returnUIResultTicket.getSubErrorCode());
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.isNetError(returnUIResultTicket) && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
            return handleDetectPortal(context, 1, returnUIResultTicket, "", "", "");
        }
        if (returnUIResultTicket.isSuccess()) {
            configInfo.save();
        }
        return returnUIResultTicket;
    }

    public void setCacheData(java.lang.String str, java.lang.String str2) {
        com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().putPrivateConfig(str, str2).save();
    }

    public boolean shareLog(android.content.Context context, android.app.Activity activity) {
        java.io.File file = new java.io.File(com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(context, com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_LOGCAT));
        for (java.io.File file2 : file.listFiles()) {
            if (file2.isFile() && file2.getName().endsWith(".zip")) {
                file2.getAbsoluteFile().delete();
            }
        }
        java.lang.String str = file.getPath() + java.io.File.separator;
        java.lang.String str2 = str + ("CDCLogs_" + com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date()) + ".zip");
        if (!com.cndatacom.sdk.portal.util.FileUtil.toZip(str, str2)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("share files to zip is error");
            return false;
        }
        java.io.File file3 = new java.io.File(str2);
        if (!file3.exists()) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("文件不存在，日志分享失败!");
            return false;
        }
        try {
            android.net.Uri uriF = androidx.core.content.FileProvider.f(context, context.getPackageName(), file3);
            android.content.Intent intent = new android.content.Intent("android.intent.action.SEND");
            intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.addFlags(3);
            intent.putExtra("android.intent.extra.STREAM", uriF);
            intent.setType("*/*");
            activity.startActivity(android.content.Intent.createChooser(intent, "日志分享"));
            return true;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.e("日志分享失败!");
            return false;
        }
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult onKeep(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("keep ticket->" + configInfo.getTicket());
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultKeep = com.cndatacom.sdk.portal.http.CdcProtocol.keep(context, configInfo, arrayMap);
        if (returnUIResultKeep.isSuccess()) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("keep expire->" + com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(configInfo.getExpire()));
            configInfo.save();
        }
        return returnUIResultKeep;
    }

    public com.cndatacom.sdk.portal.entity.ReturnUIResult onAuth(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultAuth = com.cndatacom.sdk.portal.http.CdcProtocol.auth(context, configInfo, str, str2, str3);
        if (com.cndatacom.sdk.portal.entity.CdcErrCode.isNetError(returnUIResultAuth) && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
            return handleDetectPortal(context, 3, returnUIResultAuth, str, str2, str3);
        }
        if (returnUIResultAuth.isSuccess()) {
            configInfo.setPassword(str2);
            configInfo.save();
        }
        return returnUIResultAuth;
    }

    private void onCheckNet(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, com.cndatacom.sdk.portal.entity.NetInfo netInfo, boolean z4, com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent) {
        if (portalEvent != null && z4) {
            portalEvent.handlePreConnectingMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200111", "", "80"));
        }
        int iDetect = com.cndatacom.sdk.portal.http.CdcProtocol.detect(context, configInfo, true, true);
        if (iDetect == 200) {
            configInfo.setNetInfo(netInfo);
            handlePortalNet(context, configInfo, z4, portalEvent);
        } else if (iDetect == 201) {
            handleUsefulNet(context, configInfo, netInfo, z4, portalEvent);
        } else if (portalEvent != null) {
            portalEvent.handlePreConnectFailMsg(com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(iDetect));
        }
    }
}
