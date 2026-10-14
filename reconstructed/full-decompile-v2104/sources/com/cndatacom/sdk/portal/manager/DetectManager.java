package com.cndatacom.sdk.portal.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DetectManager {
    public static boolean CURRENT_IP_TYPE = true;
    private static java.lang.String TAG = "index.cgi";
    private static volatile com.cndatacom.sdk.portal.manager.DetectManager _DetectManager = null;
    private static volatile java.lang.String mLastFileCom = "";
    private volatile java.lang.String mCurDetectUrl;
    private volatile java.util.TreeMap<java.lang.Integer, java.lang.String> mUrls = new java.util.TreeMap<>();
    private volatile java.util.TreeMap<java.lang.Integer, java.lang.Double> mWeights = new java.util.TreeMap<>();
    private volatile java.util.TreeMap<java.lang.Double, java.lang.Integer> mPercentages = new java.util.TreeMap<>();

    private DetectManager() {
        this.mCurDetectUrl = "";
        readDetectUrlData(true);
        this.mCurDetectUrl = readCurDetectUr();
    }

    public static boolean containsTag(java.lang.String str) {
        if (str.contains(TAG) && CURRENT_IP_TYPE != getIpType(str)) {
            CURRENT_IP_TYPE = getIpType(str);
            getInstance().readDetectUrlData(false);
            getInstance().mCurDetectUrl = getInstance().readCurDetectUr();
        }
        return str.contains(TAG);
    }

    public static com.cndatacom.sdk.portal.manager.DetectManager getInstance() {
        synchronized (com.cndatacom.sdk.portal.manager.DetectManager.class) {
            if (_DetectManager == null) {
                _DetectManager = new com.cndatacom.sdk.portal.manager.DetectManager();
            }
        }
        return _DetectManager;
    }

    public static boolean getIpType(java.lang.String str) {
        try {
            return java.net.InetAddress.getByName(android.net.Uri.parse(str).getHost()) instanceof java.net.Inet4Address;
        } catch (java.net.UnknownHostException e5) {
            e5.printStackTrace();
            return false;
        }
    }

    private java.lang.String readCurDetectUr() {
        if (this.mUrls != null && !this.mUrls.isEmpty()) {
            this.mPercentages.clear();
            java.util.Iterator<java.lang.Integer> it = this.mWeights.keySet().iterator();
            double dDoubleValue = 0.0d;
            double dDoubleValue2 = 0.0d;
            while (it.hasNext()) {
                dDoubleValue2 += this.mWeights.get(java.lang.Integer.valueOf(it.next().intValue())).doubleValue();
            }
            java.util.Iterator<java.lang.Integer> it2 = this.mWeights.keySet().iterator();
            while (it2.hasNext()) {
                int iIntValue = it2.next().intValue();
                dDoubleValue += (this.mWeights.get(java.lang.Integer.valueOf(iIntValue)).doubleValue() / dDoubleValue2) * Double.MAX_VALUE;
                this.mPercentages.put(java.lang.Double.valueOf(dDoubleValue), java.lang.Integer.valueOf(iIntValue));
            }
            java.util.NavigableMap<java.lang.Double, java.lang.Integer> navigableMapTailMap = this.mPercentages.tailMap(java.lang.Double.valueOf(new java.util.Random().nextDouble() * Double.MAX_VALUE), true);
            if (navigableMapTailMap != null && !navigableMapTailMap.isEmpty()) {
                return this.mUrls.get(java.lang.Integer.valueOf(this.mPercentages.get(java.lang.Double.valueOf(navigableMapTailMap.firstKey().doubleValue())).intValue()));
            }
        }
        return "";
    }

    private void readDetectUrlData(boolean z4) {
        java.lang.String privateConfig;
        try {
            if (z4) {
                privateConfig = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_DATA, "");
                if (android.text.TextUtils.isEmpty(privateConfig)) {
                    java.lang.String[] strArr = com.cndatacom.sdk.portal.BuildConfig.DEF_DETECT;
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    try {
                        org.json.JSONArray jSONArray = new org.json.JSONArray();
                        org.json.JSONArray jSONArray2 = new org.json.JSONArray();
                        for (java.lang.String str : strArr) {
                            jSONArray.put(str);
                            jSONArray2.put(1);
                        }
                        jSONObject.put("detect", jSONArray);
                        jSONObject.put("weight", jSONArray2);
                        privateConfig = jSONObject.toString();
                    } catch (java.lang.Exception e5) {
                        e5.printStackTrace();
                    }
                }
                mLastFileCom = privateConfig;
            } else {
                privateConfig = mLastFileCom;
            }
            if (android.text.TextUtils.isEmpty(privateConfig)) {
                return;
            }
            org.json.JSONObject jSONObject2 = new org.json.JSONObject(privateConfig);
            org.json.JSONArray jSONArray3 = jSONObject2.getJSONArray("detect");
            org.json.JSONArray jSONArray4 = jSONObject2.getJSONArray("weight");
            int length = jSONArray3.length();
            int length2 = jSONArray4.length();
            if (length2 >= length) {
                for (int i5 = 0; i5 < length; i5++) {
                    if (getIpType(jSONArray3.getString(i5)) == CURRENT_IP_TYPE) {
                        this.mWeights.put(java.lang.Integer.valueOf(i5), java.lang.Double.valueOf(java.lang.Double.parseDouble(jSONArray4.getString(i5))));
                    }
                }
            } else {
                for (int i6 = 0; i6 < length2; i6++) {
                    if (getIpType(jSONArray3.getString(i6)) == CURRENT_IP_TYPE) {
                        this.mWeights.put(java.lang.Integer.valueOf(i6), java.lang.Double.valueOf(java.lang.Double.parseDouble("1")));
                    }
                }
            }
            for (int i7 = 0; i7 < length; i7++) {
                if (getIpType(jSONArray3.getString(i7)) == CURRENT_IP_TYPE) {
                    this.mUrls.put(java.lang.Integer.valueOf(i7), jSONArray3.getString(i7));
                }
            }
        } catch (java.lang.Exception e6) {
            e6.printStackTrace();
        }
    }

    public static void setTAG(java.lang.String str) {
        TAG = str;
    }

    public java.lang.String getDetectUrl() {
        return this.mCurDetectUrl;
    }

    public boolean hasDetectUrl() {
        return (this.mUrls == null || this.mUrls.isEmpty()) ? false : true;
    }

    public void removeDetectUrl() {
        int iIntValue;
        if (this.mUrls == null || this.mUrls.isEmpty()) {
            return;
        }
        java.util.Iterator<java.lang.Integer> it = this.mUrls.keySet().iterator();
        do {
            if (!it.hasNext()) {
                iIntValue = -1;
                break;
            } else {
                iIntValue = it.next().intValue();
            }
        } while (!this.mCurDetectUrl.equals(this.mUrls.get(java.lang.Integer.valueOf(iIntValue))));
        if (iIntValue != -1) {
            this.mUrls.remove(java.lang.Integer.valueOf(iIntValue));
            this.mWeights.remove(java.lang.Integer.valueOf(iIntValue));
        }
        this.mCurDetectUrl = readCurDetectUr();
    }

    public java.lang.String replaceDetectUrl(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            return str2;
        }
        int iIndexOf = str2.indexOf(TAG);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        sb.append(str.endsWith("/") ? "" : "/");
        sb.append(str2.substring(iIndexOf));
        return sb.toString();
    }

    public void resetLastLocalDetectUrlData() {
        this.mUrls.clear();
        this.mWeights.clear();
        this.mPercentages.clear();
        readDetectUrlData(false);
        this.mCurDetectUrl = readCurDetectUr();
    }

    public void saveDetectUrlData(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, org.json.JSONObject jSONObject) {
        if (jSONObject.optString("enable", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS)) {
            return;
        }
        try {
            java.lang.String strOptString = jSONObject.optString("url", "");
            java.lang.String strOptString2 = jSONObject.optString("weight", "");
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            int i5 = 0;
            if (!android.text.TextUtils.isEmpty(strOptString)) {
                for (java.lang.String str : strOptString.split(",")) {
                    jSONArray.put(str);
                }
            }
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            if (android.text.TextUtils.isEmpty(strOptString2)) {
                while (i5 < jSONArray.length()) {
                    jSONArray2.put(1);
                    i5++;
                }
            } else {
                java.lang.String[] strArrSplit = strOptString2.split(",");
                while (i5 < strArrSplit.length) {
                    jSONArray2.put(strArrSplit[i5]);
                    i5++;
                }
            }
            jSONObject2.put("detect", jSONArray);
            jSONObject2.put("weight", jSONArray2);
            configInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.DETECT_DATA, jSONObject2.toString());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void useIndexDetectUrlData() {
        mLastFileCom = "";
        this.mUrls.clear();
        this.mWeights.clear();
        this.mPercentages.clear();
        readDetectUrlData(true);
        this.mCurDetectUrl = readCurDetectUr();
    }
}
