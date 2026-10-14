package com.cndatacom.campus.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class InterfaceInfoWorker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static com.cndatacom.campus.work.InterfaceInfoWorker f3617e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3618a = "InterfaceInfoUploadURL";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3619b = java.util.UUID.randomUUID().toString();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3620c = "LocalInterfaceInfoKey";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f3621d = "LocalUploadInterfaceInfoKey";

    private InterfaceInfoWorker() {
    }

    public static com.cndatacom.campus.work.InterfaceInfoWorker getInstance() {
        if (f3617e == null) {
            f3617e = new com.cndatacom.campus.work.InterfaceInfoWorker();
        }
        return f3617e;
    }

    public void collection(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, long j5, long j6, int i5) {
        try {
            if (android.text.TextUtils.isEmpty(configInfo.getFuncfgUrl("InterfaceInfoUploadURL", null))) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadInterfaceInfo url is null");
                return;
            }
            android.net.Uri uri = android.net.Uri.parse(str);
            java.lang.String path = uri.getPath();
            if (str.contains("/")) {
                path = path.substring(path.indexOf("/") + 1);
            }
            java.lang.String host = uri.getHost();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            java.lang.String privateConfig = configInfo.getPrivateConfig("LocalInterfaceInfoKey", "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                jSONObject = new org.json.JSONObject(privateConfig);
            }
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            long jMax = java.lang.Math.max(j6 - j5, 0L);
            java.lang.String str2 = host + "#" + path;
            jSONObject2.put("interface", path);
            jSONObject2.put("host", host);
            jSONObject2.put("duration", jMax);
            jSONObject2.put("key", str2);
            jSONObject2.put("status", i5);
            jSONObject2.put("time", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
            java.lang.String schoolId = configInfo.getSchoolId("");
            int versionCode = com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context);
            java.lang.String userId = configInfo.getUserId();
            java.lang.String str3 = this.f3619b + userId;
            jSONObject2.put("account", userId);
            jSONObject2.put("clientid", configInfo.getClientId());
            jSONObject2.put("cid", schoolId);
            jSONObject2.put("version", versionCode);
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            if (jSONObject.has(str3)) {
                jSONObject3 = jSONObject.getJSONObject(str3);
            }
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            if (jSONObject3.has(str2)) {
                jSONArray = jSONObject3.getJSONArray(str2);
            }
            jSONArray.put(jSONObject2);
            jSONObject3.put(str2, jSONArray);
            jSONObject.put(str3, jSONObject3);
            java.lang.String string = jSONObject.toString();
            com.cndatacom.sdk.portal.util.ExLogUtil.d("uploadInterfaceInfo->" + string);
            configInfo.putPrivateConfig("LocalInterfaceInfoKey", string);
            configInfo.save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void release(android.content.Context context) {
        f3617e = null;
    }

    public void uploadInterfaceInfo(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String str;
        org.json.JSONArray jSONArray;
        org.json.JSONObject jSONObject;
        java.lang.String str2 = "LocalInterfaceInfoKey";
        java.lang.String str3 = "LocalUploadInterfaceInfoKey";
        try {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl("InterfaceInfoUploadURL", null);
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadInterfaceInfo url is null");
                return;
            }
            java.lang.String str4 = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date());
            if (str4.equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "LocalUploadInterfaceInfoKey", "none"))) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadInterfaceInfo has done");
                return;
            }
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            java.lang.String privateConfig = configInfo.getPrivateConfig("LocalInterfaceInfoKey", "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                jSONObject2 = new org.json.JSONObject(privateConfig);
            }
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            java.util.Iterator<java.lang.String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                org.json.JSONObject jSONObject3 = jSONObject2.getJSONObject(itKeys.next());
                if (jSONObject3 != null) {
                    org.json.JSONObject jSONObject4 = new org.json.JSONObject();
                    org.json.JSONArray jSONArray3 = new org.json.JSONArray();
                    java.util.Iterator<java.lang.String> itKeys2 = jSONObject3.keys();
                    java.lang.String strOptString = "";
                    java.lang.String strOptString2 = strOptString;
                    java.lang.String strOptString3 = strOptString2;
                    java.lang.String strOptString4 = strOptString3;
                    java.lang.String strOptString5 = strOptString4;
                    java.lang.String strOptString6 = strOptString5;
                    while (true) {
                        jSONObject2 = jSONObject2;
                        itKeys = itKeys;
                        if (!itKeys2.hasNext()) {
                            break;
                        }
                        itKeys2 = itKeys2;
                        java.lang.String next = itKeys2.next();
                        str2 = str2;
                        org.json.JSONObject jSONObject5 = new org.json.JSONObject();
                        org.json.JSONArray jSONArray4 = jSONObject3.getJSONArray(next);
                        if (jSONArray4 != null) {
                            java.lang.String str5 = str3;
                            java.lang.String strOptString7 = "";
                            java.lang.String strOptString8 = strOptString7;
                            java.lang.String str6 = str4;
                            org.json.JSONObject jSONObject6 = jSONObject3;
                            int i5 = 0;
                            int i6 = 0;
                            int i7 = 0;
                            int iOptInt = 0;
                            while (true) {
                                str = funcfgUrl;
                                jSONArray = jSONArray2;
                                jSONObject = jSONObject4;
                                if (i7 >= jSONArray4.length()) {
                                    break;
                                }
                                org.json.JSONObject jSONObject7 = jSONArray4.getJSONObject(i7);
                                strOptString6 = jSONObject7.optString("time", "");
                                if (android.text.TextUtils.isEmpty(strOptString4)) {
                                    strOptString4 = jSONObject7.optString("version", "");
                                }
                                if (android.text.TextUtils.isEmpty(strOptString3)) {
                                    strOptString3 = jSONObject7.optString("cid", "");
                                }
                                if (android.text.TextUtils.isEmpty(strOptString2)) {
                                    strOptString2 = jSONObject7.optString("clientid", "");
                                }
                                if (android.text.TextUtils.isEmpty(strOptString)) {
                                    strOptString = jSONObject7.optString("account", "");
                                    if (android.text.TextUtils.isEmpty(strOptString)) {
                                        strOptString = configInfo.getUserId();
                                    }
                                }
                                if (android.text.TextUtils.isEmpty(strOptString5)) {
                                    strOptString5 = jSONObject7.optString("time", "");
                                }
                                if (android.text.TextUtils.isEmpty(strOptString7)) {
                                    strOptString7 = jSONObject7.optString("interface", "");
                                }
                                if (android.text.TextUtils.isEmpty(strOptString8)) {
                                    strOptString8 = jSONObject7.optString("host", "");
                                }
                                if (jSONObject7.optInt("status", -1) == 0) {
                                    i5++;
                                    iOptInt += jSONObject7.optInt("duration", 0);
                                } else {
                                    i6++;
                                }
                                i7++;
                                funcfgUrl = str;
                                jSONArray2 = jSONArray;
                                jSONObject4 = jSONObject;
                            }
                            jSONObject5.put("interface", strOptString7);
                            jSONObject5.put("times", i5);
                            jSONObject5.put("duration", i5 <= 0 ? 0 : iOptInt / i5);
                            jSONObject5.put("timeouts", i6);
                            jSONObject5.put("host", strOptString8);
                            jSONArray3.put(jSONObject5);
                            jSONObject3 = jSONObject6;
                            str3 = str5;
                            str4 = str6;
                            funcfgUrl = str;
                            jSONArray2 = jSONArray;
                            jSONObject4 = jSONObject;
                        }
                    }
                    org.json.JSONArray jSONArray5 = jSONArray2;
                    org.json.JSONObject jSONObject8 = jSONObject4;
                    jSONObject8.put("dials", jSONArray3);
                    jSONObject8.put("account", strOptString);
                    jSONObject8.put("clientid", strOptString2);
                    jSONObject8.put("cid", strOptString3);
                    jSONObject8.put("ostype", 4);
                    jSONObject8.put("version", strOptString4);
                    jSONObject8.put("stattime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
                    jSONObject8.put("starttime", strOptString5);
                    jSONObject8.put("stoptime", strOptString6);
                    jSONArray5.put(jSONObject8);
                    jSONArray2 = jSONArray5;
                    str2 = str2;
                    jSONObject2 = jSONObject2;
                    itKeys = itKeys;
                    str3 = str3;
                    str4 = str4;
                    funcfgUrl = funcfgUrl;
                }
            }
            java.lang.String str7 = str2;
            java.lang.String str8 = str3;
            java.lang.String str9 = str4;
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(funcfgUrl, arrayMap, jSONArray2.toString().getBytes());
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadInterfaceInfo httpcode ->" + resultPost.getHttpCode());
                return;
            }
            com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, str8, str9);
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadInterfaceInfo httpcode ->" + resultPost.getDataString());
            configInfo.putPrivateConfig(str7, "");
            configInfo.save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }
}
