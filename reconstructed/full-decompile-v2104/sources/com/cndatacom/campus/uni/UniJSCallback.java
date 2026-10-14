package com.cndatacom.campus.uni;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class UniJSCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.app.Activity f3599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.String f3600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.webkit.WebView f3601c;

    public UniJSCallback(android.app.Activity activity, android.webkit.WebView webView, java.lang.String str) {
        this.f3599a = activity;
        this.f3601c = webView;
        this.f3600b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(com.alibaba.fastjson.JSONObject jSONObject) {
        c(java.lang.String.format("HandlePluginCallBack(%s)", jSONObject.toString()));
    }

    public final void b(final com.alibaba.fastjson.JSONObject jSONObject) {
        this.f3599a.runOnUiThread(new java.lang.Runnable() { // from class: q2.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5830a.e(jSONObject);
            }
        });
    }

    public final void c(java.lang.String str) {
        this.f3601c.loadUrl("javascript:" + str);
    }

    public final void d(java.lang.String str, java.lang.Object obj) {
        try {
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
            jSONObject.put("callbackId", (java.lang.Object) str);
            jSONObject.put("data", obj);
            b(jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void invoke(java.lang.String str) {
        d(this.f3600b, str);
    }

    public void invokeAndKeepAlive(com.alibaba.fastjson.JSONObject jSONObject) {
        try {
            com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
            jSONObject2.put("callbackId", (java.lang.Object) this.f3600b);
            jSONObject2.put("keepAlive", (java.lang.Object) java.lang.Boolean.TRUE);
            jSONObject2.put("data", (java.lang.Object) jSONObject);
            b(jSONObject2);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void invoke(boolean z4) {
        d(this.f3600b, java.lang.Boolean.valueOf(z4));
    }

    public void invoke(com.alibaba.fastjson.JSONObject jSONObject) {
        d(this.f3600b, jSONObject);
    }
}
