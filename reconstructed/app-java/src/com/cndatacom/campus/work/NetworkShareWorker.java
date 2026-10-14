package com.cndatacom.campus.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NetworkShareWorker extends com.cndatacom.sdk.portal.work.WorkerInfo {
    public final void a(android.content.Context context, int i5, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelable(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_DATA_KEY, returnUIResult);
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, i5, com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_BUNDLEKEY, bundle);
    }

    @Override // com.cndatacom.sdk.portal.work.WorkerInfo
    public void runTask() {
        android.content.Context context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
        boolean zIsNetworkSharing = com.cndatacom.sdk.portal.util.NetUtil.isNetworkSharing(context);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("NetworkShareWorker->" + zIsNetworkSharing);
        if (zIsNetworkSharing) {
            a(context, 2, new com.cndatacom.sdk.portal.entity.ReturnUIResult(com.cndatacom.sdk.portal.entity.CdcErrCode.SHARED_ERROR));
            setForceStop(true);
        }
    }
}
