package com.cndatacom.campus.service;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class VpnKeepService extends com.cndatacom.sdk.portal.service.BaseIntentService {
    @Override // com.cndatacom.sdk.portal.service.BaseIntentService
    public void doNextKeep(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, long j5, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        com.cndatacom.sdk.portal.service.BaseIntentService.startOneTimeWork(context, com.cndatacom.campus.service.VpnKeepService.class, j5);
    }

    @Override // com.cndatacom.sdk.portal.service.BaseIntentService
    public android.util.ArrayMap<java.lang.String, java.lang.String> getKeepExtraParam(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        return new android.util.ArrayMap<>();
    }

    @Override // com.cndatacom.sdk.portal.service.BaseIntentService, android.app.IntentService
    public void onHandleIntent(android.content.Intent intent) {
        super.onHandleIntent(intent);
    }

    @Override // com.cndatacom.sdk.portal.service.BaseIntentService
    public void sendChange(android.content.Context context, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, 1, returnUIResult);
    }
}
