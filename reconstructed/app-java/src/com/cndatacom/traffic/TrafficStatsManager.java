package com.cndatacom.traffic;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TrafficStatsManager {
    private static final java.lang.String KEY_TERM_TIME = "Key_Term_Time";
    private static final java.lang.String KEY_TRAFFIC = "Key_TrafficStats";
    private static com.cndatacom.traffic.TrafficStatsManager _TrafficStatsManager;
    private com.cndatacom.sdk.portal.work.WorkerInfo mUpdateWorkerInfo;
    private com.cndatacom.sdk.portal.work.WorkerInfo mUploadWorkerInfo;
    private long mLastUp = -1;
    private long mLastDown = -1;
    private int mMaxCount = 3;
    private int mCurCount = 0;

    private TrafficStatsManager() {
    }

    private boolean clienthotspotinfo(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, org.json.JSONArray jSONArray, android.location.Location location, java.lang.String str2) {
        boolean z4;
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
            jSONObject.put("nearbyhotspots", jSONArray);
            if (location != null) {
                jSONObject.put("longitude", location.getLongitude());
                jSONObject.put("latitude", location.getLatitude());
            } else {
                jSONObject.put("longitude", 0);
                jSONObject.put("latitude", 0);
            }
            if (!android.text.TextUtils.isEmpty(str2)) {
                jSONObject.put("token", com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("xfokM0h3GcRAqRZT".getBytes("utf-8"), "aLX32gHbG3fBxNpQ".getBytes("utf-8"), str2.getBytes("utf-8"))));
            }
            jSONObject.put("starttime", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            jSONArray2.put(jSONObject);
            java.lang.String strByteArrayToHex = com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("9vApxLk5G3PAsJrM".getBytes("utf-8"), "FnJL7EDzjqWjcaY9".getBytes("utf-8"), jSONArray2.toString().getBytes("utf-8")));
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "text/plain;charset=utf-8");
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(str, arrayMap, strByteArrayToHex.getBytes("utf-8"));
            if (resultPost == null || !resultPost.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("handleTrafficStatsData httpcode ->" + resultPost.getHttpCode());
                return false;
            }
            if (android.text.TextUtils.isEmpty(str2)) {
                z4 = true;
            } else {
                int iOptInt = new org.json.JSONObject(resultPost.getDataString()).optInt("code", -1);
                z4 = iOptInt == 0;
                try {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("handleTrafficStatsData code ->" + iOptInt);
                } catch (java.lang.Exception e5) {
                    e = e5;
                    e.printStackTrace();
                    com.cndatacom.sdk.portal.util.ExLogUtil.e("clienthotspotinfo error ->" + e.getMessage());
                }
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleTrafficStatsData httpcode ->" + resultPost.getHttpCode());
            return z4;
        } catch (java.lang.Exception e6) {
            e = e6;
            z4 = false;
        }
    }

    public static com.cndatacom.traffic.TrafficStatsManager getInstance() {
        if (_TrafficStatsManager == null) {
            _TrafficStatsManager = new com.cndatacom.traffic.TrafficStatsManager();
        }
        return _TrafficStatsManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x0177 A[Catch: Exception -> 0x0086, TRY_LEAVE, TryCatch #1 {Exception -> 0x0086, blocks: (B:9:0x0042, B:14:0x007f, B:22:0x009a, B:25:0x0110, B:33:0x0146, B:37:0x0150, B:39:0x0177, B:47:0x01e9, B:53:0x0207, B:55:0x0218, B:57:0x0235, B:54:0x0214, B:48:0x01f7, B:30:0x011c, B:20:0x008f, B:21:0x0095), top: B:77:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:44:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:46:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:48:0x01f7 A[Catch: Exception -> 0x0086, TRY_LEAVE, TryCatch #1 {Exception -> 0x0086, blocks: (B:9:0x0042, B:14:0x007f, B:22:0x009a, B:25:0x0110, B:33:0x0146, B:37:0x0150, B:39:0x0177, B:47:0x01e9, B:53:0x0207, B:55:0x0218, B:57:0x0235, B:54:0x0214, B:48:0x01f7, B:30:0x011c, B:20:0x008f, B:21:0x0095), top: B:77:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0201 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0203  */
    /* JADX WARN: Code duplicated, block: B:54:0x0214 A[Catch: Exception -> 0x0086, TryCatch #1 {Exception -> 0x0086, blocks: (B:9:0x0042, B:14:0x007f, B:22:0x009a, B:25:0x0110, B:33:0x0146, B:37:0x0150, B:39:0x0177, B:47:0x01e9, B:53:0x0207, B:55:0x0218, B:57:0x0235, B:54:0x0214, B:48:0x01f7, B:30:0x011c, B:20:0x008f, B:21:0x0095), top: B:77:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0235 A[Catch: Exception -> 0x0086, TRY_LEAVE, TryCatch #1 {Exception -> 0x0086, blocks: (B:9:0x0042, B:14:0x007f, B:22:0x009a, B:25:0x0110, B:33:0x0146, B:37:0x0150, B:39:0x0177, B:47:0x01e9, B:53:0x0207, B:55:0x0218, B:57:0x0235, B:54:0x0214, B:48:0x01f7, B:30:0x011c, B:20:0x008f, B:21:0x0095), top: B:77:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0275 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:61:0x0276  */
    /* JADX WARN: Code duplicated, block: B:63:0x027f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0285 A[Catch: Exception -> 0x02c4, TryCatch #2 {Exception -> 0x02c4, blocks: (B:62:0x027b, B:65:0x0285, B:66:0x02a6), top: B:80:0x0233 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x02a6 A[Catch: Exception -> 0x02c4, TRY_LEAVE, TryCatch #2 {Exception -> 0x02c4, blocks: (B:62:0x027b, B:65:0x0285, B:66:0x02a6), top: B:80:0x0233 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x0177, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:57:0x0235, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x0285, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:66:0x02a6, please report this as an issue */
    public void handleTrafficStatsData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, int i5) {
        java.lang.String str;
        boolean z4;
        java.lang.String str2;
        int i6;
        try {
            java.lang.String privateConfig = configInfo.getPrivateConfig(KEY_TRAFFIC, "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                org.json.JSONObject jSONObject = new org.json.JSONObject(privateConfig);
                if (jSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, "").equals(configInfo.getTicket())) {
                    try {
                        if (i5 == -1) {
                            java.lang.String funcfgAtt = configInfo.getFuncfgAtt("StatsInfor", "interval", "");
                            long jCurrentTimeMillis = java.lang.System.currentTimeMillis() / 1000;
                            str = KEY_TRAFFIC;
                            configInfo.putCacheConfig(KEY_TERM_TIME, jCurrentTimeMillis + "");
                            long jOptLong = jSONObject.optLong("time", 0L) / 1000;
                            long j5 = jCurrentTimeMillis - jOptLong;
                            long j6 = java.lang.Long.parseLong(funcfgAtt);
                            if (jOptLong != 0 && j5 >= j6) {
                                jSONObject.put("stattype", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
                            }
                            return;
                        }
                        str = KEY_TRAFFIC;
                        if (i5 == 0) {
                            jSONObject.put("stattype", "2");
                        } else {
                            jSONObject.put("stattype", "1");
                        }
                        jSONObject.put("stop", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
                        long totalTxBytes = android.net.TrafficStats.getTotalTxBytes();
                        long mobileTxBytes = android.net.TrafficStats.getMobileTxBytes();
                        jSONObject.put("stop_totalTxBytes", totalTxBytes);
                        jSONObject.put("stop_mobileTxBytes", mobileTxBytes);
                        long j7 = totalTxBytes - mobileTxBytes;
                        jSONObject.put("stop_up", j7);
                        long totalRxBytes = android.net.TrafficStats.getTotalRxBytes();
                        long mobileRxBytes = android.net.TrafficStats.getMobileRxBytes();
                        jSONObject.put("stop_totalRxBytes", totalRxBytes);
                        jSONObject.put("stop_mobileRxBytes", mobileRxBytes);
                        long j8 = totalRxBytes - mobileRxBytes;
                        jSONObject.put("stop_down", j8);
                        long jOptLong2 = j7 - jSONObject.optLong("start_up", 0L);
                        long jOptLong3 = j8 - jSONObject.optLong("start_down", 0L);
                        int i7 = com.cndatacom.sdk.portal.util.CdcUtil.toInt(configInfo.getFuncfgAtt("StatsInfor", "upThreshold", com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED), 200);
                        int i8 = com.cndatacom.sdk.portal.util.CdcUtil.toInt(configInfo.getFuncfgAtt("StatsInfor", "downThreshold", com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED), 200);
                        if (jOptLong2 <= 0 || jOptLong2 / 1024 < i7) {
                            com.cndatacom.sdk.portal.util.ExLogUtil.m(com.cndatacom.sdk.portal.constant.ResourceConstants.MODULE_TRAFFIC, "up=" + jOptLong2 + "->" + jSONObject.toString());
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        try {
                            if (jOptLong3 > 0) {
                                str2 = "start_down";
                                if (jOptLong3 / 1024 < i8) {
                                }
                                if (z4) {
                                    org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                                    jSONObject2.put("os_tag", android.os.Build.MODEL);
                                    jSONObject2.put("sdk_int", android.os.Build.VERSION.SDK_INT);
                                    jSONObject2.put("sdk_name", android.os.Build.VERSION.RELEASE);
                                    jSONObject2.put("app_version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionName(context));
                                    jSONObject2.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_NET_INFO, new com.cndatacom.sdk.portal.entity.NetInfo(context, false).toString());
                                    jSONObject2.put("networkInterfaces", com.cndatacom.sdk.portal.util.CommandUtil.exec("ip address"));
                                    com.cndatacom.sdk.portal.util.ExLogUtil.m(com.cndatacom.sdk.portal.constant.ResourceConstants.MODULE_TRAFFIC, "other->" + jSONObject2.toString());
                                }
                                if (jOptLong2 > 0) {
                                    i6 = i5;
                                    if (i6 != 2) {
                                        jSONObject.put("up", jOptLong2 + jSONObject.optLong("up", 0L));
                                        jSONObject.put("upState", 1);
                                    }
                                } else {
                                    i6 = i5;
                                    jSONObject.put("upState", -1);
                                }
                                if (jOptLong3 > 0) {
                                    jSONObject.put("downState", -1);
                                } else if (i6 != 2) {
                                    jSONObject.put("down", jOptLong3 + jSONObject.optLong("down", 0L));
                                    jSONObject.put("downState", 1);
                                }
                                jSONObject.put("start_up", j7);
                                jSONObject.put(str2, j8);
                                configInfo.putPrivateConfig(str, jSONObject.toString()).save();
                                if (i6 == -1) {
                                    com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  term --> " + jSONObject.toString());
                                    if ((java.lang.System.currentTimeMillis() / 1000) - (jSONObject.optLong("time", 0L) / 1000) < java.lang.Long.parseLong(configInfo.getFuncfgAtt("StatsInfor", "frequency", com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH))) {
                                        return;
                                    } else {
                                        uploadTrafficStatsData(context, configInfo, jSONObject, true);
                                    }
                                } else if (i6 == 0) {
                                    com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData time  upload --> " + jSONObject.toString());
                                    uploadTrafficStatsData(context, configInfo, jSONObject, false);
                                } else {
                                    com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  update --> " + jSONObject.toString());
                                }
                                return;
                            }
                            str2 = "start_down";
                            if (i6 == -1) {
                                com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  term --> " + jSONObject.toString());
                                if ((java.lang.System.currentTimeMillis() / 1000) - (jSONObject.optLong("time", 0L) / 1000) < java.lang.Long.parseLong(configInfo.getFuncfgAtt("StatsInfor", "frequency", com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH))) {
                                    return;
                                } else {
                                    uploadTrafficStatsData(context, configInfo, jSONObject, true);
                                }
                            } else if (i6 == 0) {
                                com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData time  upload --> " + jSONObject.toString());
                                uploadTrafficStatsData(context, configInfo, jSONObject, false);
                            } else {
                                com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  update --> " + jSONObject.toString());
                            }
                            return;
                        } catch (java.lang.Exception e5) {
                            e = e5;
                            e.printStackTrace();
                            return;
                        }
                        com.cndatacom.sdk.portal.util.ExLogUtil.m(com.cndatacom.sdk.portal.constant.ResourceConstants.MODULE_TRAFFIC, "down=" + jOptLong3 + "->" + jSONObject.toString());
                        z4 = true;
                        if (z4) {
                            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
                            jSONObject3.put("os_tag", android.os.Build.MODEL);
                            jSONObject3.put("sdk_int", android.os.Build.VERSION.SDK_INT);
                            jSONObject3.put("sdk_name", android.os.Build.VERSION.RELEASE);
                            jSONObject3.put("app_version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionName(context));
                            jSONObject3.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_NET_INFO, new com.cndatacom.sdk.portal.entity.NetInfo(context, false).toString());
                            jSONObject3.put("networkInterfaces", com.cndatacom.sdk.portal.util.CommandUtil.exec("ip address"));
                            com.cndatacom.sdk.portal.util.ExLogUtil.m(com.cndatacom.sdk.portal.constant.ResourceConstants.MODULE_TRAFFIC, "other->" + jSONObject3.toString());
                        }
                        if (jOptLong2 > 0) {
                            i6 = i5;
                            if (i6 != 2) {
                                jSONObject.put("up", jOptLong2 + jSONObject.optLong("up", 0L));
                                jSONObject.put("upState", 1);
                            }
                        } else {
                            i6 = i5;
                            jSONObject.put("upState", -1);
                        }
                        if (jOptLong3 > 0) {
                            jSONObject.put("downState", -1);
                        } else if (i6 != 2) {
                            jSONObject.put("down", jOptLong3 + jSONObject.optLong("down", 0L));
                            jSONObject.put("downState", 1);
                        }
                        jSONObject.put("start_up", j7);
                        jSONObject.put(str2, j8);
                        configInfo.putPrivateConfig(str, jSONObject.toString()).save();
                    } catch (java.lang.Exception e6) {
                        e = e6;
                    }
                }
            }
        } catch (java.lang.Exception e7) {
            e = e7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0067 A[Catch: Exception -> 0x0167, TryCatch #0 {Exception -> 0x0167, blocks: (B:3:0x0020, B:5:0x002a, B:7:0x0046, B:12:0x0055, B:13:0x005b, B:15:0x0067, B:16:0x008a, B:18:0x0144, B:21:0x015d, B:10:0x004f), top: B:26:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0144 A[Catch: Exception -> 0x0167, TryCatch #0 {Exception -> 0x0167, blocks: (B:3:0x0020, B:5:0x002a, B:7:0x0046, B:12:0x0055, B:13:0x005b, B:15:0x0067, B:16:0x008a, B:18:0x0144, B:21:0x015d, B:10:0x004f), top: B:26:0x0020 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x0067, please report this as an issue */
    private void uploadTrafficStatsData(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, org.json.JSONObject jSONObject, boolean z4) {
        long j5;
        org.json.JSONObject jSONObject2;
        java.lang.String funcfgUrl;
        boolean zClienthotspotinfo;
        try {
            if (android.text.TextUtils.isEmpty(jSONObject.optString("stop", ""))) {
                return;
            }
            long jOptLong = jSONObject.optLong("up", 0L);
            long jOptLong2 = jSONObject.optLong("down", 0L);
            if (jOptLong != this.mLastUp) {
                j5 = jOptLong;
                if (jOptLong2 != this.mLastDown) {
                    this.mCurCount = 0;
                }
                long j6 = j5;
                this.mLastUp = j6;
                this.mLastDown = jOptLong2;
                if (this.mCurCount == this.mMaxCount) {
                    this.mCurCount = 0;
                    com.cndatacom.sdk.portal.util.ExLogUtil.m(com.cndatacom.sdk.portal.constant.ResourceConstants.MODULE_TRAFFIC, "upload->" + jSONObject.toString());
                }
                jSONObject.put("up", j6 / 1024);
                jSONObject.put("down", jOptLong2 / 1024);
                jSONObject.put("timestamp", java.lang.System.currentTimeMillis() / 1000);
                jSONObject2 = new org.json.JSONObject();
                jSONObject2.put("account", jSONObject.optString("account", ""));
                jSONObject2.put("schoolid", jSONObject.optString("schoolid", ""));
                jSONObject2.put("ostype", "4");
                jSONObject2.put("ipv4", jSONObject.optString("ipv4", ""));
                jSONObject2.put("brasip", jSONObject.optString("brasip", ""));
                jSONObject2.put("start", jSONObject.optString("start", ""));
                jSONObject2.put("stop", jSONObject.optString("stop", ""));
                jSONObject2.put("up", jSONObject.optLong("up", 0L));
                jSONObject2.put("down", jSONObject.optLong("down", 0L));
                jSONObject2.put("stattype", jSONObject.optString("stattype", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS));
                jSONObject2.put("timestamp", jSONObject.optLong("timestamp", 0L));
                jSONObject2.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, jSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, ""));
                jSONObject2.put("mac", jSONObject.optString("mac", ""));
                com.cndatacom.sdk.portal.util.ExLogUtil.i("handleTrafficStatsData  upload -->", jSONObject2.toString());
                funcfgUrl = configInfo.getFuncfgUrl("StatsInfor", null);
                zClienthotspotinfo = clienthotspotinfo(context, configInfo, funcfgUrl, new org.json.JSONArray(), null, jSONObject2.toString());
                if (!zClienthotspotinfo) {
                    zClienthotspotinfo = clienthotspotinfo(context, configInfo, funcfgUrl, new org.json.JSONArray(), null, jSONObject2.toString());
                }
                if (zClienthotspotinfo || !z4) {
                }
                configInfo.removePrivateConfig(KEY_TRAFFIC).save();
                return;
            }
            j5 = jOptLong;
            this.mCurCount++;
            long j7 = j5;
            this.mLastUp = j7;
            this.mLastDown = jOptLong2;
            if (this.mCurCount == this.mMaxCount) {
                this.mCurCount = 0;
                com.cndatacom.sdk.portal.util.ExLogUtil.m(com.cndatacom.sdk.portal.constant.ResourceConstants.MODULE_TRAFFIC, "upload->" + jSONObject.toString());
            }
            jSONObject.put("up", j7 / 1024);
            jSONObject.put("down", jOptLong2 / 1024);
            jSONObject.put("timestamp", java.lang.System.currentTimeMillis() / 1000);
            jSONObject2 = new org.json.JSONObject();
            jSONObject2.put("account", jSONObject.optString("account", ""));
            jSONObject2.put("schoolid", jSONObject.optString("schoolid", ""));
            jSONObject2.put("ostype", "4");
            jSONObject2.put("ipv4", jSONObject.optString("ipv4", ""));
            jSONObject2.put("brasip", jSONObject.optString("brasip", ""));
            jSONObject2.put("start", jSONObject.optString("start", ""));
            jSONObject2.put("stop", jSONObject.optString("stop", ""));
            jSONObject2.put("up", jSONObject.optLong("up", 0L));
            jSONObject2.put("down", jSONObject.optLong("down", 0L));
            jSONObject2.put("stattype", jSONObject.optString("stattype", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS));
            jSONObject2.put("timestamp", jSONObject.optLong("timestamp", 0L));
            jSONObject2.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, jSONObject.optString(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, ""));
            jSONObject2.put("mac", jSONObject.optString("mac", ""));
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleTrafficStatsData  upload -->", jSONObject2.toString());
            funcfgUrl = configInfo.getFuncfgUrl("StatsInfor", null);
            zClienthotspotinfo = clienthotspotinfo(context, configInfo, funcfgUrl, new org.json.JSONArray(), null, jSONObject2.toString());
            if (!zClienthotspotinfo) {
                zClienthotspotinfo = clienthotspotinfo(context, configInfo, funcfgUrl, new org.json.JSONArray(), null, jSONObject2.toString());
            }
            if (zClienthotspotinfo) {
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void changeNet(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  changeNet --> ");
        if (this.mUpdateWorkerInfo != null) {
            if (com.cndatacom.sdk.portal.manager.WorkManager.getInstance().isTaskRunning(this.mUpdateWorkerInfo.getTaskId())) {
                com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mUpdateWorkerInfo.getTaskId());
                handleTrafficStatsData(context, com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), 1);
            }
            this.mUpdateWorkerInfo = null;
        }
        if (this.mUploadWorkerInfo != null) {
            if (com.cndatacom.sdk.portal.manager.WorkManager.getInstance().isTaskRunning(this.mUploadWorkerInfo.getTaskId())) {
                com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mUploadWorkerInfo.getTaskId());
            }
            this.mUploadWorkerInfo = null;
        }
    }

    public void release(android.content.Context context) {
        handleTrafficStatsData(context, com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), -1);
        com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  release --> ");
        if (this.mUpdateWorkerInfo != null) {
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mUpdateWorkerInfo.getTaskId());
        }
        if (this.mUploadWorkerInfo != null) {
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mUploadWorkerInfo.getTaskId());
        }
        _TrafficStatsManager = null;
    }

    public void start(final android.content.Context context, final com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, boolean z4) {
        long j5;
        com.cndatacom.sdk.portal.work.WorkerInfo workerInfo;
        if (android.text.TextUtils.isEmpty(configInfo.getFuncfgUrl("StatsInfor", null))) {
            return;
        }
        try {
            try {
                this.mLastUp = -1L;
                this.mLastDown = -1L;
                this.mCurCount = 0;
                this.mMaxCount = com.cndatacom.sdk.portal.util.CdcUtil.toInt(configInfo.getFuncfgAtt("StatsInfor", "maxCount", this.mMaxCount + ""), this.mMaxCount);
                if (z4) {
                    handleTrafficStatsData(context, configInfo, 1);
                    if (this.mUpdateWorkerInfo == null) {
                        java.lang.String funcfgAtt = configInfo.getFuncfgAtt("StatsInfor", "collecttime", com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH);
                        if (!android.text.TextUtils.isEmpty(funcfgAtt)) {
                            long j6 = java.lang.Long.parseLong(funcfgAtt);
                            this.mUpdateWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.1
                                @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                                public void runTask() {
                                    com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 1);
                                }
                            };
                            long j7 = j6 * 1000;
                            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j7, this.mUpdateWorkerInfo, j7);
                        }
                    }
                    if (this.mUploadWorkerInfo == null) {
                        java.lang.String funcfgAtt2 = configInfo.getFuncfgAtt("StatsInfor", "uploadtime", "600");
                        if (android.text.TextUtils.isEmpty(funcfgAtt2)) {
                            return;
                        }
                        long j8 = java.lang.Long.parseLong(funcfgAtt2);
                        this.mUploadWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.2
                            @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                            public void runTask() {
                                com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 0);
                            }
                        };
                        long j9 = j8 * 1000;
                        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j9, this.mUploadWorkerInfo, j9);
                        return;
                    }
                    return;
                }
                java.lang.String privateConfig = configInfo.getPrivateConfig(KEY_TRAFFIC, "");
                if (!android.text.TextUtils.isEmpty(privateConfig)) {
                    org.json.JSONObject jSONObject = new org.json.JSONObject(privateConfig);
                    jSONObject.put("loginTime", java.lang.System.currentTimeMillis() / 1000);
                    com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  oldLogin --> " + jSONObject.toString());
                    uploadTrafficStatsData(context, configInfo, jSONObject, true);
                }
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, configInfo.getTicket());
                jSONObject2.put("start", com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(new java.util.Date()));
                long totalTxBytes = android.net.TrafficStats.getTotalTxBytes();
                long mobileTxBytes = android.net.TrafficStats.getMobileTxBytes();
                jSONObject2.put("start_totalTxBytes", totalTxBytes);
                jSONObject2.put("start_mobileTxBytes", mobileTxBytes);
                jSONObject2.put("start_up", totalTxBytes - mobileTxBytes);
                long totalRxBytes = android.net.TrafficStats.getTotalRxBytes();
                long mobileRxBytes = android.net.TrafficStats.getMobileRxBytes();
                jSONObject2.put("start_totalRxBytes", totalRxBytes);
                jSONObject2.put("start_mobileRxBytes", mobileRxBytes);
                jSONObject2.put("start_down", totalRxBytes - mobileRxBytes);
                jSONObject2.put("up", 0);
                jSONObject2.put("down", 0);
                jSONObject2.put("account", configInfo.getUserId());
                jSONObject2.put("ipv4", configInfo.getNetInfo().getIpv4());
                jSONObject2.put("brasip", configInfo.getWlanacip());
                jSONObject2.put("schoolid", configInfo.getSchoolId(""));
                jSONObject2.put("ostype", "4");
                jSONObject2.put("stattype", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
                jSONObject2.put("time", java.lang.System.currentTimeMillis());
                com.cndatacom.sdk.portal.util.ExLogUtil.d("handleTrafficStatsData  save --> " + jSONObject2.toString());
                configInfo.putPrivateConfig(KEY_TRAFFIC, jSONObject2.toString()).save();
                if (this.mUpdateWorkerInfo == null) {
                    java.lang.String funcfgAtt3 = configInfo.getFuncfgAtt("StatsInfor", "collecttime", com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH);
                    if (!android.text.TextUtils.isEmpty(funcfgAtt3)) {
                        long j10 = java.lang.Long.parseLong(funcfgAtt3);
                        this.mUpdateWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.1
                            @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                            public void runTask() {
                                com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 1);
                            }
                        };
                        long j11 = j10 * 1000;
                        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j11, this.mUpdateWorkerInfo, j11);
                    }
                }
                if (this.mUploadWorkerInfo == null) {
                    java.lang.String funcfgAtt4 = configInfo.getFuncfgAtt("StatsInfor", "uploadtime", "600");
                    if (android.text.TextUtils.isEmpty(funcfgAtt4)) {
                        return;
                    }
                    j5 = java.lang.Long.parseLong(funcfgAtt4);
                    workerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.2
                        @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                        public void runTask() {
                            com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 0);
                        }
                    };
                    this.mUploadWorkerInfo = workerInfo;
                    long j12 = j5 * 1000;
                    com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j12, this.mUploadWorkerInfo, j12);
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                if (this.mUpdateWorkerInfo == null) {
                    java.lang.String funcfgAtt5 = configInfo.getFuncfgAtt("StatsInfor", "collecttime", com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH);
                    if (!android.text.TextUtils.isEmpty(funcfgAtt5)) {
                        long j13 = java.lang.Long.parseLong(funcfgAtt5);
                        this.mUpdateWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.1
                            @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                            public void runTask() {
                                com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 1);
                            }
                        };
                        long j14 = j13 * 1000;
                        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j14, this.mUpdateWorkerInfo, j14);
                    }
                }
                if (this.mUploadWorkerInfo != null) {
                    return;
                }
                java.lang.String funcfgAtt6 = configInfo.getFuncfgAtt("StatsInfor", "uploadtime", "600");
                if (android.text.TextUtils.isEmpty(funcfgAtt6)) {
                    return;
                }
                j5 = java.lang.Long.parseLong(funcfgAtt6);
                workerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.2
                    @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                    public void runTask() {
                        com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 0);
                    }
                };
            }
        } catch (java.lang.Throwable th) {
            if (this.mUpdateWorkerInfo == null) {
                java.lang.String funcfgAtt7 = configInfo.getFuncfgAtt("StatsInfor", "collecttime", com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH);
                if (!android.text.TextUtils.isEmpty(funcfgAtt7)) {
                    long j15 = java.lang.Long.parseLong(funcfgAtt7);
                    this.mUpdateWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.1
                        @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                        public void runTask() {
                            com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 1);
                        }
                    };
                    long j16 = j15 * 1000;
                    com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j16, this.mUpdateWorkerInfo, j16);
                }
            }
            if (this.mUploadWorkerInfo == null) {
                java.lang.String funcfgAtt8 = configInfo.getFuncfgAtt("StatsInfor", "uploadtime", "600");
                if (!android.text.TextUtils.isEmpty(funcfgAtt8)) {
                    long j17 = java.lang.Long.parseLong(funcfgAtt8);
                    this.mUploadWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.traffic.TrafficStatsManager.2
                        @Override // com.cndatacom.sdk.portal.work.WorkerInfo
                        public void runTask() {
                            com.cndatacom.traffic.TrafficStatsManager.this.handleTrafficStatsData(context, configInfo, 0);
                        }
                    };
                    long j18 = j17 * 1000;
                    com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j18, this.mUploadWorkerInfo, j18);
                }
            }
            throw th;
        }
    }
}
