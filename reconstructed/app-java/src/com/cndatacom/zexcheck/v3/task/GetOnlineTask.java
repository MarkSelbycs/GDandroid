package com.cndatacom.zexcheck.v3.task;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class GetOnlineTask {
    public static java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> getOnlineClientInfo(com.cndatacom.zexcheck.v3.entity.ExCheckInfo exCheckInfo) {
        try {
            java.lang.String getUrl = exCheckInfo.getGetUrl();
            java.lang.String gateway = exCheckInfo.getNetInfo().getGateway();
            java.lang.String schoolId = exCheckInfo.getSchoolId();
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "application/json");
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            jSONObject.put("gwip", gateway);
            jSONObject.put("schoolid", schoolId);
            jSONObject.put("timestamp", jCurrentTimeMillis);
            jSONObject.put("sign", com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("9vApxLk5G3PAsJrM".getBytes("utf-8"), "FnJL7EDzjqWjcaY9".getBytes("utf-8"), (gateway + schoolId + jCurrentTimeMillis).getBytes("utf-8"))));
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("ExCheckManager GetOnlineTask postObject->");
            sb.append(jSONObject.toString());
            com.cndatacom.sdk.portal.util.ExLogUtil.i(sb.toString());
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(getUrl, arrayMap, jSONObject.toString().getBytes());
            if (resultPost.isSuccessful()) {
                java.lang.String dataString = resultPost.getDataString();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager GetOnlineTask getOnlineClientInfo->" + dataString);
                if (android.text.TextUtils.isEmpty(dataString)) {
                    return null;
                }
                org.json.JSONObject jSONObject2 = new org.json.JSONObject(dataString);
                if (jSONObject2.optInt("code", -1) == 0) {
                    java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> concurrentHashMap = new java.util.concurrent.ConcurrentHashMap<>();
                    org.json.JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("data");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                        for (int i5 = 0; i5 < jSONArrayOptJSONArray.length(); i5++) {
                            org.json.JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i5);
                            com.cndatacom.zexcheck.v3.entity.OnlineClientInfo onlineClientInfo = new com.cndatacom.zexcheck.v3.entity.OnlineClientInfo();
                            java.lang.String strOptString = jSONObject3.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, "");
                            java.lang.String strOptString2 = jSONObject3.optString("ipv4", "");
                            java.lang.String strOptString3 = jSONObject3.optString("ipv6", "");
                            onlineClientInfo.setTicket(strOptString);
                            if (exCheckInfo.isIpv4()) {
                                onlineClientInfo.setIp(strOptString2);
                            } else {
                                if (strOptString3.indexOf("%") != -1) {
                                    strOptString3 = strOptString3.substring(0, strOptString3.indexOf("%"));
                                }
                                onlineClientInfo.setIp(java.net.InetAddress.getByName(strOptString3).getHostAddress());
                            }
                            onlineClientInfo.setRecvUdp(false);
                            onlineClientInfo.setUdpPort(exCheckInfo.getUdpPort());
                            concurrentHashMap.put(onlineClientInfo.getIp(), onlineClientInfo);
                        }
                    }
                    if (exCheckInfo.isIpv4()) {
                        concurrentHashMap.remove(exCheckInfo.getNetInfo().getIpv4());
                    } else {
                        concurrentHashMap.remove(exCheckInfo.getNetInfo().getIpv6());
                    }
                    return concurrentHashMap;
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return null;
    }
}
