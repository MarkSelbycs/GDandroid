package com.cndatacom.sdk.portal.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MultiProcessInfo implements android.os.Parcelable {
    private static final java.lang.String FILENAME = "mul_data";
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> configObject;
    private static final java.lang.Object lock = new java.lang.Object();
    public static final android.os.Parcelable.Creator<com.cndatacom.sdk.portal.entity.MultiProcessInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.sdk.portal.entity.MultiProcessInfo>() { // from class: com.cndatacom.sdk.portal.entity.MultiProcessInfo.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.sdk.portal.entity.MultiProcessInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.sdk.portal.entity.MultiProcessInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.sdk.portal.entity.MultiProcessInfo[] newArray(int i5) {
            return new com.cndatacom.sdk.portal.entity.MultiProcessInfo[i5];
        }
    };

    private MultiProcessInfo() {
        this.configObject = new java.util.concurrent.ConcurrentHashMap<>();
    }

    public static com.cndatacom.sdk.portal.entity.MultiProcessInfo load() {
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
                    com.cndatacom.sdk.portal.util.ExLogUtil.e("MultiProcessInfo load->" + e5.getMessage());
                }
                return new com.cndatacom.sdk.portal.entity.MultiProcessInfo();
            } catch (java.lang.Throwable th) {
                throw th;
            }
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

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
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

    public com.cndatacom.sdk.portal.entity.MultiProcessInfo putConfig(java.lang.String str, java.lang.String str2) {
        try {
            this.configObject.put(str, str2);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return this;
    }

    public com.cndatacom.sdk.portal.entity.MultiProcessInfo save() {
        java.util.concurrent.Executors.newCachedThreadPool().submit(new java.lang.Runnable() { // from class: com.cndatacom.sdk.portal.entity.MultiProcessInfo.1
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.sdk.portal.entity.MultiProcessInfo.this.saveFile();
            }
        });
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeMap(this.configObject);
    }

    public MultiProcessInfo(android.os.Parcel parcel) {
        java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> concurrentHashMap = new java.util.concurrent.ConcurrentHashMap<>();
        this.configObject = concurrentHashMap;
        if (parcel != null) {
            parcel.readMap(concurrentHashMap, java.lang.String.class.getClassLoader());
        }
    }
}
