package com.cndatacom.sdk.portal.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class KeepUserAgentWorker {
    private static final java.lang.String INDEX_KEY = "SystemIdentificationURL";
    private static final java.lang.String LOCAL_CUR_DATA_KEY = "LocalCurUserAgentKey";
    private static final java.lang.String LOCAL_DATA_KEY = "LocalUserAgentKey";

    public static java.lang.String getCurUserAgentData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        return configInfo.getPrivateConfig(LOCAL_CUR_DATA_KEY, "");
    }

    public static void getKeepUserAgent(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        try {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl(INDEX_KEY, null);
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("getKeepUserAgent url is null");
                return;
            }
            java.lang.String schoolId = configInfo.getSchoolId("");
            int versionCode = com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context);
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("clientid", configInfo.getClientId());
            arrayMap.put("cid", schoolId);
            arrayMap.put("ostype", "4");
            arrayMap.put("versions", versionCode + "");
            com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient().get(funcfgUrl, new android.util.ArrayMap<>(), arrayMap);
            if (!result.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("getKeepUserAgent httpcode ->" + result.getHttpCode());
                return;
            }
            java.lang.String dataString = result.getDataString();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("getKeepUserAgent httpcode ->" + dataString);
            org.json.JSONObject jSONObject = new org.json.JSONObject(dataString);
            if (jSONObject.optInt("code", -1) == 0 && jSONObject.has("data") && jSONObject.optJSONObject("data") != null) {
                org.json.JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                java.lang.String strOptString = jSONObjectOptJSONObject.optString("clientTag", "");
                java.lang.String strOptString2 = jSONObjectOptJSONObject.optString("validTime", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                byte[] bytes = "9vApxLk5G3PAsJrM".getBytes("utf-8");
                byte[] bytes2 = "FnJL7EDzjqWjcaY9".getBytes("utf-8");
                jSONObject2.put("clientTag", new java.lang.String(com.cndatacom.sdk.portal.util.CryptoUtil.des3DecodeCBC(bytes, bytes2, com.cndatacom.sdk.portal.util.CryptoUtil.hexToByteArray(strOptString))));
                long j5 = toLong(new java.lang.String(com.cndatacom.sdk.portal.util.CryptoUtil.des3DecodeCBC(bytes, bytes2, com.cndatacom.sdk.portal.util.CryptoUtil.hexToByteArray(strOptString2))), 0);
                jSONObject2.put("validTime", j5);
                jSONObject2.put("validTimeText", com.cndatacom.sdk.portal.util.DateUtil.parseTimeToYMDHMSString(j5));
                com.cndatacom.sdk.portal.util.ExLogUtil.d("getKeepUserAgent ->" + jSONObject2.toString());
                configInfo.putPrivateConfig(LOCAL_DATA_KEY, jSONObject2.toString());
                configInfo.save();
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public static void loadCurUserAgentData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        try {
            java.lang.String privateConfig = configInfo.getPrivateConfig(LOCAL_DATA_KEY, "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                org.json.JSONObject jSONObject = new org.json.JSONObject(privateConfig);
                if (jSONObject.optLong("validTime", 0L) > new java.util.Date().getTime()) {
                    configInfo.putPrivateConfig(LOCAL_CUR_DATA_KEY, jSONObject.optString("clientTag", ""));
                    configInfo.save();
                    return;
                }
            }
            configInfo.putPrivateConfig(LOCAL_CUR_DATA_KEY, "");
            configInfo.putPrivateConfig(LOCAL_DATA_KEY, "");
            configInfo.save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private static long toLong(java.lang.String str, int i5) {
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.NumberFormatException unused) {
            return i5;
        }
    }
}
