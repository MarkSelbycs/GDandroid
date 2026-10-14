package com.cndatacom.campus.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CheckRegularWorker {
    public static final int CHECK_FAIL = 3;
    public static final int CHECK_INIT = -1;
    public static final int CHECK_REDIRECT = 2;
    public static final int CHECK_SUCCESS = 0;
    public static final int CHECK_TIMEOUT = 1;
    public static final java.lang.String INDEX_KEY = "CheckNetRegularly";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static com.cndatacom.campus.work.CheckRegularWorker f3610d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.Timer f3612b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3611a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3613c = false;

    public static com.cndatacom.campus.work.CheckRegularWorker getInstance() {
        if (f3610d == null) {
            f3610d = new com.cndatacom.campus.work.CheckRegularWorker();
        }
        return f3610d;
    }

    public static java.lang.String getUrl(java.lang.String str) {
        try {
            java.lang.String strReplaceAll = str.replaceAll("http://|https://", "");
            if (!strReplaceAll.matches("^[a-zA-Z0-9-]+(\\.[a-zA-Z]{2,})+$")) {
                return strReplaceAll;
            }
            java.net.InetAddress[] allByName = java.net.InetAddress.getAllByName(strReplaceAll);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (java.net.InetAddress inetAddress : allByName) {
                if (inetAddress instanceof java.net.InetAddress) {
                    arrayList.add(0, inetAddress.getHostAddress());
                    break;
                }
                arrayList.add(inetAddress.getHostAddress());
            }
            return arrayList.get(0).toString();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return str;
        }
    }

    public void closeCheckNetRegularly() {
        java.util.Timer timer = this.f3612b;
        if (timer != null) {
            timer.cancel();
        }
        java.util.Timer timer2 = com.cndatacom.campus.util.CheckRegularlyUtil.m_timer;
        if (timer2 != null) {
            timer2.cancel();
        }
        java.util.TimerTask timerTask = com.cndatacom.campus.util.CheckRegularlyUtil.m_timeTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
        this.f3613c = false;
        com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckRegularWorker  结束探测 -->");
    }

    public void handleCheckResult() {
        android.content.Context context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        if (this.f3613c) {
            return;
        }
        this.f3613c = true;
        if (com.cndatacom.sdk.portal.http.CdcProtocol.detect(context, configInfoObtain, false, true) != 200) {
            this.f3613c = false;
            com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckRegularWorker  网络检测成功 当前属于ping误判-->");
            new com.cndatacom.campus.util.CheckRegularlyUtil().startCheck(configInfoObtain);
            return;
        }
        closeCheckNetRegularly();
        if (com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onState(context, configInfoObtain).isSuccess()) {
            com.cndatacom.sdk.portal.http.CdcProtocol.term(context, configInfoObtain, "11");
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckRegularWorker 自动重拨-->");
        int i5 = 0;
        while (i5 < this.f3611a) {
            if (com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onTicket(context, configInfoObtain).isSuccess()) {
                if (com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onAuth(context, configInfoObtain, configInfoObtain.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_ACCOUNT, ""), configInfoObtain.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_PASSWORD, ""), configInfoObtain.getCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_VERIFY, "")).isSuccess()) {
                    com.cndatacom.campus.PortalMananger.startService(context);
                    break;
                }
            }
            i5++;
        }
        if (i5 < this.f3611a) {
            new com.cndatacom.campus.util.CheckRegularlyUtil().startCheck(configInfoObtain);
        }
    }

    public void startCheckNetRegularly(final com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, int i5) {
        if (configInfo.getFuncfgAtt(INDEX_KEY, "enable", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS)) {
            return;
        }
        this.f3611a = java.lang.Integer.parseInt(configInfo.getFuncfgAtt(INDEX_KEY, "maxCount", "1"));
        final com.cndatacom.campus.util.CheckRegularlyUtil checkRegularlyUtil = new com.cndatacom.campus.util.CheckRegularlyUtil();
        java.util.Timer timer = this.f3612b;
        if (timer != null) {
            timer.cancel();
        }
        java.util.Timer timer2 = new java.util.Timer();
        this.f3612b = timer2;
        timer2.schedule(new java.util.TimerTask() { // from class: com.cndatacom.campus.work.CheckRegularWorker.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckRegularWorker  开始探测 -->");
                checkRegularlyUtil.startCheck(configInfo);
            }
        }, i5);
    }
}
