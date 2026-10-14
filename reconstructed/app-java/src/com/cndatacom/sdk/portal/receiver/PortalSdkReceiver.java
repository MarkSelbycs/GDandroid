package com.cndatacom.sdk.portal.receiver;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PortalSdkReceiver {
    public static final java.lang.String ACTION_BUNDLEKEY = "com.cndatacom.campus.receiver.action.bundle.key";
    public static final int ACTION_CODE_INTERFACE_INFO = 1000;
    private static final java.lang.String ACTION_CODE_KEY = "com.cndatacom.campus.receiver.action.code.key";
    public static final java.lang.String ACTION_DATA_KEY = "com.cndatacom.campus.receiver.action.data.key";
    public static final java.lang.String RECEIVER_ACTION = "com.cndatacom.campus.receiver.action";
    public static final java.lang.String RECEIVER_PERMISSION = "com.cndatacom.campus.permissions.PORTAL_RECEIVER";
    private android.content.BroadcastReceiver mBroadcastReceiver;
    private android.content.IntentFilter mIntentFilter;
    private com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener mReceiverListener;

    public interface AppReceiverListener {
        void onReceive(android.content.Context context, android.content.Intent intent, int i5);
    }

    public static void sendInterfaceInfoReceiver(android.content.Context context, java.lang.String str, long j5, long j6, int i5) {
        try {
            if (android.text.TextUtils.isEmpty(str) || str.contains(".cgi")) {
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put("url", str);
                jSONObject.put("startTime", j5);
                jSONObject.put("endTime", j6);
                jSONObject.put("status", i5);
                android.os.Bundle bundle = new android.os.Bundle();
                bundle.putString(ACTION_DATA_KEY, jSONObject.toString());
                sendReceiver(context, ACTION_CODE_INTERFACE_INFO, ACTION_BUNDLEKEY, bundle);
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public static void sendReceiver(android.content.Context context, int i5, java.lang.String str, android.os.Bundle bundle) {
        android.content.Intent intent = new android.content.Intent(RECEIVER_ACTION);
        intent.putExtra(ACTION_CODE_KEY, i5);
        if (!android.text.TextUtils.isEmpty(str) && bundle != null) {
            intent.putExtra(str, bundle);
        }
        intent.setFlags(32);
        context.sendBroadcast(intent, RECEIVER_PERMISSION);
    }

    public void registerReceiver(android.content.Context context) {
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        this.mIntentFilter = intentFilter;
        intentFilter.addAction(RECEIVER_ACTION);
        android.content.BroadcastReceiver broadcastReceiver = new android.content.BroadcastReceiver() { // from class: com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(android.content.Context context2, android.content.Intent intent) {
                if (com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.this.mReceiverListener == null || intent == null) {
                    return;
                }
                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.this.mReceiverListener.onReceive(context2, intent, intent.getIntExtra(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_KEY, -1));
            }
        };
        this.mBroadcastReceiver = broadcastReceiver;
        context.registerReceiver(broadcastReceiver, this.mIntentFilter, RECEIVER_PERMISSION, null, android.os.Build.VERSION.SDK_INT >= 34 ? 4 : 0);
    }

    public void setReceiverListener(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener appReceiverListener) {
        this.mReceiverListener = appReceiverListener;
    }

    public void unregisterReceiver(android.content.Context context) {
        android.content.BroadcastReceiver broadcastReceiver = this.mBroadcastReceiver;
        if (broadcastReceiver != null) {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    public static void sendReceiver(android.content.Context context, int i5) {
        sendReceiver(context, i5, null, null);
    }

    public static void sendReceiver(android.content.Context context, int i5, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelable(ACTION_DATA_KEY, returnUIResult);
        sendReceiver(context, i5, ACTION_BUNDLEKEY, bundle);
    }
}
