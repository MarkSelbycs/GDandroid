package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface WebMessagePortBoundaryInterface {
    void close();

    void postMessage(java.lang.reflect.InvocationHandler invocationHandler);

    void setWebMessageCallback(java.lang.reflect.InvocationHandler invocationHandler);

    void setWebMessageCallback(java.lang.reflect.InvocationHandler invocationHandler, android.os.Handler handler);
}
