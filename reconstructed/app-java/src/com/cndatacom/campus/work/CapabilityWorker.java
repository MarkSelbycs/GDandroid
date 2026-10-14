package com.cndatacom.campus.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CapabilityWorker extends com.cndatacom.sdk.portal.work.WorkerInfo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static com.cndatacom.campus.work.CapabilityWorker f3606d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3607a = "ProcessesCollectUploadURL";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3608b = "LocalProcessesKey";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3609c = "LocalUploadProcessesKey";

    private CapabilityWorker() {
    }

    public static com.cndatacom.campus.work.CapabilityWorker getInstance() {
        if (f3606d == null) {
            f3606d = new com.cndatacom.campus.work.CapabilityWorker();
        }
        return f3606d;
    }

    public final org.json.JSONObject a(android.content.Context context) throws org.json.JSONException {
        android.app.ActivityManager activityManager = (android.app.ActivityManager) context.getSystemService("activity");
        android.app.ActivityManager.MemoryInfo memoryInfo = new android.app.ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        long j5 = memoryInfo.totalMem;
        long j6 = j5 - memoryInfo.availMem;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("stattime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        org.json.JSONObject jSONObject2 = new org.json.JSONObject();
        jSONObject2.put("process", "unknown");
        jSONObject2.put("cpu", 0);
        jSONObject2.put("memory", (j6 * 100) / j5);
        jSONArray.put(jSONObject2);
        jSONObject.put("plist", jSONArray);
        return jSONObject;
    }

    public final void b(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, org.json.JSONArray jSONArray) {
        try {
            java.lang.String str2 = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date());
            if (str2.equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "LocalUploadProcessesKey", "none"))) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadProcessesInfo has done");
                return;
            }
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(str, arrayMap, jSONArray.toString().getBytes());
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadProcessesInfo httpcode ->" + resultPost.getHttpCode());
                return;
            }
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "LocalUploadProcessesKey", str2);
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadProcessesInfo httpcode ->" + resultPost.getDataString());
            configInfo.putPrivateConfig("LocalProcessesKey", "");
            configInfo.save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void release(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(getInstance().getTaskId());
        f3606d = null;
    }

    @Override // com.cndatacom.sdk.portal.work.WorkerInfo
    public void runTask() {
        startTask(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain());
    }

    public void startTask(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String str;
        java.lang.String str2;
        boolean z4;
        java.lang.String str3 = "LocalProcessesKey";
        java.lang.String str4 = "";
        try {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl("ProcessesCollectUploadURL", null);
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadProcessesInfo url is null");
                return;
            }
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.lang.String privateConfig = configInfo.getPrivateConfig("LocalProcessesKey", "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                jSONArray = new org.json.JSONArray(privateConfig);
            }
            java.lang.String userId = configInfo.getUserId();
            java.lang.String schoolId = configInfo.getSchoolId("");
            int versionCode = com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context);
            java.lang.String str5 = userId + "#" + schoolId + "#" + versionCode;
            if (jSONArray.length() <= 0) {
                str = str3;
                str2 = funcfgUrl;
                z4 = false;
                break;
            }
            int i5 = 0;
            while (true) {
                if (i5 >= jSONArray.length()) {
                    str = str3;
                    str2 = funcfgUrl;
                    z4 = false;
                    break;
                }
                org.json.JSONObject jSONObject = jSONArray.getJSONObject(i5);
                str2 = funcfgUrl;
                java.lang.String strOptString = jSONObject.optString("version", str4);
                java.lang.String strOptString2 = jSONObject.optString("cid", str4);
                str = str3;
                java.lang.String str6 = str4;
                if (str5.equals(jSONObject.optString("account", str4) + "#" + strOptString2 + "#" + strOptString)) {
                    jSONObject.getJSONArray("processes").put(a(context));
                    z4 = true;
                    break;
                } else {
                    i5++;
                    funcfgUrl = str2;
                    str3 = str;
                    str4 = str6;
                }
            }
            if (!z4) {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put("account", userId);
                jSONObject2.put("clientid", configInfo.getClientId());
                jSONObject2.put("cid", schoolId);
                jSONObject2.put("ostype", "4");
                jSONObject2.put("version", versionCode);
                org.json.JSONArray jSONArray2 = new org.json.JSONArray();
                jSONArray2.put(a(context));
                jSONObject2.put("processes", jSONArray2);
                jSONArray.put(jSONObject2);
            }
            java.lang.String string = jSONArray.toString();
            com.cndatacom.sdk.portal.util.ExLogUtil.d("uploadProcessesInfo->" + string);
            configInfo.putPrivateConfig(str, string);
            configInfo.save();
            try {
                b(context, configInfo, str2, jSONArray);
                com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(getInstance(), java.lang.Long.parseLong(configInfo.getFuncfgAtt("ProcessesCollectUploadURL", "frequency", "1800")) * 1000);
            } catch (java.lang.Exception e5) {
                e = e5;
                e.printStackTrace();
            }
        } catch (java.lang.Exception e6) {
            e = e6;
        }
    }
}
