package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface TracingControllerBoundaryInterface {
    boolean isTracing();

    void start(int i5, java.util.Collection<java.lang.String> collection, int i6) throws java.lang.IllegalStateException, java.lang.IllegalArgumentException;

    boolean stop(java.io.OutputStream outputStream, java.util.concurrent.Executor executor);
}
