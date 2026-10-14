package p0;

/* JADX INFO: compiled from: WebViewProviderFactoryAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements p0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface f5442a;

    public e(org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.f5442a = webViewProviderFactoryBoundaryInterface;
    }

    @Override // p0.d
    public org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface getDropDataProvider() {
        return (org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface) org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.castToSuppLibClass(org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface.class, this.f5442a.getDropDataProvider());
    }
}
