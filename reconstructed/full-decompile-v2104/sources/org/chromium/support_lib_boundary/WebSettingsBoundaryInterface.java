package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface WebSettingsBoundaryInterface {

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface ForceDarkBehavior {
        public static final int FORCE_DARK_ONLY = 0;
        public static final int MEDIA_QUERY_ONLY = 1;
        public static final int PREFER_MEDIA_QUERY_OVER_FORCE_DARK = 2;
    }

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface WebAuthnSupport {
        public static final int APP = 1;
        public static final int BROWSER = 2;
        public static final int NONE = 0;
    }

    void enableRestrictSensitiveWebContent();

    int getDisabledActionModeMenuItems();

    boolean getEnterpriseAuthenticationAppLinkPolicyEnabled();

    int getForceDark();

    int getForceDarkBehavior();

    boolean getOffscreenPreRaster();

    java.util.Set<java.lang.String> getRequestedWithHeaderOriginAllowList();

    boolean getSafeBrowsingEnabled();

    int getWebAuthnSupport();

    boolean getWillSuppressErrorPage();

    boolean isAlgorithmicDarkeningAllowed();

    void setAlgorithmicDarkeningAllowed(boolean z4);

    void setDisabledActionModeMenuItems(int i5);

    void setEnterpriseAuthenticationAppLinkPolicyEnabled(boolean z4);

    void setForceDark(int i5);

    void setForceDarkBehavior(int i5);

    void setOffscreenPreRaster(boolean z4);

    void setRequestedWithHeaderOriginAllowList(java.util.Set<java.lang.String> set);

    void setSafeBrowsingEnabled(boolean z4);

    void setWebAuthnSupport(int i5);

    void setWillSuppressErrorPage(boolean z4);
}
