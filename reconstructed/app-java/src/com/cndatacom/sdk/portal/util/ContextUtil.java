package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ContextUtil {
    private static android.content.Context mContext;

    public static android.content.Context getContext() {
        return mContext;
    }

    public static void init(android.content.Context context) {
        mContext = context;
    }
}
