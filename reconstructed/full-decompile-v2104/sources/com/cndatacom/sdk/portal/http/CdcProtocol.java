package com.cndatacom.sdk.portal.http;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CdcProtocol {
    public static final int DETECTED_CAMPUS = 200;
    public static final int DETECTED_JUMP = 201;
    public static final int DETECTED_JUMP_INDEX = 202;

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult auth(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        java.lang.String config = configInfo.getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_AUTH_URL, "");
        if (android.text.TextUtils.isEmpty(config)) {
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            return returnUIResult;
        }
        java.lang.String domainUserId = getDomainUserId(str, configInfo);
        com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest cdcRequest = new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo);
        cdcRequest.addTicket().addItem("userid", domainUserId).addItem("passwd", str2);
        if (!android.text.TextUtils.isEmpty(str3)) {
            cdcRequest.addItem("verify", str3);
        }
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo, 30000, 30000).post(config, cdcRequest.toBytes());
        if (resultPost.isSuccessful()) {
            return parseAuthXml(context, configInfo, resultPost.getDataString());
        }
        if (!com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH.equals(resultPost.getCdcCode()) && !com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_SERVER_AUTH.equals(resultPost.getCdcCode())) {
            return com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(resultPost);
        }
        returnUIResult.setErrorCode(resultPost.getCdcCode());
        return returnUIResult;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult authOtherClient(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return authOtherClient(context, configInfo, configInfo.getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_AUTH_URL, ""), str, str2, str3);
    }

    public static boolean checkVerifyCode(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("QueryVerificateCodeStatus", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            return false;
        }
        try {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            java.lang.String upperCase = com.cndatacom.sdk.portal.util.FileUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.FileUtil.md5((str2 + jCurrentTimeMillis + "Eshore!@#").getBytes())).toUpperCase(java.util.Locale.US);
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("schoolid", "" + str2);
            jSONObject.put("username", "" + str);
            jSONObject.put("timestamp", "" + jCurrentTimeMillis);
            jSONObject.put("authenticator", "" + upperCase);
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(funcfgUrl, arrayMap, jSONObject.toString().getBytes());
            if (resultPost.isSuccessful()) {
                java.lang.String dataString = resultPost.getDataString();
                if (!android.text.TextUtils.isEmpty(dataString)) {
                    java.lang.String strOptString = new org.json.JSONObject(dataString).optString("rescode", "");
                    if (!android.text.TextUtils.isEmpty(strOptString) && strOptString.equals("11062000")) {
                        return true;
                    }
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return false;
    }

    public static int detect(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, boolean z4, boolean z5) {
        java.lang.String[] strArr = com.cndatacom.sdk.portal.BuildConfig.DETECT_URLS;
        int i5 = -1;
        int i6 = 0;
        while (i6 < strArr.length) {
            java.lang.String privateConfig = strArr[i6];
            if (android.text.TextUtils.isEmpty(privateConfig)) {
                privateConfig = configInfo.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_REDIRECT_URL, "");
                com.cndatacom.sdk.portal.util.ExLogUtil.i("detect redirectUrl->" + privateConfig);
                if (android.text.TextUtils.isEmpty(privateConfig)) {
                    privateConfig = com.cndatacom.sdk.portal.BuildConfig.DETECT_URL;
                }
            }
            java.lang.String str = privateConfig;
            com.cndatacom.sdk.portal.util.ExLogUtil.i("detect->" + str);
            com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultDetectConfig = detectConfig(context, configInfo, str, z4, z5, i6 == 0);
            java.lang.String errorCode = returnUIResultDetectConfig.getErrorCode();
            if (com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED.equals(errorCode)) {
                return 200;
            }
            if ("201".equals(errorCode)) {
                return DETECTED_JUMP;
            }
            if ("202".equals(errorCode)) {
                configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_URL, "");
                return java.lang.Integer.parseInt(returnUIResultDetectConfig.getSubErrorCode());
            }
            i5 = java.lang.Integer.parseInt(errorCode);
            i6++;
        }
        return i5;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult detectConfig(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, boolean z4, boolean z5) {
        return detectConfig(context, configInfo, str, -1, -1, z4, z5);
    }

    public static com.cndatacom.sdk.portal.entity.ADInfo getAdvData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        org.json.JSONArray jSONArray;
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("NewSplashAndDialogAD", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("NewSplashAndDialogAD url is null");
            return null;
        }
        android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
        arrayMap.put("ostype", "4");
        arrayMap.put("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
        arrayMap.put("dialupaccount", configInfo.getUserId());
        arrayMap.put("cid", configInfo.getSchoolId());
        arrayMap.put("clientid", configInfo.getClientId());
        arrayMap.put("key", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        arrayMap.put("adtype", "1");
        com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient().get(funcfgUrl, null, arrayMap);
        java.lang.String dataString = result.getDataString();
        if (result.isSuccessful()) {
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject(dataString);
                if (jSONObject.optInt("status", -1) == 0 && jSONObject.has("data") && (jSONArray = jSONObject.getJSONArray("data")) != null && jSONArray.length() > 0) {
                    org.json.JSONObject jSONObject2 = jSONArray.getJSONObject(0);
                    com.cndatacom.sdk.portal.entity.ADInfo aDInfo = new com.cndatacom.sdk.portal.entity.ADInfo();
                    aDInfo.setHref(jSONObject2.optString("href", ""));
                    aDInfo.setUrl(jSONObject2.optString("src", ""));
                    aDInfo.setType(jSONObject.optInt("type", 0));
                    aDInfo.setAdid(jSONObject.optString("adid", ""));
                    return aDInfo;
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        } else {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("getAdvUrl result ->" + dataString);
        }
        return null;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult getDaMod(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
        com.cndatacom.sdk.portal.http.CdcHttpClient cdcHttpClient = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo);
        com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest cdcRequest = new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo);
        java.lang.String str2 = android.os.Build.MODEL;
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result daMod = cdcHttpClient.getDaMod(str, cdcRequest.addItem("host-name", str2).addNetInfo().addItem("ostag", str2).addItem("gwip", netInfo.getGateway()).toBytes());
        if (!com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED.equals(daMod.getCdcCode())) {
            return com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(daMod);
        }
        returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        return returnUIResult;
    }

    private static java.lang.String getDomainUserId(java.lang.String str, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.Object obj;
        try {
            java.lang.String config = configInfo.getConfig("account", "");
            if (android.text.TextUtils.isEmpty(config)) {
                return str;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject(config);
            if (!jSONObject.has("modify") || (obj = jSONObject.get("modify")) == null) {
                return str;
            }
            if (obj instanceof org.json.JSONObject) {
                return handleModify(str, (org.json.JSONObject) obj);
            }
            if (!(obj instanceof org.json.JSONArray)) {
                return str;
            }
            org.json.JSONArray jSONArray = (org.json.JSONArray) obj;
            for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                org.json.JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i5);
                if (jSONObjectOptJSONObject != null) {
                    str = handleModify(str, jSONObjectOptJSONObject);
                }
            }
            return str;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return str;
        }
    }

    public static void getSchoolInfo(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String schoolId = configInfo.getSchoolId();
        java.lang.String dateToYMDString = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDString(new java.util.Date());
        java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "EXPIRED_KEY", "");
        if (android.text.TextUtils.isEmpty(schoolId) || (!android.text.TextUtils.isEmpty(string) && dateToYMDString.compareTo(string) > 0)) {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl("SchoolInfoURL", "");
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("getSchoolInfo url is null");
                return;
            }
            try {
                com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
                android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
                arrayMap.put("ostype", "4");
                arrayMap.put("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
                arrayMap.put("account", configInfo.getUserId());
                arrayMap.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, configInfo.getTicket());
                arrayMap.put("gateway", netInfo.getGateway());
                arrayMap.put("ipv4", netInfo.getIpv4());
                arrayMap.put("ipv6", netInfo.getIpv6());
                com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient().get(funcfgUrl, null, arrayMap);
                if (result.isSuccessful()) {
                    org.json.JSONObject jSONObject = new org.json.JSONObject(result.getDataString());
                    if (jSONObject.optInt("code", -1) == 0) {
                        java.lang.String strOptString = jSONObject.optString("schoolid", "");
                        java.lang.String strOptString2 = jSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_DOMAIN, "");
                        java.lang.String strOptString3 = jSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_AREA, "");
                        configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_SCHOOL_ID, strOptString);
                        configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_AREA, strOptString3);
                        configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_DOMAIN, strOptString2);
                        configInfo.save();
                        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "EXPIRED_KEY", jSONObject.optString("expired", ""));
                    }
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                com.cndatacom.sdk.portal.util.ExLogUtil.e("getSchoolInfo error ->" + e5.getMessage());
            }
        }
    }

    public static boolean getVerifyCode(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("QueryAuthCode", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            return false;
        }
        try {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            java.lang.String upperCase = com.cndatacom.sdk.portal.util.FileUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.FileUtil.md5((str2 + jCurrentTimeMillis + "Eshore!@#").getBytes())).toUpperCase(java.util.Locale.US);
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("schoolid", "" + str2);
            jSONObject.put("username", "" + str);
            jSONObject.put("timestamp", "" + jCurrentTimeMillis);
            jSONObject.put("authenticator", "" + upperCase);
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(funcfgUrl, arrayMap, jSONObject.toString().getBytes());
            if (resultPost.isSuccessful()) {
                java.lang.String dataString = resultPost.getDataString();
                if (!android.text.TextUtils.isEmpty(dataString)) {
                    java.lang.String strOptString = new org.json.JSONObject(dataString).optString("rescode", "");
                    if (!android.text.TextUtils.isEmpty(strOptString) && strOptString.equals(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS)) {
                        return true;
                    }
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return false;
    }

    private static java.lang.String handleModify(java.lang.String str, org.json.JSONObject jSONObject) {
        if (jSONObject == null) {
            return str;
        }
        java.lang.String strOptString = jSONObject.optString("type");
        java.lang.String strOptString2 = jSONObject.optString("value");
        if (android.text.TextUtils.isEmpty(strOptString2)) {
            strOptString2 = null;
        } else if (!strOptString2.startsWith("@")) {
            strOptString2 = "@" + strOptString2;
        }
        if ("del-domain".equals(strOptString)) {
            return (strOptString2 == null || str.endsWith(strOptString2)) ? android.text.TextUtils.split(str, "@")[0] : str;
        }
        if (strOptString2 == null) {
            return str;
        }
        return android.text.TextUtils.split(str, "@")[0] + strOptString2;
    }

    private static void handleQueryData(org.json.JSONArray jSONArray, org.json.JSONObject jSONObject, java.lang.String str) throws org.json.JSONException {
        if (jSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, "").equals(str)) {
            jSONObject.put("isSelf", "1");
        } else {
            jSONObject.put("isSelf", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        }
        jSONArray.put(jSONObject);
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult keep(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        return keep(context, configInfo, null);
    }

    public static org.json.JSONObject onCheckUpdate(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            java.lang.String funcfgUrl = configInfo.getFuncfgUrl(com.cndatacom.sdk.portal.entity.ConfigKey.UPDATE_URL, "");
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                jSONObject.put("errorCode", com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            } else {
                android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
                arrayMap.put("areaCode", "zs");
                arrayMap.put("osType", "androidphone");
                arrayMap.put("dialType", com.cndatacom.sdk.portal.entity.CdcErrCode.UNSUPPORT_CLIENT);
                arrayMap.put("verno", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
                arrayMap.put("CID", configInfo.getSchoolId());
                arrayMap.put("account", configInfo.getUserId());
                com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient().get(funcfgUrl, null, arrayMap);
                if (result.isSuccessful()) {
                    java.lang.String strTrim = result.getDataString().replaceAll("&amp;", "&").replaceAll("&", "&amp;").trim();
                    jSONObject.put("errorCode", 0);
                    org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                    parseUpdateXml(strTrim.getBytes(), jSONObject2);
                    jSONObject.put("data", jSONObject2);
                } else {
                    jSONObject.put("errorCode", com.cndatacom.sdk.portal.entity.CdcErrCode.getErrorCode(result.getHttpCode()));
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return jSONObject;
    }

    public static org.json.JSONObject onQueryClient(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            java.lang.String config = configInfo.getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.QUERY_URL, "");
            if (android.text.TextUtils.isEmpty(config)) {
                jSONObject.put("errorCode", com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            } else {
                com.cndatacom.sdk.portal.http.CdcHttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo).post(config, new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo).toBytes());
                if (resultPost.isSuccessful()) {
                    jSONObject.put("clients", parseQueryXml(resultPost.getDataString(), configInfo.getTicket()));
                }
                com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultMakeUiErrorCode = com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(resultPost);
                jSONObject.put("errorCode", returnUIResultMakeUiErrorCode.getErrorCode());
                jSONObject.put("subErrCode", returnUIResultMakeUiErrorCode.getSubErrorCode());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return jSONObject;
    }

    private static com.cndatacom.sdk.portal.entity.ReturnUIResult parseAuthXml(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        org.json.JSONObject jsonFromXml = parseJsonFromXml(str);
        if (jsonFromXml.length() <= 0) {
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.PARSER_ERROR);
            return returnUIResult;
        }
        org.json.JSONObject jSONObjectOptJSONObject = jsonFromXml.optJSONObject("response");
        java.util.Iterator<java.lang.String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            java.lang.String next = itKeys.next();
            java.lang.String strOptString = jSONObjectOptJSONObject.optString(next, "");
            next.hashCode();
            if (!next.equals("userid")) {
                configInfo.putPrivateConfig(next, strOptString);
            } else if (!android.text.TextUtils.isEmpty(strOptString)) {
                if (strOptString.contains("@")) {
                    strOptString = android.text.TextUtils.split(strOptString, "@")[0];
                }
                configInfo.setUserId(strOptString);
            }
        }
        returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        return returnUIResult;
    }

    private static void parseDetectXml(java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> concurrentHashMap, java.lang.String str, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        try {
            org.json.JSONObject jsonFromXml = parseJsonFromXml(str.substring(str.indexOf("<config>") + 8, str.lastIndexOf("</config>")).trim().replaceAll("&amp;", "&").replaceAll("&", "&amp;").trim());
            if (jsonFromXml.length() > 0) {
                java.util.Iterator<java.lang.String> itKeys = jsonFromXml.keys();
                while (itKeys.hasNext()) {
                    java.lang.String next = itKeys.next();
                    byte b5 = -1;
                    if (next.hashCode() == -1263366523 && next.equals("funcfg")) {
                        b5 = 0;
                    }
                    if (b5 != 0) {
                        concurrentHashMap.put(next, jsonFromXml.optString(next).replaceAll("&amp;", "&"));
                    } else {
                        parseFunData(configInfo, jsonFromXml.getJSONObject(next), concurrentHashMap);
                    }
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    private static void parseFunData(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, org.json.JSONObject jSONObject, java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> concurrentHashMap) {
        java.util.Iterator<java.lang.String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            java.lang.String next = itKeys.next();
            next.hashCode();
            if (next.equals("Detect")) {
                com.cndatacom.sdk.portal.manager.DetectManager.getInstance().saveDetectUrlData(configInfo, jSONObject.optJSONObject(next));
            } else {
                concurrentHashMap.put("FUN_" + next, jSONObject.optString(next).replaceAll("&amp;", "&"));
            }
        }
    }

    private static org.json.JSONObject parseJsonFromXml(java.lang.String str) {
        try {
            return new org.json.JSONObject(f2.p.h(str).toString());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return new org.json.JSONObject();
        }
    }

    private static com.cndatacom.sdk.portal.entity.ReturnUIResult parseKeepXml(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        org.json.JSONObject jsonFromXml = parseJsonFromXml(str);
        if (jsonFromXml.length() <= 0) {
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.PARSER_ERROR);
            return returnUIResult;
        }
        org.json.JSONObject jSONObjectOptJSONObject = jsonFromXml.optJSONObject("response");
        java.util.Iterator<java.lang.String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            java.lang.String next = itKeys.next();
            java.lang.String strOptString = jSONObjectOptJSONObject.optString(next, "");
            next.hashCode();
            if (next.equals("interval")) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("interval => ", strOptString);
                if (!android.text.TextUtils.isEmpty(strOptString)) {
                    configInfo.setKeepExpire(strOptString);
                }
            } else {
                configInfo.putPrivateConfig(next, strOptString);
            }
        }
        returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        return returnUIResult;
    }

    private static org.json.JSONArray parseQueryXml(java.lang.String str, java.lang.String str2) {
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        try {
            org.json.JSONObject jsonFromXml = parseJsonFromXml(str);
            if (jsonFromXml.length() > 0) {
                org.json.JSONObject jSONObjectOptJSONObject = jsonFromXml.optJSONObject("response");
                if (jSONObjectOptJSONObject.has("client")) {
                    java.lang.Object obj = jSONObjectOptJSONObject.get("client");
                    if (obj instanceof org.json.JSONObject) {
                        handleQueryData(jSONArray, (org.json.JSONObject) obj, str2);
                    } else if (obj instanceof org.json.JSONArray) {
                        org.json.JSONArray jSONArray2 = (org.json.JSONArray) obj;
                        for (int i5 = 0; i5 < jSONArray2.length(); i5++) {
                            handleQueryData(jSONArray, jSONArray2.getJSONObject(i5), str2);
                        }
                    }
                }
            }
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("parseQueryXml exception: ", e5.getMessage());
        }
        return jSONArray;
    }

    private static void parseUpdateXml(byte[] bArr, org.json.JSONObject jSONObject) {
        try {
            org.xmlpull.v1.XmlPullParser xmlPullParserNewPullParser = android.util.Xml.newPullParser();
            xmlPullParserNewPullParser.setInput(new java.io.ByteArrayInputStream(bArr), "UTF-8");
            while (true) {
                int eventType = xmlPullParserNewPullParser.getEventType();
                if (eventType == 1) {
                    return;
                }
                java.lang.String name = xmlPullParserNewPullParser.getName();
                if (eventType == 2) {
                    byte b5 = -1;
                    int iHashCode = name.hashCode();
                    if (iHashCode != 111052) {
                        if (iHashCode != 111972721) {
                            if (iHashCode == 1611057593 && name.equals("Mandatory")) {
                                b5 = 1;
                            }
                        } else if (name.equals("value")) {
                            b5 = 0;
                        }
                    } else if (name.equals("pkg")) {
                        b5 = 2;
                    }
                    if (b5 == 0 || b5 == 1) {
                        jSONObject.put(name, xmlPullParserNewPullParser.nextText());
                    } else if (b5 == 2) {
                        org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i5 = 0; i5 < attributeCount; i5++) {
                            jSONObject2.put(xmlPullParserNewPullParser.getAttributeName(i5), xmlPullParserNewPullParser.getAttributeValue(i5).replaceAll("&amp;", "&"));
                        }
                        jSONObject.put(name, jSONObject2);
                    }
                }
                xmlPullParserNewPullParser.next();
            }
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("parseUpdateXml exception: ", e5.getMessage());
        }
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult state(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        java.lang.String config = configInfo.getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_STATE_URL, "");
        if (android.text.TextUtils.isEmpty(config)) {
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            return returnUIResult;
        }
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo).post(config, new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo).addTicket().toBytes());
        return resultPost.isSuccessful() ? parseAuthXml(context, configInfo, resultPost.getDataString()) : com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(resultPost);
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult term(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultTerm = term(context, configInfo, configInfo.getTicket(), str);
        if (returnUIResultTerm.isSuccess()) {
            configInfo.setTicket("").setExpire(new java.util.Date().getTime() + "", 0L);
        }
        return returnUIResultTerm;
    }

    public static org.json.JSONObject termOtherClient(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str) {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultTerm = term(context, configInfo, str, com.cndatacom.sdk.portal.entity.CdcErrCode.TERM_REASON_MANAGE);
            jSONObject.put("errorCode", returnUIResultTerm.getErrorCode());
            jSONObject.put("subErrCode", returnUIResultTerm.getSubErrorCode());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return jSONObject;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult ticket(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        java.lang.String config = configInfo.getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_TICKET_URL, "");
        if (android.text.TextUtils.isEmpty(config)) {
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            return returnUIResult;
        }
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
        com.cndatacom.sdk.portal.http.CdcHttpClient cdcHttpClient = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo);
        com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest cdcRequest = new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo);
        java.lang.String str = android.os.Build.MODEL;
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result resultPost = cdcHttpClient.post(config, cdcRequest.addItem("host-name", str).addNetInfo().addItem("ostag", str).addItem("gwip", netInfo.getGateway()).toBytes());
        if (!resultPost.isSuccessful()) {
            return com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(resultPost);
        }
        org.json.JSONObject jsonFromXml = parseJsonFromXml(resultPost.getDataString());
        if (jsonFromXml.length() > 0) {
            org.json.JSONObject jSONObjectOptJSONObject = jsonFromXml.optJSONObject("response");
            java.lang.String strOptString = jSONObjectOptJSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, "");
            com.cndatacom.sdk.portal.util.ExLogUtil.i("ticket => ", strOptString);
            java.lang.String strOptString2 = jSONObjectOptJSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_EXPIRE, "");
            com.cndatacom.sdk.portal.util.ExLogUtil.i("expire => ", strOptString2);
            if (!android.text.TextUtils.isEmpty(strOptString) && !android.text.TextUtils.isEmpty(strOptString2)) {
                configInfo.setTicket(strOptString).setExpire(strOptString2, 300L);
                returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
                return returnUIResult;
            }
        }
        returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.PARSER_ERROR);
        return returnUIResult;
    }

    public static void uploadLog(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("SubErrorData", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadLog url is null");
            return;
        }
        java.lang.String str = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date());
        if (str.equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "isUpload", "none"))) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadLog has done");
            return;
        }
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
        android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
        arrayMap.put("ErrType", "android");
        arrayMap.put("ErrCode", "10000");
        arrayMap.put("Account", configInfo.getUserId());
        arrayMap.put("IPAddr", configInfo.getIpType().booleanValue() ? netInfo.getIpv4() : netInfo.getIpv6());
        arrayMap.put("CID", configInfo.getSchoolId("361"));
        arrayMap.put("ClientID", configInfo.getClientId());
        arrayMap.put("Version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
        java.io.File file = new java.io.File(com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(context, com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_LOGCAT));
        java.io.File[] fileArrListFiles = file.listFiles();
        for (int i5 = 0; i5 < fileArrListFiles.length; i5++) {
            java.io.File file2 = fileArrListFiles[i5];
            if (file2.isFile() && file2.getName().endsWith(".zip")) {
                file2.getAbsoluteFile().delete();
            }
        }
        java.lang.String str2 = file.getPath() + java.io.File.separator;
        java.lang.String str3 = str2 + ("CDCLogs_" + com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date()) + ".zip");
        java.io.File file3 = new java.io.File(str3);
        if (file3.exists()) {
            file3.getAbsoluteFile().delete();
        }
        if (!com.cndatacom.sdk.portal.util.FileUtil.toZip(str2, str3)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadLog files to zip is error");
            return;
        }
        com.cndatacom.sdk.portal.http.HttpClient.Result resultUploadFile = new com.cndatacom.sdk.portal.http.HttpClient().uploadFile(funcfgUrl, null, arrayMap, file3);
        if (!resultUploadFile.isSuccessful()) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadLog files error ->" + resultUploadFile.getDataString());
            return;
        }
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "isUpload", str);
        java.io.File file4 = new java.io.File(str3);
        if (file4.exists()) {
            file4.getAbsoluteFile().delete();
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadLog files success ->" + resultUploadFile.getDataString());
    }

    public static void uploadModuleLog(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("SubErrorData", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadModuleLog url is null");
            return;
        }
        java.lang.String str = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date());
        if (str.equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "isUploadModuleLog", "none"))) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadModuleLog has done");
            return;
        }
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
        android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
        arrayMap.put("ErrType", "android");
        arrayMap.put("ErrCode", "10087");
        arrayMap.put("Account", configInfo.getUserId());
        arrayMap.put("IPAddr", configInfo.getIpType().booleanValue() ? netInfo.getIpv4() : netInfo.getIpv6());
        arrayMap.put("CID", configInfo.getSchoolId("361"));
        arrayMap.put("ClientID", configInfo.getClientId());
        arrayMap.put("Version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
        java.io.File file = new java.io.File(com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(context, com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_MODULE_LOGCAT));
        java.io.File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles.length == 0) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadModuleLog no log file");
            return;
        }
        for (java.io.File file2 : fileArrListFiles) {
            if (file2.isFile() && file2.getName().endsWith(".zip")) {
                file2.getAbsoluteFile().delete();
            }
        }
        java.lang.String str2 = file.getPath() + java.io.File.separator;
        java.lang.String str3 = str2 + ("CDCLogs_" + com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date()) + ".zip");
        java.io.File file3 = new java.io.File(str3);
        if (file3.exists()) {
            file3.getAbsoluteFile().delete();
        }
        if (!com.cndatacom.sdk.portal.util.FileUtil.toZip(str2, str3)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadModuleLog files to zip is error");
            return;
        }
        com.cndatacom.sdk.portal.http.HttpClient.Result resultUploadFile = new com.cndatacom.sdk.portal.http.HttpClient().uploadFile(funcfgUrl, null, arrayMap, file3);
        if (!resultUploadFile.isSuccessful()) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadModuleLog files error ->" + resultUploadFile.getDataString());
            return;
        }
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "isUploadModuleLog", str);
        java.io.File file4 = new java.io.File(str3);
        if (file4.exists()) {
            file4.getAbsoluteFile().delete();
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadModuleLog files success ->" + resultUploadFile.getDataString());
    }

    public static void uploadPhoneMarketingData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        int i5;
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("PhoneMarketingData", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadPhoneMarketingData url is null");
            return;
        }
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
        android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
        java.lang.String schoolId = configInfo.getSchoolId("361");
        arrayMap.put("Account", configInfo.getUserId());
        arrayMap.put("UpdateTime", new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.CHINA).format(new java.util.Date()));
        arrayMap.put("IsFirstTime", "1");
        arrayMap.put("Versions", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
        arrayMap.put("Language", "2052_936");
        arrayMap.put("DialUptype", com.cndatacom.sdk.portal.entity.CdcErrCode.UNSUPPORT_CLIENT);
        java.lang.String ipv4 = netInfo.getIpv4();
        java.lang.String ipv6 = netInfo.getIpv6();
        java.lang.String mac = netInfo.getMac();
        if (android.text.TextUtils.isEmpty(ipv4) || android.text.TextUtils.isEmpty(ipv6)) {
            i5 = !android.text.TextUtils.isEmpty(ipv6) ? 2 : 1;
        } else {
            i5 = 3;
        }
        arrayMap.put("IPv6", i5 + "");
        arrayMap.put("ClientID", configInfo.getClientId());
        arrayMap.put("WifiMac", mac);
        arrayMap.put("IP", ipv4);
        arrayMap.put("CID", schoolId);
        arrayMap.put("areaCode", "zs");
        arrayMap.put("osType", "android" + android.os.Build.VERSION.RELEASE);
        com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient().get(funcfgUrl, null, arrayMap);
        if (result == null || !result.isSuccessful()) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadPhoneMarketingData httpcode ->" + result.getHttpCode());
            return;
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadPhoneMarketingData httpcode ->" + result.getHttpCode());
    }

    public static void uploadSSIDData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("PostSSID", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadSSIDData url is null");
            return;
        }
        if (new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA).format(new java.util.Date()).equals(com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "isUploadSSIDData", "none"))) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadSSIDData has done");
            return;
        }
        java.lang.String ticket = configInfo.getTicket();
        java.lang.String schoolId = configInfo.getSchoolId();
        try {
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("account", configInfo.getUserId());
            jSONObject.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, ticket);
            jSONObject.put("clientid", configInfo.getClientId());
            jSONObject.put("ostype", "2");
            jSONObject.put("mac", netInfo.getMac());
            jSONObject.put("ssid", netInfo.getSsid());
            jSONObject.put("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context));
            jSONObject.put("cid", schoolId);
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(funcfgUrl, com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeECB(jSONObject.toString().getBytes("utf-8")).getBytes());
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadSSIDData httpcode ->" + resultPost.getHttpCode());
            } else {
                resultPost.getDataString();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadSSIDData httpcode ->" + resultPost.getHttpCode());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadSSIDData error ->" + e5.getMessage());
        }
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult detectConfig(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, int i5, int i6, boolean z4, boolean z5) {
        return detectConfig(context, configInfo, str, i5, i6, z4, z5, false);
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult keep(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        try {
            java.lang.String privateConfig = configInfo.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_KEEP_URL, "");
            if (android.text.TextUtils.isEmpty(privateConfig)) {
                returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
                return returnUIResult;
            }
            com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest cdcRequest = new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo);
            if (arrayMap != null && arrayMap.size() > 0) {
                for (java.lang.String str : arrayMap.keySet()) {
                    cdcRequest.addItem(str, arrayMap.get(str));
                }
            }
            com.cndatacom.sdk.portal.http.CdcHttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo).post(privateConfig, cdcRequest.addTicket().addNetInfo().toBytes());
            return resultPost.isSuccessful() ? parseKeepXml(context, configInfo, resultPost.getDataString()) : com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(resultPost);
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("keep exception: ", e5.getMessage());
            return returnUIResult;
        }
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult authOtherClient(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        if (android.text.TextUtils.isEmpty(str)) {
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            return returnUIResult;
        }
        if (!android.text.TextUtils.isEmpty(str2) && !android.text.TextUtils.isEmpty(str3)) {
            java.lang.String domainUserId = getDomainUserId(str2, configInfo);
            com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest cdcRequest = new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo);
            cdcRequest.addItem("userid", domainUserId).addItem("passwd", str3).addItem(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, str4);
            return com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo).post(str, cdcRequest.toBytes()));
        }
        returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.makePortalErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.INVALID_USRPWD));
        return returnUIResult;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult detectConfig(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, boolean z4, boolean z5, boolean z6) {
        return detectConfig(context, configInfo, str, -1, -1, z4, z5, z6);
    }

    public static class CdcRequest {
        public com.cndatacom.sdk.portal.entity.ConfigInfo configInfo;
        private java.lang.StringBuilder sb;
        private java.lang.String xml = null;

        public CdcRequest() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(1024);
            this.sb = sb;
            sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?><request>");
        }

        private void end() {
            if (this.xml == null) {
                java.lang.StringBuilder sb = this.sb;
                sb.append("</request>");
                this.xml = sb.toString();
            }
        }

        public com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest addItem(java.lang.String str, java.lang.String str2) {
            java.lang.StringBuilder sb = this.sb;
            sb.append('<');
            sb.append(str);
            sb.append('>');
            sb.append(str2);
            sb.append("</");
            sb.append(str);
            sb.append('>');
            return this;
        }

        public com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest addNetInfo() {
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = this.configInfo.getNetInfo();
            return addItem("ipv4", netInfo.getIpv4()).addItem("ipv6", netInfo.getIpv6()).addItem("mac", netInfo.getMac());
        }

        public com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest addTicket() {
            return addItem(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, this.configInfo.getTicket());
        }

        public byte[] toBytes() {
            end();
            try {
                return this.xml.getBytes("UTF-8");
            } catch (java.lang.Exception e5) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("CdcRequest.toBytes Exception: ", e5.getMessage());
                return "".getBytes();
            }
        }

        public java.lang.String toString() {
            end();
            return this.xml;
        }

        public CdcRequest(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(1024);
            this.sb = sb;
            this.configInfo = configInfo;
            sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?><request>");
            addItem("user-agent", configInfo.getUserAgent(false));
            addItem("client-id", configInfo.getClientId());
            addItem("local-time", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
        }
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult detectConfig(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, int i5, int i6, boolean z4, boolean z5, boolean z6) throws java.lang.Throwable {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo, i5, i6).get(str, z6, z4);
        if (z6) {
            java.lang.String redirectUrl = indexResult.getRedirectUrl();
            if (!android.text.TextUtils.isEmpty(redirectUrl)) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("save redirectUrl->" + redirectUrl);
                configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_REDIRECT_URL, redirectUrl);
            }
        }
        if (indexResult.isHttpOk()) {
            java.lang.String dataString = indexResult.getDataString();
            int iIndexOf = dataString.indexOf(com.cndatacom.sdk.portal.BuildConfig.PORTAL_START_TAG);
            if (iIndexOf < 0) {
                returnUIResult.setErrorCode("201");
                return returnUIResult;
            }
            int i7 = iIndexOf + 39;
            int iLastIndexOf = dataString.lastIndexOf(com.cndatacom.sdk.portal.BuildConfig.PORTAL_END_TAG);
            if (iLastIndexOf < 0) {
                returnUIResult.setErrorCode("201");
                return returnUIResult;
            }
            java.lang.String strTrim = dataString.substring(i7, iLastIndexOf).trim();
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> concurrentHashMap = new java.util.concurrent.ConcurrentHashMap<>();
            if (indexResult.isHasIndexPage()) {
                java.lang.String finalUrl = indexResult.getFinalUrl();
                if (!android.text.TextUtils.isEmpty(finalUrl)) {
                    configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_URL, finalUrl);
                }
            }
            parseDetectXml(concurrentHashMap, strTrim, configInfo);
            configInfo.setConfigObject(concurrentHashMap);
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED);
            return returnUIResult;
        }
        if (indexResult.isHasIndexPage() && z5) {
            returnUIResult.setErrorCode("202");
            returnUIResult.setSubErrorCode(indexResult.getHttpCode() + "");
            return returnUIResult;
        }
        if (!indexResult.isHasIndexPage() && !android.text.TextUtils.isEmpty(indexResult.getFinalUrl()) && !indexResult.getFinalUrl().contains("detect.html") && 400 <= indexResult.getHttpCode() && indexResult.getHttpCode() <= 600) {
            returnUIResult.setErrorCode("201");
            return returnUIResult;
        }
        returnUIResult.setErrorCode(indexResult.getHttpCode() + "");
        return returnUIResult;
    }

    public static com.cndatacom.sdk.portal.entity.ReturnUIResult term(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
        com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest cdcRequest = new com.cndatacom.sdk.portal.http.CdcProtocol.CdcRequest(configInfo);
        cdcRequest.addItem(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, str2).addItem("reason", str3);
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.CdcHttpClient(configInfo).post(str, cdcRequest.toBytes());
        if (!resultPost.getCdcCode().equals(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS) && !com.cndatacom.sdk.portal.entity.CdcErrCode.INVALID_TICKET.equals(resultPost.getCdcCode())) {
            return com.cndatacom.sdk.portal.entity.CdcErrCode.makeUiErrorCode(resultPost);
        }
        returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        return returnUIResult;
    }

    private static com.cndatacom.sdk.portal.entity.ReturnUIResult term(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2) {
        java.lang.String privateConfig = configInfo.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TERM_URL, "");
        if (android.text.TextUtils.isEmpty(privateConfig)) {
            com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult();
            returnUIResult.setErrorCode(com.cndatacom.sdk.portal.entity.CdcErrCode.CONFIG_URL_ERROR);
            return returnUIResult;
        }
        return term(context, configInfo, privateConfig, str, str2);
    }
}
