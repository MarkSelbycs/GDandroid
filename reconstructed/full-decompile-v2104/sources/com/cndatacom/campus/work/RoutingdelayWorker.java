package com.cndatacom.campus.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RoutingdelayWorker extends com.cndatacom.sdk.portal.work.WorkerInfo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static com.cndatacom.campus.work.RoutingdelayWorker f3622d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3623a = "RouteCollectUploadURL";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3624b = "LocalRoutingdelayKey";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3625c = "LocalUploadRoutingdelayKey";

    private RoutingdelayWorker() {
    }

    public static com.cndatacom.campus.work.RoutingdelayWorker getInstance() {
        if (f3622d == null) {
            f3622d = new com.cndatacom.campus.work.RoutingdelayWorker();
        }
        return f3622d;
    }

    public final void a(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, org.json.JSONArray jSONArray) throws org.json.JSONException {
        java.lang.String privateConfig = configInfo.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_DATA, "");
        if (android.text.TextUtils.isEmpty(privateConfig)) {
            return;
        }
        org.json.JSONArray jSONArray2 = new org.json.JSONObject(privateConfig).getJSONArray("detect");
        for (int i5 = 0; i5 < jSONArray2.length(); i5++) {
            java.lang.String string = jSONArray2.getString(i5);
            java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})").matcher(string);
            if (matcher.find()) {
                string = matcher.group().trim();
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("stattime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
            jSONObject.put("node_type", 2);
            jSONObject.put("node_ip", string);
            b(string, jSONObject);
            jSONArray.put(jSONObject);
        }
    }

    public final void b(java.lang.String str, org.json.JSONObject jSONObject) {
        boolean z4;
        try {
            java.lang.String[] strArrSplit = com.cndatacom.sdk.portal.util.CommandUtil.exec("ping -c 1 " + str).split("\n");
            int i5 = 0;
            while (true) {
                z4 = true;
                if (i5 >= strArrSplit.length) {
                    z4 = false;
                    break;
                }
                java.lang.String lowerCase = strArrSplit[i5].trim().toLowerCase();
                if (!android.text.TextUtils.isEmpty(lowerCase)) {
                    java.lang.String str2 = "time=\\d+";
                    java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(" + str2 + ")").matcher(lowerCase);
                    if (matcher.find()) {
                        java.util.regex.Matcher matcher2 = java.util.regex.Pattern.compile(str2).matcher(matcher.group());
                        if (matcher2.find()) {
                            jSONObject.put("node_delay", java.lang.Integer.parseInt(matcher2.group().trim().replace("time=", "")));
                            jSONObject.put("node_status", 1);
                            break;
                        }
                    } else {
                        continue;
                    }
                }
                i5++;
            }
            if (z4) {
                return;
            }
            jSONObject.put("node_delay", 0);
            jSONObject.put("node_status", -1);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void c(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, org.json.JSONArray jSONArray) {
        try {
            java.lang.String str2 = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date());
            if (str2.equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "LocalUploadRoutingdelayKey", "none"))) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadRoutingdelay has done");
                return;
            }
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(str, arrayMap, jSONArray.toString().getBytes());
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadRoutingdelay httpcode ->" + resultPost.getHttpCode());
                return;
            }
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "LocalUploadRoutingdelayKey", str2);
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadRoutingdelay httpcode ->" + resultPost.getDataString());
            configInfo.putPrivateConfig("LocalRoutingdelayKey", "");
            configInfo.save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void release(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(getInstance().getTaskId());
        f3622d = null;
    }

    @Override // com.cndatacom.sdk.portal.work.WorkerInfo
    public void runTask() {
        startTask(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain());
    }

    public void startTask(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String str;
        java.lang.String str2;
        org.json.JSONArray jSONArray;
        int i5;
        boolean z4;
        org.json.JSONArray jSONArray2;
        java.lang.String str3 = "";
        try {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl("RouteCollectUploadURL", null);
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadRoutingdelay url is null");
                return;
            }
            org.json.JSONArray jSONArray3 = new org.json.JSONArray();
            java.lang.String privateConfig = configInfo.getPrivateConfig("LocalRoutingdelayKey", "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                jSONArray3 = new org.json.JSONArray(privateConfig);
            }
            java.lang.String userId = configInfo.getUserId();
            java.lang.String schoolId = configInfo.getSchoolId("");
            int versionCode = com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context);
            java.lang.String str4 = userId + "#" + schoolId + "#" + versionCode;
            java.lang.String str5 = "version";
            if (jSONArray3.length() <= 0) {
                str = str5;
                str2 = str3;
                jSONArray = jSONArray3;
                i5 = versionCode;
                z4 = false;
                break;
            }
            int i6 = 0;
            while (true) {
                if (i6 >= jSONArray3.length()) {
                    str = str5;
                    str2 = str3;
                    jSONArray = jSONArray3;
                    i5 = versionCode;
                    z4 = false;
                    break;
                }
                org.json.JSONObject jSONObject = jSONArray3.getJSONObject(i6);
                jSONArray = jSONArray3;
                java.lang.String strOptString = jSONObject.optString(str5, str3);
                str = str5;
                java.lang.String strOptString2 = jSONObject.optString("cid", str3);
                i5 = versionCode;
                str2 = str3;
                if (str4.equals(jSONObject.optString("account", str3) + "#" + strOptString2 + "#" + strOptString)) {
                    a(context, configInfo, jSONObject.getJSONArray("nodes"));
                    z4 = true;
                    break;
                } else {
                    i6++;
                    jSONArray3 = jSONArray;
                    str5 = str;
                    versionCode = i5;
                    str3 = str2;
                }
            }
            if (z4) {
                jSONArray2 = jSONArray;
            } else {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put("account", userId);
                jSONObject2.put("clientid", configInfo.getClientId());
                jSONObject2.put("cid", schoolId);
                jSONObject2.put("ostype", 4);
                jSONObject2.put(str, i5);
                org.json.JSONArray jSONArray4 = new org.json.JSONArray();
                a(context, configInfo, jSONArray4);
                jSONObject2.put("nodes", jSONArray4);
                jSONArray2 = jSONArray;
                jSONArray2.put(jSONObject2);
            }
            if (!android.text.TextUtils.isEmpty(userId) && jSONArray2.length() > 0) {
                int i7 = 0;
                while (i7 < jSONArray2.length()) {
                    org.json.JSONObject jSONObject3 = jSONArray2.getJSONObject(i7);
                    java.lang.String str6 = str2;
                    if (android.text.TextUtils.isEmpty(jSONObject3.optString("account", str6))) {
                        jSONObject3.put("account", userId);
                    }
                    i7++;
                    str2 = str6;
                }
            }
            java.lang.String string = jSONArray2.toString();
            com.cndatacom.sdk.portal.util.ExLogUtil.d("uploadRoutingdelay->" + string);
            configInfo.putPrivateConfig("LocalRoutingdelayKey", string);
            configInfo.save();
            c(context, configInfo, funcfgUrl, jSONArray2);
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startOneTimeWorkDelayed(getInstance(), java.lang.Long.parseLong(configInfo.getFuncfgAtt("RouteCollectUploadURL", "frequency", "600")) * 1000);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }
}
