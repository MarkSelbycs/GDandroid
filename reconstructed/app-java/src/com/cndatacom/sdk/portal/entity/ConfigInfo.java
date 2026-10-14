package com.cndatacom.sdk.portal.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ConfigInfo implements android.os.Parcelable {
    private static final java.lang.String DAMOD_FILENAME = "damod";
    private static final java.lang.String FILENAME = "data";
    public static final int KEEP_INTERVAL_DEF = 300;
    public static final int STATE_INTERVAL_DEF = 10;
    private static com.cndatacom.sdk.portal.entity.ConfigInfo mConfigInfo;
    private static final java.lang.Object lock = new java.lang.Object();
    private static final java.lang.Object modLock = new java.lang.Object();
    public static final android.os.Parcelable.Creator<com.cndatacom.sdk.portal.entity.ConfigInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.sdk.portal.entity.ConfigInfo>() { // from class: com.cndatacom.sdk.portal.entity.ConfigInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.sdk.portal.entity.ConfigInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.sdk.portal.entity.ConfigInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.sdk.portal.entity.ConfigInfo[] newArray(int i5) {
            return new com.cndatacom.sdk.portal.entity.ConfigInfo[i5];
        }
    };
    private final int KEEP_RETRY_DEF = 3;
    private final java.lang.String IP_TYPE_KEY = "IS_IPV4";
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> configObject = new java.util.concurrent.ConcurrentHashMap<>();
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> privateConfigObject = new java.util.concurrent.ConcurrentHashMap<>();
    private transient java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> cacheConfigObject = new java.util.concurrent.ConcurrentHashMap<>();

    public static final class STATE {
        public static final int NONE = 0;
        public static final int ONLINE = 2;
        public static final int ONTERMED = 4;
        public static final int ONTERMING = 3;
        public static final int TICKET = 1;
    }

    public ConfigInfo() {
    }

    private com.cndatacom.sdk.portal.entity.ConfigInfo handleExpire(long j5) {
        if (j5 > 0) {
            j5 = new java.util.Date(new java.util.Date().getTime() + j5).getTime();
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("handleExpire->expire=" + j5);
        com.cndatacom.sdk.portal.entity.MultiProcessInfo.load().putConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_EXPIRE, j5 + "").save();
        return this;
    }

    public static com.cndatacom.sdk.portal.entity.ConfigInfo load() {
        byte[] file;
        synchronized (lock) {
            try {
                try {
                    java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_CONFIG, FILENAME);
                    if (new java.io.File(contextFilePath).exists() && (file = com.cndatacom.sdk.portal.util.FileUtil.readFile(contextFilePath)) != null && file.length > 0) {
                        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                        parcelObtain.unmarshall(com.cndatacom.sdk.portal.util.CryptoUtil.decrypt(file), 0, file.length);
                        parcelObtain.setDataPosition(0);
                        return CREATOR.createFromParcel(parcelObtain);
                    }
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                    com.cndatacom.sdk.portal.util.ExLogUtil.e("ConfigInfo load->" + e5.getMessage());
                }
                return new com.cndatacom.sdk.portal.entity.ConfigInfo();
            } catch (java.lang.Throwable th) {
                throw th;
            }
        }
    }

    public static com.cndatacom.sdk.portal.entity.ConfigInfo obtain() {
        synchronized (com.cndatacom.sdk.portal.entity.ConfigInfo.class) {
            if (mConfigInfo == null) {
                mConfigInfo = load();
            }
        }
        return mConfigInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDaModFile(byte[] bArr) throws java.lang.Throwable {
        try {
            com.cndatacom.sdk.portal.util.FileUtil.writeFile(bArr, com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_CONFIG, DAMOD_FILENAME));
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("ConfigInfo.setDaMod Exception: ", e5.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveFile() {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        writeToParcel(parcelObtain, 1);
        synchronized (lock) {
            try {
                com.cndatacom.sdk.portal.util.FileUtil.writeFile(com.cndatacom.sdk.portal.util.CryptoUtil.encryp(parcelObtain.marshall()), com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_CONFIG, FILENAME));
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    private int toInt(java.lang.String str, int i5) {
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.NumberFormatException unused) {
            return i5;
        }
    }

    private long toLong(java.lang.String str, long j5) {
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.Exception unused) {
            return j5;
        }
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo clearAll() {
        if (this.configObject.size() > 0) {
            this.configObject.clear();
        }
        if (this.privateConfigObject.size() > 0) {
            this.privateConfigObject.clear();
        }
        if (this.cacheConfigObject.size() > 0) {
            this.cacheConfigObject.clear();
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo clearCache() {
        this.cacheConfigObject.clear();
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo clearConfig() {
        if (this.configObject.size() > 0) {
            this.configObject.clear();
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo clearPrivateConfig() {
        if (this.privateConfigObject.size() > 0) {
            this.privateConfigObject.clear();
        }
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo freeDaMod() {
        com.cndatacom.campus.netcore.DaMod daMod = com.cndatacom.campus.netcore.DaMod.getInstance();
        synchronized (modLock) {
            daMod.Free();
        }
        return this;
    }

    public java.lang.String getCacheConfig(java.lang.String str, java.lang.String str2) {
        if (this.cacheConfigObject.containsKey(str)) {
            java.lang.String str3 = this.cacheConfigObject.get(str);
            if (!android.text.TextUtils.isEmpty(str3)) {
                return str3;
            }
        }
        return str2;
    }

    public java.lang.String getClientId() {
        android.content.Context context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
        java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "clientId", "");
        if (!android.text.TextUtils.isEmpty(string)) {
            return string;
        }
        java.lang.String string2 = java.util.UUID.randomUUID().toString();
        com.cndatacom.sdk.portal.util.PreferencesUtil.putString(context, "clientId", string2);
        return string2;
    }

    public java.lang.String getConfig(java.lang.String str, java.lang.String str2) {
        if (this.configObject.containsKey(str)) {
            java.lang.String str3 = this.configObject.get(str);
            if (!android.text.TextUtils.isEmpty(str3)) {
                return str3;
            }
        }
        return str2;
    }

    public com.cndatacom.campus.netcore.DaMod getDaMod() {
        byte[] file;
        com.cndatacom.campus.netcore.DaMod daMod = com.cndatacom.campus.netcore.DaMod.getInstance();
        if (!daMod.isOk()) {
            synchronized (modLock) {
                if (!daMod.isOk()) {
                    try {
                        java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_CONFIG, DAMOD_FILENAME);
                        if (new java.io.File(contextFilePath).exists() && (file = com.cndatacom.sdk.portal.util.FileUtil.readFile(contextFilePath)) != null) {
                            daMod.setData(file);
                        }
                    } catch (java.lang.Exception e5) {
                        com.cndatacom.sdk.portal.util.ExLogUtil.e("ConfigInfo.getDaMod Exception: ", e5.getMessage());
                    }
                }
            }
        }
        return daMod;
    }

    public java.util.Date getExpire() {
        java.lang.String config = com.cndatacom.sdk.portal.entity.MultiProcessInfo.load().getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_EXPIRE, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("getExpire->expire=" + config);
        return new java.util.Date(toLong(config, 0L));
    }

    public java.lang.String getFuncfg(java.lang.String str, java.lang.String str2) {
        return getConfig("FUN_" + str, str2);
    }

    public java.lang.String getFuncfgAtt(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.String funcfg = getFuncfg(str, "");
        if (!android.text.TextUtils.isEmpty(funcfg)) {
            try {
                return new org.json.JSONObject(funcfg).optString(str2, str3);
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        return str3;
    }

    public java.lang.String getFuncfgUrl(java.lang.String str, java.lang.String str2) {
        java.lang.String funcfg = getFuncfg(str, "");
        if (!android.text.TextUtils.isEmpty(funcfg)) {
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject(funcfg);
                if (jSONObject.optString("enable", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals("1")) {
                    return getIpType().booleanValue() ? jSONObject.optString("url", str2) : jSONObject.optString("ipv6Url", str2);
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        return str2;
    }

    public java.lang.Boolean getIpType() {
        return java.lang.Boolean.valueOf(getPrivateConfig("IS_IPV4", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS));
    }

    public long getKeepInterval() {
        return toLong(getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_KEEP_INTERVAL, com.cndatacom.sdk.portal.entity.CdcErrCode.WAIT_CLIENT_AUTH), 300L) * 1000;
    }

    public int getLoginState() {
        return toInt(getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_STATE, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS), 0);
    }

    public com.cndatacom.sdk.portal.entity.NetInfo getNetInfo() {
        java.lang.String privateConfig = getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_NET_INFO, "");
        return !android.text.TextUtils.isEmpty(privateConfig) ? com.cndatacom.sdk.portal.entity.NetInfo.parse(privateConfig) : com.cndatacom.sdk.portal.entity.NetInfo.obtain();
    }

    public long getOnlineTime() {
        java.lang.String privateConfig = getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_ONLINE_TIME, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        long jCurrentTimeMillis2 = toLong(privateConfig, 0L);
        if (jCurrentTimeMillis2 == 0) {
            jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
        }
        return java.lang.Math.max(jCurrentTimeMillis - jCurrentTimeMillis2, 0L);
    }

    public java.lang.String getPrivateConfig(java.lang.String str, java.lang.String str2) {
        if (this.privateConfigObject.containsKey(str)) {
            java.lang.String str3 = this.privateConfigObject.get(str);
            if (!android.text.TextUtils.isEmpty(str3)) {
                return str3;
            }
        }
        return str2;
    }

    public java.lang.String getSchoolId() {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_SCHOOL_ID, "");
    }

    public long getStateInterval() {
        long j5 = toLong(getConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_STATE_INTERVAL, "10"), 10L) * 1000;
        com.cndatacom.sdk.portal.util.ExLogUtil.i("state interval->" + j5);
        return j5;
    }

    public java.lang.String getTicket() {
        java.lang.String privateConfig = getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, "");
        com.cndatacom.sdk.portal.util.ExLogUtil.i("getTicket->" + privateConfig);
        return privateConfig;
    }

    public java.lang.String getUserAgent(boolean z4) {
        boolean zContains = java.lang.System.getProperty("os.arch").contains("64");
        java.lang.String strReplace = zContains ? com.cndatacom.sdk.portal.BuildConfig.USERAGENT.replace("%", "64") : com.cndatacom.sdk.portal.BuildConfig.USERAGENT.replace("%", "32");
        java.lang.String strReplace2 = zContains ? com.cndatacom.sdk.portal.BuildConfig.VPN_USERAGENT.replace("%", "64") : com.cndatacom.sdk.portal.BuildConfig.VPN_USERAGENT.replace("%", "32");
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("CCTP");
        sb.append("/");
        if (z4) {
            sb.append(strReplace);
        } else {
            java.lang.String curUserAgentData = com.cndatacom.sdk.portal.work.KeepUserAgentWorker.getCurUserAgentData(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), this);
            if (!android.text.TextUtils.isEmpty(curUserAgentData)) {
                sb.append(curUserAgentData);
            } else if (isVpn()) {
                sb.append(strReplace2);
            } else {
                sb.append(strReplace);
            }
        }
        sb.append("/");
        sb.append(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(com.cndatacom.sdk.portal.util.ContextUtil.getContext()));
        return sb.toString();
    }

    public java.lang.String getUserId() {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_ACCOUNT, "");
    }

    public java.lang.String getWlanIpName() {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_IP_NAME, "");
    }

    public java.lang.String getWlanacip() {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_AC_IP, "");
    }

    public java.lang.String getWlanuserip() {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_USER_IP, "");
    }

    public boolean hasCache() {
        return this.cacheConfigObject.size() > 0;
    }

    public boolean isOnline() {
        java.lang.String ticket = getTicket();
        java.util.Date expire = getExpire();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("isOnline->ticket=" + ticket + ",expire=" + com.cndatacom.sdk.portal.util.DateUtil.parseDateToString(expire));
        return !android.text.TextUtils.isEmpty(ticket) && expire.after(new java.util.Date());
    }

    public boolean isOpenSSID() {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_IS_OPEN_SSID, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals("1");
    }

    public boolean isVpn() {
        return getFuncfgAtt(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_VPN, "enable", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS).equals("1");
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo putCacheConfig(java.lang.String str, java.lang.String str2) {
        try {
            this.cacheConfigObject.put(str, str2);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo putConfig(java.lang.String str, java.lang.String str2) {
        try {
            this.configObject.put(str, str2);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo putPrivateConfig(java.lang.String str, java.lang.String str2) {
        try {
            this.privateConfigObject.put(str, str2);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo removeCacheConfig(java.lang.String str) {
        if (this.cacheConfigObject.containsKey(str)) {
            this.cacheConfigObject.remove(str);
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo removeConfig(java.lang.String str) {
        if (this.configObject.containsKey(str)) {
            this.configObject.remove(str);
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo removePrivateConfig(java.lang.String str) {
        if (this.privateConfigObject.containsKey(str)) {
            this.privateConfigObject.remove(str);
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo resetOnlineTime() {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_ONLINE_TIME, java.lang.System.currentTimeMillis() + "");
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo save() {
        java.util.concurrent.Executors.newCachedThreadPool().submit(new java.lang.Runnable() { // from class: com.cndatacom.sdk.portal.entity.ConfigInfo.2
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.sdk.portal.entity.ConfigInfo.this.saveFile();
            }
        });
        return this;
    }

    public void setConfigObject(java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> concurrentHashMap) {
        this.configObject = concurrentHashMap;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setDaMod(final byte[] bArr) {
        com.cndatacom.campus.netcore.DaMod daMod = com.cndatacom.campus.netcore.DaMod.getInstance();
        if (daMod.isOk()) {
            synchronized (modLock) {
                daMod.Free();
            }
        }
        daMod.setData(bArr);
        if (daMod.isOk()) {
            java.util.concurrent.Executors.newCachedThreadPool().submit(new java.lang.Runnable() { // from class: com.cndatacom.sdk.portal.entity.ConfigInfo.3
                @Override // java.lang.Runnable
                public void run() throws java.lang.Throwable {
                    com.cndatacom.sdk.portal.entity.ConfigInfo.this.saveDaModFile(bArr);
                }
            });
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setExpire(java.lang.String str, long j5) {
        return handleExpire(toLong(str, j5) * 1000);
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setIpType(java.lang.Boolean bool) {
        putPrivateConfig("IS_IPV4", bool.booleanValue() ? com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS : "1");
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setKeepExpire(java.lang.String str) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_KEEP_INTERVAL, str);
        long j5 = toLong(str, 300L) * 1000;
        int i5 = toInt(getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_KEEP_RETRY, com.cndatacom.sdk.portal.entity.CdcErrCode.UNSUPPORT_CLIENT), 3);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("keep interval=" + j5 + ",retry=" + i5);
        return handleExpire(j5 * ((long) i5));
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setLoginState(int i5) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_STATE, i5 + "");
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setNetInfo(com.cndatacom.sdk.portal.entity.NetInfo netInfo) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_NET_INFO, netInfo.toString());
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setOpenSSID(boolean z4) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_IS_OPEN_SSID, z4 ? "1" : com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setPassword(java.lang.String str) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_PASSWORD, str);
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setTicket(java.lang.String str) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, str);
        return this;
    }

    public com.cndatacom.sdk.portal.entity.ConfigInfo setUserId(java.lang.String str) {
        putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_ACCOUNT, str);
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeMap(this.configObject);
        parcel.writeMap(this.privateConfigObject);
    }

    public java.lang.String getSchoolId(java.lang.String str) {
        return getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_SCHOOL_ID, str);
    }

    public ConfigInfo(android.os.Parcel parcel) {
        if (parcel != null) {
            parcel.readMap(this.configObject, java.lang.String.class.getClassLoader());
            parcel.readMap(this.privateConfigObject, java.lang.String.class.getClassLoader());
        }
    }
}
