package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface WebMessagePayloadBoundaryInterface extends org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface {

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface WebMessagePayloadType {
        public static final int TYPE_ARRAY_BUFFER = 1;
        public static final int TYPE_STRING = 0;
    }

    byte[] getAsArrayBuffer();

    java.lang.String getAsString();

    int getType();
}
