package com.cndatacom.campus.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class WiFiInfoWorker extends com.cndatacom.sdk.portal.work.WorkerInfo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static com.cndatacom.campus.work.WiFiInfoWorker f3626d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3627a = "WiFiCollectUploadURL";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3628b = "LocalWiFiInfoKey";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3629c = "LocalUploadWiFiInfoKey";

    private WiFiInfoWorker() {
    }

    public static com.cndatacom.campus.work.WiFiInfoWorker getInstance() {
        if (f3626d == null) {
            f3626d = new com.cndatacom.campus.work.WiFiInfoWorker();
        }
        return f3626d;
    }

    public final org.json.JSONObject a(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("stattime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = new com.cndatacom.sdk.portal.entity.NetInfo(context, configInfo.isOpenSSID());
        jSONObject.put("bssid", netInfo.getWifiMac());
        jSONObject.put("essid", netInfo.getSsid());
        jSONObject.put("rssi", netInfo.getRssi());
        return jSONObject;
    }

    public final void b(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, org.json.JSONArray jSONArray) {
        try {
            java.lang.String str2 = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date());
            if (str2.equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "LocalUploadWiFiInfoKey", "none"))) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadWiFiInfo has done");
                return;
            }
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(str, arrayMap, jSONArray.toString().getBytes());
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadWiFiInfo httpcode ->" + resultPost.getHttpCode());
                return;
            }
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "LocalUploadWiFiInfoKey", str2);
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadWiFiInfo httpcode ->" + resultPost.getDataString());
            configInfo.putPrivateConfig("LocalWiFiInfoKey", "");
            configInfo.save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void release(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(getInstance().getTaskId());
        f3626d = null;
    }

    @Override // com.cndatacom.sdk.portal.work.WorkerInfo
    public void runTask() {
        startTask(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain());
    }

    public void startTask(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        boolean z4;
        java.lang.String str4 = "LocalWiFiInfoKey";
        java.lang.String str5 = "";
        try {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl("WiFiCollectUploadURL", null);
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadWiFiInfo url is null");
                return;
            }
            if (((android.net.wifi.WifiManager) context.getSystemService("wifi")) == null) {
                return;
            }
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.lang.String privateConfig = configInfo.getPrivateConfig("LocalWiFiInfoKey", "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                jSONArray = new org.json.JSONArray(privateConfig);
            }
            java.lang.String userId = configInfo.getUserId();
            java.lang.String schoolId = configInfo.getSchoolId("");
            int versionCode = com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context);
            java.lang.String str6 = userId + "#" + schoolId + "#" + versionCode;
            if (jSONArray.length() <= 0) {
                str = str4;
                str2 = str5;
                str3 = funcfgUrl;
                z4 = false;
                break;
            }
            int i5 = 0;
            while (true) {
                if (i5 >= jSONArray.length()) {
                    str = str4;
                    str2 = str5;
                    str3 = funcfgUrl;
                    z4 = false;
                    break;
                }
                org.json.JSONObject jSONObject = jSONArray.getJSONObject(i5);
                str3 = funcfgUrl;
                java.lang.String strOptString = jSONObject.optString("version", str5);
                java.lang.String strOptString2 = jSONObject.optString("cid", str5);
                str = str4;
                str2 = str5;
                if (str6.equals(jSONObject.optString("account", str5) + "#" + strOptString2 + "#" + strOptString)) {
                    jSONObject.getJSONArray("wifis").put(a(context, configInfo));
                    z4 = true;
                    break;
                } else {
                    i5++;
                    funcfgUrl = str3;
                    str4 = str;
                    str5 = str2;
                }
            }
            if (!z4) {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put("account", userId);
                jSONObject2.put("clientid", configInfo.getClientId());
                jSONObject2.put("cid", schoolId);
                jSONObject2.put("ostype", 4);
                jSONObject2.put("version", versionCode);
                org.json.JSONArray jSONArray2 = new org.json.JSONArray();
                jSONArray2.put(a(context, configInfo));
                jSONObject2.put("wifis", jSONArray2);
                jSONArray.put(jSONObject2);
            }
            if (!android.text.TextUtils.isEmpty(userId) && jSONArray.length() > 0) {
                int i6 = 0;
                while (i6 < jSONArray.length()) {
                    org.json.JSONObject jSONObject3 = jSONArray.getJSONObject(i6);
                    java.lang.String str7 = str2;
                    if (android.text.TextUtils.isEmpty(jSONObject3.optString("account", str7))) {
                        jSONObject3.put("account", userId);
                    }
                    i6++;
                    str2 = str7;
                }
            }
            java.lang.String string = jSONArray.toString();
            com.cndatacom.sdk.portal.util.ExLogUtil.d("uploadWiFiInfo->" + string);
            configInfo.putPrivateConfig(str, string);
            configInfo.save();
            try {
                b(context, configInfo, str3, jSONArray);
                com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(getInstance(), java.lang.Long.parseLong(configInfo.getFuncfgAtt("WiFiCollectUploadURL", "frequency", "1800")) * 1000);
            } catch (java.lang.Exception e5) {
                e = e5;
                e.printStackTrace();
            }
        } catch (java.lang.Exception e6) {
            e = e6;
        }
    }
}
