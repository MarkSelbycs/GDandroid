package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ToastUtil {
    private static android.widget.Toast mToast;

    public static void showBottomText(android.content.Context context, java.lang.String str) {
        android.widget.Toast toast = mToast;
        if (toast != null) {
            toast.cancel();
            mToast = null;
        }
        android.widget.Toast toastMakeText = android.widget.Toast.makeText(context, str, 0);
        mToast = toastMakeText;
        toastMakeText.show();
    }
}
