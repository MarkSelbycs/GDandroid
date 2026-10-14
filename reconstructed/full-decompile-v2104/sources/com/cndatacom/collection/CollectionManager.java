package com.cndatacom.collection;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CollectionManager {
    private static com.cndatacom.collection.CollectionManager _CollectionManager;
    private com.cndatacom.collection.entity.CollectionInfo mCurCollectionInfo;
    private com.cndatacom.sdk.portal.work.WorkerInfo mUpdateWorkerInfo;

    private CollectionManager() {
    }

    public static com.cndatacom.collection.CollectionManager getInstance() {
        if (_CollectionManager == null) {
            _CollectionManager = new com.cndatacom.collection.CollectionManager();
        }
        return _CollectionManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCollectionInfo(com.cndatacom.collection.entity.CollectionInfo collectionInfo) {
        com.cndatacom.collection.entity.CollectionFileInfo collectionFileInfoLoad = com.cndatacom.collection.entity.CollectionFileInfo.load();
        java.util.Vector<com.cndatacom.collection.entity.CollectionInfo> collectionInfos = collectionFileInfoLoad.getCollectionInfos();
        if (collectionInfos == null || collectionInfos.size() <= 0) {
            return;
        }
        for (int i5 = 0; i5 < collectionInfos.size(); i5++) {
            com.cndatacom.collection.entity.CollectionInfo collectionInfo2 = collectionInfos.get(i5);
            if (collectionInfo2.getId().equals(collectionInfo.getId())) {
                collectionInfo2.setStoptime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date()));
                collectionFileInfoLoad.save();
                return;
            }
        }
    }

    public void release(android.content.Context context) {
        this.mCurCollectionInfo = null;
        if (this.mUpdateWorkerInfo != null) {
            com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancel(this.mUpdateWorkerInfo.getTaskId());
        }
        _CollectionManager = null;
    }

    public void start(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        if (android.text.TextUtils.isEmpty(configInfo.getFuncfgUrl("Collection", ""))) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadCollectionInfo url is null");
            return;
        }
        java.lang.String funcfgAtt = configInfo.getFuncfgAtt("Collection", "interval", "");
        if (android.text.TextUtils.isEmpty(funcfgAtt)) {
            funcfgAtt = "18000";
        }
        long j5 = java.lang.Long.parseLong(funcfgAtt);
        this.mCurCollectionInfo = com.cndatacom.collection.entity.CollectionInfo.madeDefCollectionInfo(context, configInfo);
        com.cndatacom.collection.entity.CollectionFileInfo collectionFileInfoLoad = com.cndatacom.collection.entity.CollectionFileInfo.load();
        collectionFileInfoLoad.getCollectionInfos().add(this.mCurCollectionInfo);
        collectionFileInfoLoad.save();
        this.mUpdateWorkerInfo = new com.cndatacom.sdk.portal.work.WorkerInfo() { // from class: com.cndatacom.collection.CollectionManager.1
            @Override // com.cndatacom.sdk.portal.work.WorkerInfo
            public void runTask() {
                if (com.cndatacom.collection.CollectionManager.this.mCurCollectionInfo != null) {
                    com.cndatacom.collection.CollectionManager collectionManager = com.cndatacom.collection.CollectionManager.this;
                    collectionManager.updateCollectionInfo(collectionManager.mCurCollectionInfo);
                }
            }
        };
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(j5, this.mUpdateWorkerInfo, j5);
    }

    public void uploadCollectionInfo(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        java.lang.String funcfgUrl = configInfo.getFuncfgUrl("Collection", "");
        if (android.text.TextUtils.isEmpty(funcfgUrl)) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadCollectionInfo url is null");
            return;
        }
        java.lang.String funcfgAtt = configInfo.getFuncfgAtt("Collection", "interval", "");
        if (android.text.TextUtils.isEmpty(funcfgAtt)) {
            funcfgAtt = "18000";
        }
        long j5 = java.lang.Long.parseLong(funcfgAtt);
        java.lang.String string = com.cndatacom.sdk.portal.util.PreferencesUtil.getString(context, "COLLECTION_LAST_UPLOAD_TIME", "");
        if (android.text.TextUtils.isEmpty(string) || com.cndatacom.sdk.portal.util.DateUtil.parseDateString(string).getTime() + (j5 * 1000) < java.lang.System.currentTimeMillis()) {
            com.cndatacom.collection.entity.CollectionFileInfo collectionFileInfoLoad = com.cndatacom.collection.entity.CollectionFileInfo.load();
            java.util.Vector<com.cndatacom.collection.entity.CollectionInfo> collectionInfos = collectionFileInfoLoad.getCollectionInfos();
            if (collectionInfos == null || collectionInfos.size() == 0) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("uploadCollectionInfo data is null");
                return;
            }
            try {
                java.lang.String strK = new s2.e().k(collectionInfos);
                android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
                arrayMap.put("Content-Type", "application/json");
                com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(funcfgUrl, arrayMap, strK.getBytes());
                if (resultPost != null && resultPost.isSuccessful() && new org.json.JSONObject(resultPost.getDataString()).optInt("code", -1) == 0) {
                    collectionFileInfoLoad.clear();
                    collectionFileInfoLoad.save();
                } else {
                    com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadCollectionInfo httpcode ->" + resultPost.getHttpCode());
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                com.cndatacom.sdk.portal.util.ExLogUtil.e("uploadCollectionInfo error ->" + e5.getMessage());
            }
        }
    }
}
