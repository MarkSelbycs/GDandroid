package com.cndatacom.campus.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CheckRegularlyUtil {
    public static java.util.TimerTask m_timeTask;
    public static java.util.Timer m_timer;
    public java.lang.String httpTimeout;
    public java.lang.String icmpTimeout;
    public java.lang.String timeout;
    public java.util.ArrayList<java.lang.String> urlArray;

    public int doHttpCheck(java.util.ArrayList<java.lang.String> arrayList) {
        int i5 = java.lang.Integer.parseInt(this.httpTimeout);
        int i6 = 0;
        while (arrayList.size() > 0) {
            try {
                int iNextInt = new java.util.Random().nextInt(arrayList.size());
                java.lang.String str = arrayList.get(iNextInt);
                if (!str.contains("http://") && !str.contains("https://")) {
                    str = "http://" + str;
                }
                arrayList.remove(iNextInt);
                java.lang.String errorCode = com.cndatacom.sdk.portal.http.CdcProtocol.detectConfig(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), new com.cndatacom.sdk.portal.entity.ConfigInfo(), str, i5, i5, false, true).getErrorCode();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckRegularWorker  detectConfig -->" + errorCode);
                if (com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED.equals(errorCode)) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckRegularWorker  http探测失败  -->");
                } else {
                    if ("201".equals(errorCode)) {
                        com.cndatacom.sdk.portal.util.ExLogUtil.d("CheckRegularWorker  http探测成功 -->");
                        return 0;
                    }
                    int i7 = java.lang.Integer.parseInt(errorCode);
                    if (i7 >= 200 && i7 < 300) {
                        com.cndatacom.sdk.portal.util.ExLogUtil.d("CheckRegularWorker  http探测成功 -->");
                        return 0;
                    }
                    if (i7 < 300 || i7 >= 400) {
                        com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckMananger  http探测失败  -->");
                        i6 = 1;
                    } else {
                        com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckMananger  http探测失败  -->");
                    }
                }
                i6 = 2;
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("CheckMananger  http探测失败  -->" + e5.toString());
            }
        }
        return i6;
    }

    public int doIcmpCheck(java.util.ArrayList<java.lang.String> arrayList) {
        int i5 = 0;
        while (arrayList.size() > 0 && i5 < 2) {
            i5++;
            try {
                java.lang.String str = arrayList.get(new java.util.Random().nextInt(arrayList.size()));
                if (java.net.InetAddress.getByName(str).isReachable(java.lang.Integer.parseInt(this.icmpTimeout))) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.d("CheckRegularWorker  icmp探测成功 -->" + str);
                    return 2;
                }
                com.cndatacom.sdk.portal.util.ExLogUtil.d("CheckRegularWorker  icmp探测失败 -->" + str);
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        return 1;
    }

    public void startCheck(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String funcfgAtt = configInfo.getFuncfgAtt(com.cndatacom.campus.work.CheckRegularWorker.INDEX_KEY, "icmpUrl", "");
        this.icmpTimeout = configInfo.getFuncfgAtt(com.cndatacom.campus.work.CheckRegularWorker.INDEX_KEY, "icmpTimeout", "2000");
        java.lang.String funcfgAtt2 = configInfo.getFuncfgAtt(com.cndatacom.campus.work.CheckRegularWorker.INDEX_KEY, "periodTime", "5000");
        if (funcfgAtt.isEmpty()) {
            return;
        }
        this.urlArray = new java.util.ArrayList<>(java.util.Arrays.asList(funcfgAtt.split(",")));
        m_timeTask = new java.util.TimerTask() { // from class: com.cndatacom.campus.util.CheckRegularlyUtil.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                com.cndatacom.campus.util.CheckRegularlyUtil checkRegularlyUtil = com.cndatacom.campus.util.CheckRegularlyUtil.this;
                if (checkRegularlyUtil.doIcmpCheck(checkRegularlyUtil.urlArray) == 1) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("startCheck ping 失败-->");
                    com.cndatacom.campus.util.CheckRegularlyUtil.m_timer.cancel();
                    com.cndatacom.campus.util.CheckRegularlyUtil.m_timeTask.cancel();
                    com.cndatacom.campus.work.CheckRegularWorker.getInstance().handleCheckResult();
                }
            }
        };
        java.util.Timer timer = m_timer;
        if (timer != null) {
            timer.cancel();
        }
        java.util.Timer timer2 = new java.util.Timer();
        m_timer = timer2;
        timer2.schedule(m_timeTask, 5000L, java.lang.Long.parseLong(funcfgAtt2));
    }
}
