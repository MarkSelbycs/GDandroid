package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bc extends android.webkit.WebViewClient implements com.msec.be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.webkit.WebViewClient f3691a = null;

    @Override // com.msec.be
    public java.lang.Object a() {
        return this.f3691a;
    }

    @Override // com.msec.be
    public void a(java.lang.Object obj) {
        if (obj instanceof com.msec.bc) {
            return;
        }
        this.f3691a = (android.webkit.WebViewClient) obj;
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(android.webkit.WebView webView, java.lang.String str, boolean z4) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.doUpdateVisitedHistory(webView, str, z4);
        } else {
            webViewClient.doUpdateVisitedHistory(webView, str, z4);
        }
    }

    public boolean equals(java.lang.Object obj) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        return webViewClient == null ? super.equals(obj) : webViewClient.equals(obj);
    }

    public int hashCode() {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        return webViewClient == null ? super.hashCode() : webViewClient.hashCode();
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(android.webkit.WebView webView, android.os.Message message, android.os.Message message2) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onFormResubmission(webView, message, message2);
        } else {
            webViewClient.onFormResubmission(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(android.webkit.WebView webView, java.lang.String str) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onLoadResource(webView, str);
        } else {
            webViewClient.onLoadResource(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageCommitVisible(android.webkit.WebView webView, java.lang.String str) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onPageCommitVisible(webView, str);
        } else {
            webViewClient.onPageCommitVisible(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(android.webkit.WebView webView, java.lang.String str) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onPageFinished(webView, str);
        } else {
            webViewClient.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(android.webkit.WebView webView, java.lang.String str, android.graphics.Bitmap bitmap) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onPageStarted(webView, str, bitmap);
        } else {
            webViewClient.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedClientCertRequest(android.webkit.WebView webView, android.webkit.ClientCertRequest clientCertRequest) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onReceivedClientCertRequest(webView, clientCertRequest);
        } else {
            webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(android.webkit.WebView webView, int i5, java.lang.String str, java.lang.String str2) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onReceivedError(webView, i5, str, str2);
        } else {
            webViewClient.onReceivedError(webView, i5, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(android.webkit.WebView webView, android.webkit.WebResourceRequest webResourceRequest, android.webkit.WebResourceError webResourceError) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        } else {
            webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(android.webkit.WebView webView, android.webkit.HttpAuthHandler httpAuthHandler, java.lang.String str, java.lang.String str2) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } else {
            webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(android.webkit.WebView webView, android.webkit.WebResourceRequest webResourceRequest, android.webkit.WebResourceResponse webResourceResponse) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } else {
            webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedLoginRequest(android.webkit.WebView webView, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onReceivedLoginRequest(webView, str, str2, str3);
        } else {
            webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(android.webkit.WebView webView, android.webkit.SslErrorHandler sslErrorHandler, android.net.http.SslError sslError) {
        com.msec.vvv.a(1649, new java.lang.Object[]{this, webView, sslErrorHandler, sslError});
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(android.webkit.WebView webView, android.webkit.RenderProcessGoneDetail renderProcessGoneDetail) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        return webViewClient == null ? super.onRenderProcessGone(webView, renderProcessGoneDetail) : webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    public void onSafeBrowsingHit(android.webkit.WebView webView, android.webkit.WebResourceRequest webResourceRequest, int i5, android.webkit.SafeBrowsingResponse safeBrowsingResponse) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onSafeBrowsingHit(webView, webResourceRequest, i5, safeBrowsingResponse);
        } else {
            webViewClient.onSafeBrowsingHit(webView, webResourceRequest, i5, safeBrowsingResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(android.webkit.WebView webView, float f5, float f6) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onScaleChanged(webView, f5, f6);
        } else {
            webViewClient.onScaleChanged(webView, f5, f6);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onTooManyRedirects(android.webkit.WebView webView, android.os.Message message, android.os.Message message2) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onTooManyRedirects(webView, message, message2);
        } else {
            webViewClient.onTooManyRedirects(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(android.webkit.WebView webView, android.view.KeyEvent keyEvent) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        if (webViewClient == null) {
            super.onUnhandledKeyEvent(webView, keyEvent);
        } else {
            webViewClient.onUnhandledKeyEvent(webView, keyEvent);
        }
    }

    @Override // android.webkit.WebViewClient
    public android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView webView, android.webkit.WebResourceRequest webResourceRequest) {
        return (android.webkit.WebResourceResponse) com.msec.vvv.a(1648, new java.lang.Object[]{this, webView, webResourceRequest});
    }

    @Override // android.webkit.WebViewClient
    public android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView webView, java.lang.String str) {
        return (android.webkit.WebResourceResponse) com.msec.vvv.a(1663, new java.lang.Object[]{this, webView, str});
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(android.webkit.WebView webView, android.view.KeyEvent keyEvent) {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        return webViewClient == null ? super.shouldOverrideKeyEvent(webView, keyEvent) : webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(android.webkit.WebView webView, android.webkit.WebResourceRequest webResourceRequest) {
        return ((java.lang.Boolean) com.msec.vvv.a(1662, new java.lang.Object[]{this, webView, webResourceRequest})).booleanValue();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(android.webkit.WebView webView, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1661, new java.lang.Object[]{this, webView, str})).booleanValue();
    }

    public java.lang.String toString() {
        android.webkit.WebViewClient webViewClient = this.f3691a;
        return webViewClient == null ? super.toString() : webViewClient.toString();
    }
}
