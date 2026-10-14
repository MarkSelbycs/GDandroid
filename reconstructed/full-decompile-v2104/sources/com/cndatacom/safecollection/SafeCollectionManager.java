package com.cndatacom.safecollection;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SafeCollectionManager {
    private static com.cndatacom.safecollection.SafeCollectionManager _Safe_CollectionManager;
    private com.cndatacom.sdk.portal.work.WorkerInfo mUpdateWorkerInfo;

    private SafeCollectionManager() {
    }

    private void clienthotspotinfo(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, org.json.JSONArray jSONArray, android.location.Location location, java.lang.String str2) {
        try {
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
            java.lang.String schoolId = configInfo.getSchoolId("");
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("account", configInfo.getUserId());
            jSONObject.put("clientid", configInfo.getClientId());
            jSONObject.put("ostype", "4");
            jSONObject.put("mac", netInfo.getMac());
            jSONObject.put("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context));
            jSONObject.put("schoolid", schoolId);
            jSONObject.put("ipv4", netInfo.getIpv4());
            jSONObject.put("ipv6", netInfo.getIpv6());
            jSONObject.put("gateway", netInfo.getGateway());
            jSONObject.put("brasip", configInfo.getWlanacip());
            jSONObject.put("mask", netInfo.getMask());
            jSONObject.put("hotspotmac", netInfo.getMac());
            jSONObject.put("hotspot", netInfo.getSsid());
            jSONObject.put("hotspotduration", "");
            if (jSONArray != null && jSONArray.length() > 0) {
                jSONObject.put("nearbyhotspots", jSONArray);
            }
            if (!android.text.TextUtils.isEmpty(str2)) {
                jSONObject.put("token", com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("xfokM0h3GcRAqRZT ".getBytes("utf-8"), "aLX32gHbG3fBxNpQ".getBytes("utf-8"), str2.getBytes("utf-8"))));
            }
            jSONObject.put("starttime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date()));
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            jSONArray2.put(jSONObject);
            java.lang.String strByteArrayToHex = com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("9vApxLk5G3PAsJrM".getBytes("utf-8"), "FnJL7EDzjqWjcaY9".getBytes("utf-8"), jSONArray2.toString().getBytes("utf-8")));
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "text/plain;charset=utf-8");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(str, arrayMap, strByteArrayToHex.getBytes("utf-8"));
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("clienthotspotinfo httpcode ->" + resultPost.getHttpCode());
                return;
            }
            if (!android.text.TextUtils.isEmpty(str2)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("clienthotspotinfo code ->" + new org.json.JSONObject(resultPost.getDataString()).optInt("code", -1));
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.i("clienthotspotinfo httpcode ->" + resultPost.getHttpCode());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.e("clienthotspotinfo error ->" + e5.getMessage());
        }
    }

    public static com.cndatacom.safecollection.SafeCollectionManager getInstance() {
        if (_Safe_CollectionManager == null) {
            _Safe_CollectionManager = new com.cndatacom.safecollection.SafeCollectionManager();
        }
        return _Safe_CollectionManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @android.annotation.SuppressLint({"MissingPermission"})
    public void uploadLocationAndHotdot(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("SafetyDataCollectionURL", null);
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("clienthotspotinfo url is null");
            return;
        }
        java.lang.String funcfgAtt = configInfo.getFuncfgAtt("SafetyDataCollectionURL", "ssid", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        java.lang.String funcfgAtt2 = configInfo.getFuncfgAtt("SafetyDataCollectionURL", "rssi", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi");
        if (wifiManager != null) {
            for (android.net.wifi.ScanResult scanResult : wifiManager.getScanResults()) {
                if (!android.text.TextUtils.isEmpty(scanResult.SSID) || !com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(funcfgAtt)) {
                    if (scanResult.level > -76 || !com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(funcfgAtt2)) {
                        try {
                            org.json.JSONObject jSONObject = new org.json.JSONObject();
                            jSONObject.put("ssid", scanResult.SSID);
                            jSONObject.put("mac", scanResult.BSSID);
                            jSONArray.put(jSONObject);
                        } catch (java.lang.Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            }
        }
        clienthotspotinfo(context, configInfo, funcfgUrl, jSONArray, null, "");
    }

    public void release(android.content.Context context) {
        if (this.mUpdateWorkerInfo != null) {
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mUpdateWorkerInfo.getTaskId());
        }
        _Safe_CollectionManager = null;
    }

    public void start(final android.content.Context context, final com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        if (android.text.TextUtils.isEmpty(configInfo.getFuncfgUrl("SafetyDataCollectionURL", null))) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("clienthotspotinfo url is null");
            return;
        }
        long j5 = java.lang.Long.parseLong(configInfo.getFuncfgAtt("SafetyDataCollectionURL", "time", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS)) * 1000;
        if (j5 > 0) {
            this.mUpdateWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.safecollection.SafeCollectionManager.1
                @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                public void runTask() {
                    com.cndatacom.safecollection.SafeCollectionManager.this.uploadLocationAndHotdot(context, configInfo);
                }
            };
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j5, this.mUpdateWorkerInfo, j5);
        }
    }
}
