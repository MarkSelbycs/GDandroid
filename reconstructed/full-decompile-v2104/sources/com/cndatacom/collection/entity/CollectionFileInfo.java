package com.cndatacom.collection.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CollectionFileInfo implements android.os.Parcelable {
    private static javax.crypto.SecretKey CRYPT_KEY = null;
    private static final java.lang.String FILENAME = "collection";
    private java.util.Vector<com.cndatacom.collection.entity.CollectionInfo> collectionInfos;
    private static final byte[] CRYPT_KEY_SEED = {3, 92, 47, 111, 17, 115, 110, 84, 0, 29, 113, 40, 75, 116, 4, 99};
    public static final android.os.Parcelable.Creator<com.cndatacom.collection.entity.CollectionFileInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.collection.entity.CollectionFileInfo>() { // from class: com.cndatacom.collection.entity.CollectionFileInfo.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.collection.entity.CollectionFileInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.collection.entity.CollectionFileInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.collection.entity.CollectionFileInfo[] newArray(int i5) {
            return new com.cndatacom.collection.entity.CollectionFileInfo[i5];
        }
    };

    private CollectionFileInfo() {
        this.collectionInfos = new java.util.Vector<>();
    }

    private static byte[] decrypt(byte[] bArr) {
        try {
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES");
            cipher.init(2, getCryptKey());
            return cipher.doFinal(bArr);
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("decrypt exception: ", e5.getMessage());
            return new byte[0];
        }
    }

    private byte[] encryp(byte[] bArr) {
        try {
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES");
            cipher.init(1, getCryptKey());
            return cipher.doFinal(bArr);
        } catch (java.lang.Exception e5) {
            com.cndatacom.sdk.portal.util.ExLogUtil.e("encryp exception: ", e5.getMessage());
            return new byte[0];
        }
    }

    private static javax.crypto.SecretKey getCryptKey() {
        if (CRYPT_KEY == null) {
            try {
                java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
                messageDigest.update(android.os.Build.FINGERPRINT.getBytes());
                messageDigest.update(CRYPT_KEY_SEED);
                CRYPT_KEY = new javax.crypto.spec.SecretKeySpec(messageDigest.digest(), "AES");
            } catch (java.security.NoSuchAlgorithmException e5) {
                com.cndatacom.sdk.portal.util.ExLogUtil.e("getCryptKey exception: ", e5.getMessage());
            }
        }
        return CRYPT_KEY;
    }

    public static com.cndatacom.collection.entity.CollectionFileInfo load() {
        byte[] file;
        synchronized (FILENAME) {
            try {
                try {
                    java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_MODULE, FILENAME);
                    if (new java.io.File(contextFilePath).exists() && (file = com.cndatacom.sdk.portal.util.FileUtil.readFile(contextFilePath)) != null && file.length > 0) {
                        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                        parcelObtain.unmarshall(decrypt(file), 0, file.length);
                        parcelObtain.setDataPosition(0);
                        return CREATOR.createFromParcel(parcelObtain);
                    }
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                    com.cndatacom.sdk.portal.util.ExLogUtil.e("CollectionFileInfo load->" + e5.getMessage());
                }
                return new com.cndatacom.collection.entity.CollectionFileInfo();
            } catch (java.lang.Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveFile() {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        writeToParcel(parcelObtain, 1);
        synchronized (FILENAME) {
            try {
                com.cndatacom.sdk.portal.util.FileUtil.writeFile(encryp(parcelObtain.marshall()), com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(com.cndatacom.sdk.portal.util.ContextUtil.getContext(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_MODULE, FILENAME));
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    public void clear() {
        this.collectionInfos.clear();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.util.Vector<com.cndatacom.collection.entity.CollectionInfo> getCollectionInfos() {
        return this.collectionInfos;
    }

    public com.cndatacom.collection.entity.CollectionFileInfo save() {
        com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.collection.entity.CollectionFileInfo.1
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.collection.entity.CollectionFileInfo.this.saveFile();
            }
        });
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        if (parcel != null) {
            parcel.writeTypedList(this.collectionInfos);
        }
    }

    public CollectionFileInfo(android.os.Parcel parcel) {
        java.util.Vector<com.cndatacom.collection.entity.CollectionInfo> vector = new java.util.Vector<>();
        this.collectionInfos = vector;
        if (parcel != null) {
            parcel.readTypedList(vector, com.cndatacom.collection.entity.CollectionInfo.CREATOR);
        }
    }
}
