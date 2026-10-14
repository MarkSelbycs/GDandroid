package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bk extends com.tencent.smtt.sdk.WebViewClient implements com.msec.be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.tencent.smtt.sdk.WebViewClient f3727a = null;

    @Override // com.msec.be
    public java.lang.Object a() {
        return this.f3727a;
    }

    @Override // com.msec.be
    public void a(java.lang.Object obj) {
        if (obj instanceof com.msec.bk) {
            return;
        }
        this.f3727a = (com.tencent.smtt.sdk.WebViewClient) obj;
    }

    public void doUpdateVisitedHistory(com.tencent.smtt.sdk.WebView webView, java.lang.String str, boolean z4) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.doUpdateVisitedHistory(webView, str, z4);
        } else {
            webViewClient.doUpdateVisitedHistory(webView, str, z4);
        }
    }

    public void onDetectedBlankScreen(java.lang.String str, int i5) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onDetectedBlankScreen(str, i5);
        } else {
            webViewClient.onDetectedBlankScreen(str, i5);
        }
    }

    public void onFormResubmission(com.tencent.smtt.sdk.WebView webView, android.os.Message message, android.os.Message message2) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onFormResubmission(webView, message, message2);
        } else {
            webViewClient.onFormResubmission(webView, message, message2);
        }
    }

    public void onLoadResource(com.tencent.smtt.sdk.WebView webView, java.lang.String str) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onLoadResource(webView, str);
        } else {
            webViewClient.onLoadResource(webView, str);
        }
    }

    public void onPageCommitVisible(com.tencent.smtt.sdk.WebView webView, java.lang.String str) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onPageCommitVisible(webView, str);
        } else {
            webViewClient.onPageCommitVisible(webView, str);
        }
    }

    public void onPageFinished(com.tencent.smtt.sdk.WebView webView, java.lang.String str) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onPageFinished(webView, str);
        } else {
            webViewClient.onPageFinished(webView, str);
        }
    }

    public void onPageStarted(com.tencent.smtt.sdk.WebView webView, java.lang.String str, android.graphics.Bitmap bitmap) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onPageStarted(webView, str, bitmap);
        } else {
            webViewClient.onPageStarted(webView, str, bitmap);
        }
    }

    public void onReceivedClientCertRequest(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.ClientCertRequest clientCertRequest) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedClientCertRequest(webView, clientCertRequest);
        } else {
            webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
        }
    }

    public void onReceivedError(com.tencent.smtt.sdk.WebView webView, int i5, java.lang.String str, java.lang.String str2) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedError(webView, i5, str, str2);
        } else {
            webViewClient.onReceivedError(webView, i5, str, str2);
        }
    }

    public void onReceivedError(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest, com.tencent.smtt.export.external.interfaces.WebResourceError webResourceError) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        } else {
            webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    public void onReceivedHttpAuthRequest(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.HttpAuthHandler httpAuthHandler, java.lang.String str, java.lang.String str2) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } else {
            webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }
    }

    public void onReceivedHttpError(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest, com.tencent.smtt.export.external.interfaces.WebResourceResponse webResourceResponse) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } else {
            webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    public void onReceivedLoginRequest(com.tencent.smtt.sdk.WebView webView, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedLoginRequest(webView, str, str2, str3);
        } else {
            webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
        }
    }

    public void onReceivedSslError(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.SslErrorHandler sslErrorHandler, com.tencent.smtt.export.external.interfaces.SslError sslError) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        } else {
            webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    public boolean onRenderProcessGone(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.sdk.WebViewClient.RenderProcessGoneDetail renderProcessGoneDetail) {
        return ((java.lang.Boolean) com.msec.vvv.a(1589, new java.lang.Object[]{this, webView, renderProcessGoneDetail})).booleanValue();
    }

    public void onScaleChanged(com.tencent.smtt.sdk.WebView webView, float f5, float f6) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onScaleChanged(webView, f5, f6);
        } else {
            webViewClient.onScaleChanged(webView, f5, f6);
        }
    }

    @java.lang.Deprecated
    public void onTooManyRedirects(com.tencent.smtt.sdk.WebView webView, android.os.Message message, android.os.Message message2) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onTooManyRedirects(webView, message, message2);
        } else {
            webViewClient.onTooManyRedirects(webView, message, message2);
        }
    }

    public void onUnhandledKeyEvent(com.tencent.smtt.sdk.WebView webView, android.view.KeyEvent keyEvent) {
        com.tencent.smtt.sdk.WebViewClient webViewClient = this.f3727a;
        if (webViewClient == null) {
            super.onUnhandledKeyEvent(webView, keyEvent);
        } else {
            webViewClient.onUnhandledKeyEvent(webView, keyEvent);
        }
    }

    public com.tencent.smtt.export.external.interfaces.WebResourceResponse shouldInterceptRequest(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest) {
        return (com.tencent.smtt.export.external.interfaces.WebResourceResponse) com.msec.vvv.a(1588, new java.lang.Object[]{this, webView, webResourceRequest});
    }

    public com.tencent.smtt.export.external.interfaces.WebResourceResponse shouldInterceptRequest(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest, android.os.Bundle bundle) {
        return (com.tencent.smtt.export.external.interfaces.WebResourceResponse) com.msec.vvv.a(1587, new java.lang.Object[]{this, webView, webResourceRequest, bundle});
    }

    public com.tencent.smtt.export.external.interfaces.WebResourceResponse shouldInterceptRequest(com.tencent.smtt.sdk.WebView webView, java.lang.String str) {
        return (com.tencent.smtt.export.external.interfaces.WebResourceResponse) com.msec.vvv.a(1586, new java.lang.Object[]{this, webView, str});
    }

    public boolean shouldOverrideKeyEvent(com.tencent.smtt.sdk.WebView webView, android.view.KeyEvent keyEvent) {
        return ((java.lang.Boolean) com.msec.vvv.a(1585, new java.lang.Object[]{this, webView, keyEvent})).booleanValue();
    }

    public boolean shouldOverrideUrlLoading(com.tencent.smtt.sdk.WebView webView, com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest) {
        return ((java.lang.Boolean) com.msec.vvv.a(1584, new java.lang.Object[]{this, webView, webResourceRequest})).booleanValue();
    }

    public boolean shouldOverrideUrlLoading(com.tencent.smtt.sdk.WebView webView, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1599, new java.lang.Object[]{this, webView, str})).booleanValue();
    }
}
