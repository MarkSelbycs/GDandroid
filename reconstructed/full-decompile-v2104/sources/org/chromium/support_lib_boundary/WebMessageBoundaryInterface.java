package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface WebMessageBoundaryInterface extends org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface {
    @java.lang.Deprecated
    java.lang.String getData();

    java.lang.reflect.InvocationHandler getMessagePayload();

    java.lang.reflect.InvocationHandler[] getPorts();
}
