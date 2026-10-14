package p0;

/* JADX INFO: compiled from: IncompatibleApkWebViewProviderFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements p0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String[] f5440a = new java.lang.String[0];

    @Override // p0.d
    public org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface getDropDataProvider() {
        throw new java.lang.UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }
}
