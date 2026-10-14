package com.cndatacom.campus;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PortalMananger {
    public android.app.AlertDialog A;
    public android.widget.ImageView B;
    public android.widget.TextView C;
    public android.widget.LinearLayout D;
    public com.cndatacom.campus.receiver.AppReceiver H;
    public android.app.AlertDialog I;
    public android.app.AlertDialog J;
    public android.app.AlertDialog K;
    public android.widget.TextView L;
    public android.widget.TextView M;
    public android.widget.EditText N;
    public android.widget.TextView O;
    public android.widget.RelativeLayout S;
    public android.widget.TextView T;
    public java.lang.String U;
    public android.app.AlertDialog V;
    public android.widget.TextView W;
    public android.app.AlertDialog Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public android.app.AlertDialog f3334a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public android.app.AlertDialog f3336b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public android.app.AlertDialog f3338c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public android.view.View f3340d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public com.cndatacom.download.manager.DownloadTaskManager f3342e0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public com.cndatacom.campus.permission.v2.PermissionCheckerV2 f3346g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public android.app.Activity f3348h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public android.webkit.WebView f3350i0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.os.Handler f3369v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public android.os.HandlerThread f3370w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public java.util.concurrent.ExecutorService f3371x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3333a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3335b = 2000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f3337c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3339d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3341e = 60000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3343f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3345g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3347h = 5000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3349i = java.lang.Math.abs(-1134969061);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3351j = java.lang.Math.abs(-705550656);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3353k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3355l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3357m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3359n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3361o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3363p = 6;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f3364q = 7;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f3365r = 8;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f3366s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f3367t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f3368u = 11;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public android.util.ArrayMap<java.lang.Integer, com.cndatacom.campus.uni.UniJSCallback> f3372y = new android.util.ArrayMap<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f3373z = false;
    public boolean E = false;
    public volatile java.lang.String F = "";
    public int G = -1;
    public int P = 60;
    public boolean Q = false;
    public int R = 60;
    public int X = 5;
    public int Y = 5;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f3344f0 = 0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public android.util.ArrayMap<java.lang.Integer, com.cndatacom.campus.PortalMananger.PermissionRunnable> f3352j0 = new android.util.ArrayMap<>();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent f3354k0 = new com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent() { // from class: com.cndatacom.campus.PortalMananger.1
        @Override // com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent
        public void cancel() {
            com.cndatacom.campus.PortalMananger.this.f3338c0.dismiss();
        }

        @Override // com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent
        public void finish(java.lang.String str) {
            android.net.Uri uriF = androidx.core.content.FileProvider.f(com.cndatacom.campus.PortalMananger.this.c1(), com.cndatacom.campus.PortalMananger.this.c1().getPackageName(), new java.io.File(str));
            android.content.Intent intent = new android.content.Intent("android.intent.action.VIEW");
            intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.addFlags(3);
            intent.setDataAndType(uriF, "application/vnd.android.package-archive");
            com.cndatacom.campus.PortalMananger.this.Z0().startActivity(intent);
        }

        @Override // com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent
        public void retry(final java.lang.String str) {
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.1.1
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.Y0(str);
                }
            });
        }
    };

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public java.lang.Runnable f3356l0 = new com.cndatacom.campus.PortalMananger.AnonymousClass2();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public java.lang.Runnable f3358m0 = new com.cndatacom.campus.PortalMananger.AnonymousClass3();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public volatile boolean f3360n0 = false;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public com.cndatacom.sdk.portal.interfaces.PortalEvent f3362o0 = new com.cndatacom.sdk.portal.interfaces.PortalEvent() { // from class: com.cndatacom.campus.PortalMananger.4
        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handleConnectFailMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleConnectFailMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 3, returnUIResult);
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.5
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.h1(contextC1);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handleConnectedMsg(final boolean z4, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.campus.PortalMananger.this.f3337c = false;
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleConnectedMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 2, returnUIResult);
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
            if (configInfoObtain.hasCache()) {
                configInfoObtain.clearCache().save();
            }
            final boolean z5 = com.cndatacom.campus.PortalMananger.this.f3344f0 != 2;
            com.cndatacom.campus.PortalMananger.this.f3344f0 = 2;
            configInfoObtain.setLoginState(com.cndatacom.campus.PortalMananger.this.f3344f0).save();
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.4
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.i1(contextC1, z4, z5);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handleConnectingMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleConnectingMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 1, returnUIResult);
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handleDisConnectingMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleDisConnectingMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 11, returnUIResult);
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.6
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.p1(contextC1);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handleDisconnectedMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.campus.PortalMananger.this.f3344f0 = 4;
            com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().setLoginState(com.cndatacom.campus.PortalMananger.this.f3344f0).save();
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.campus.PortalMananger.this.U2(contextC1);
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleDisconnectedMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 12, returnUIResult);
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.7
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.j1(contextC1);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handleNetworkInfoMsg(final com.cndatacom.sdk.portal.entity.NetInfo netInfo) {
            com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = new com.cndatacom.sdk.portal.entity.ReturnUIResult("", "", netInfo.toString());
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleNetworkInfoMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(0, 0, returnUIResult);
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.1
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.k1(contextC1, netInfo);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handlePreConnectFailMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.campus.PortalMananger.this.f3337c = false;
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handlePreConnectFailMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 32, returnUIResult);
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.3
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.l1(contextC1);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handlePreConnectedMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.campus.PortalMananger.this.f3337c = false;
            final android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
            com.cndatacom.campus.PortalMananger.this.f3344f0 = 1;
            com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().setLoginState(com.cndatacom.campus.PortalMananger.this.f3344f0).save();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handlePreConnectedMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 31, returnUIResult);
            com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.4.2
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.m1(contextC1);
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.interfaces.PortalEvent
        public void handlePreConnectingMsg(com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handlePreConnectingMsg->" + returnUIResult.toJsonString());
            com.cndatacom.campus.PortalMananger.this.M0(51, 33, returnUIResult);
        }
    };

    /* JADX INFO: renamed from: com.cndatacom.campus.PortalMananger$2, reason: invalid class name */
    public class AnonymousClass2 implements java.lang.Runnable {
        public AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            com.cndatacom.campus.PortalMananger.o0(com.cndatacom.campus.PortalMananger.this);
            if (com.cndatacom.campus.PortalMananger.this.Y > 0) {
                com.cndatacom.campus.PortalMananger.this.W.setText("去充值(" + com.cndatacom.campus.PortalMananger.this.Y + ")");
                com.cndatacom.campus.PortalMananger.this.f3369v.postDelayed(com.cndatacom.campus.PortalMananger.this.f3356l0, 1000L);
                return;
            }
            com.cndatacom.campus.PortalMananger portalMananger = com.cndatacom.campus.PortalMananger.this;
            portalMananger.Y = portalMananger.X;
            com.cndatacom.campus.PortalMananger.this.W.setText("去充值");
            com.cndatacom.campus.PortalMananger.this.V0();
            com.cndatacom.campus.PortalMananger.this.N0(com.cndatacom.campus.PortalMananger.this.U + "_confirm", new org.json.JSONObject());
        }

        @Override // java.lang.Runnable
        public void run() {
            com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3579a.b();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.cndatacom.campus.PortalMananger$26, reason: invalid class name */
    public class AnonymousClass26 implements com.cndatacom.sdk.portal.util.ImageUtil.ImageCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.cndatacom.campus.uni.UniJSCallback f3418a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.app.Activity f3419b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.cndatacom.sdk.portal.entity.ADInfo f3420c;

        /* JADX INFO: renamed from: com.cndatacom.campus.PortalMananger$26$1, reason: invalid class name */
        public class AnonymousClass1 implements java.lang.Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.campus.PortalMananger.this.B.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.26.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(android.view.View view) {
                        java.lang.String href = com.cndatacom.campus.PortalMananger.AnonymousClass26.this.f3420c.getHref();
                        final java.lang.String adid = com.cndatacom.campus.PortalMananger.AnonymousClass26.this.f3420c.getAdid();
                        if (!android.text.TextUtils.isEmpty(adid)) {
                            com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.26.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    com.cndatacom.sdk.portal.util.ExLogUtil.i("handleSplashADClickModule->");
                                    com.cndatacom.campus.PortalMananger.this.G1(adid);
                                }
                            });
                        }
                        if (android.text.TextUtils.isEmpty(href)) {
                            return;
                        }
                        com.cndatacom.sdk.portal.util.IntentUtil.inBrowserOpen(com.cndatacom.campus.PortalMananger.this.Z0(), href);
                    }
                });
                android.os.Message messageObtain = android.os.Message.obtain();
                messageObtain.what = 3;
                messageObtain.obj = 5000;
                com.cndatacom.campus.PortalMananger.this.f3369v.sendMessage(messageObtain);
                com.cndatacom.campus.PortalMananger.this.A.show();
            }
        }

        public AnonymousClass26(com.cndatacom.campus.uni.UniJSCallback uniJSCallback, android.app.Activity activity, com.cndatacom.sdk.portal.entity.ADInfo aDInfo) {
            this.f3418a = uniJSCallback;
            this.f3419b = activity;
            this.f3420c = aDInfo;
        }

        @Override // com.cndatacom.sdk.portal.util.ImageUtil.ImageCallback
        public void success() {
            com.cndatacom.campus.PortalMananger.this.J0(this.f3418a);
            this.f3419b.runOnUiThread(new com.cndatacom.campus.PortalMananger.AnonymousClass26.AnonymousClass1());
        }
    }

    /* JADX INFO: renamed from: com.cndatacom.campus.PortalMananger$3, reason: invalid class name */
    public class AnonymousClass3 implements java.lang.Runnable {
        public AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            java.lang.Object objValueOf;
            com.cndatacom.campus.PortalMananger.w(com.cndatacom.campus.PortalMananger.this);
            if (com.cndatacom.campus.PortalMananger.this.R <= 0) {
                com.cndatacom.campus.PortalMananger portalMananger = com.cndatacom.campus.PortalMananger.this;
                portalMananger.R = portalMananger.P;
                com.cndatacom.campus.PortalMananger.this.O.setText("点击获取");
                com.cndatacom.campus.PortalMananger.this.Q = false;
                return;
            }
            android.widget.TextView textView = com.cndatacom.campus.PortalMananger.this.O;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("重新获取(");
            if (com.cndatacom.campus.PortalMananger.this.R < 10) {
                objValueOf = com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS + com.cndatacom.campus.PortalMananger.this.R;
            } else {
                objValueOf = java.lang.Integer.valueOf(com.cndatacom.campus.PortalMananger.this.R);
            }
            sb.append(objValueOf);
            sb.append(")");
            textView.setText(sb.toString());
            com.cndatacom.campus.PortalMananger.this.f3369v.postDelayed(com.cndatacom.campus.PortalMananger.this.f3358m0, 1000L);
        }

        @Override // java.lang.Runnable
        public void run() {
            com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3580a.b();
                }
            });
        }
    }

    public class PermissionRunnable implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3509a;

        public int getRequestCode() {
            return this.f3509a;
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public PermissionRunnable(int i5) {
            this.f3509a = i5;
        }
    }

    public PortalMananger(android.app.Activity activity, android.webkit.WebView webView) {
        this.f3348h0 = activity;
        this.f3350i0 = webView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1() {
        com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(c1(), "个人信息已复制到剪贴板");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V1(java.lang.String str, android.view.View view) {
        V0();
        N0(str + "_cancel", new org.json.JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W1(java.lang.String str, android.view.View view) {
        V0();
        N0(str + "_confirm", new org.json.JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        n2(com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y1(final java.lang.String str, final java.lang.String str2, android.view.View view) {
        final java.lang.String string = this.N.getText().toString();
        if (android.text.TextUtils.isEmpty(string)) {
            return;
        }
        W0();
        this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f3533a.X1(str, str2, string);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z1() {
        this.L.setVisibility(0);
        this.M.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a2(java.lang.String str) {
        boolean zOnGetVerificatioCode = com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onGetVerificatioCode(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), str);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onGetVerificatioCode->" + zOnGetVerificatioCode);
        if (zOnGetVerificatioCode) {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3550a.Z1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b2(final java.lang.String str, android.view.View view) {
        if (this.Q) {
            return;
        }
        this.L.setVisibility(8);
        this.O.setText("重新获取(" + this.R + ")");
        this.Q = true;
        this.f3369v.postDelayed(this.f3358m0, 1000L);
        this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f3531a.a2(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c2(java.lang.String str, android.view.View view) {
        W0();
        N0(str + "_cancel", new org.json.JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(java.lang.String str, java.lang.String str2, android.view.View view) {
        this.f3334a0.dismiss();
        com.cndatacom.sdk.portal.util.IntentUtil.inBrowserOpen(Z0(), str);
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            jSONObject2.put("type", "clickModule");
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            jSONObject3.put("type", 2);
            jSONObject3.put("moduleId", str2);
            jSONObject2.put("data", jSONObject3);
            jSONObject.put("eventName", "handleListen");
            jSONObject.put("result", jSONObject2);
            N0("emitEvent", jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e2(android.graphics.Bitmap bitmap, final java.lang.String str, final java.lang.String str2) {
        android.app.AlertDialog adDialog = com.cndatacom.dialog.Dialog.getAdDialog(Z0(), bitmap, new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.l
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.f3546a.d2(str, str2, view);
            }
        });
        this.f3334a0 = adDialog;
        adDialog.show();
    }

    public static /* synthetic */ int o0(com.cndatacom.campus.PortalMananger portalMananger) {
        int i5 = portalMananger.Y;
        portalMananger.Y = i5 - 1;
        return i5;
    }

    public static void startService(android.content.Context context) {
        if (com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().isVpn()) {
            if (!com.cndatacom.sdk.portal.util.ServiceUtil.isServiceRunning(context, com.cndatacom.campus.service.HoldVpnService.class.getName())) {
                com.cndatacom.campus.service.HoldVpnService.start(context);
                return;
            } else {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService isServiceRunning");
                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, 6);
                return;
            }
        }
        if (!com.cndatacom.sdk.portal.util.ServiceUtil.isServiceRunning(context, com.cndatacom.campus.service.HoldService.class.getName())) {
            com.cndatacom.campus.service.HoldService.start(context);
        } else {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService isServiceRunning");
            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, 6);
        }
    }

    public static /* synthetic */ int w(com.cndatacom.campus.PortalMananger portalMananger) {
        int i5 = portalMananger.R;
        portalMananger.R = i5 - 1;
        return i5;
    }

    public final void A1(final java.lang.String str, java.lang.String str2) {
        this.U = str;
        android.app.AlertDialog alertDialog = this.V;
        if (alertDialog == null || !alertDialog.isShowing()) {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(Z0());
            android.view.View viewInflate = android.view.LayoutInflater.from(Z0()).inflate(com.cndatacom.campus.R.layout.alert_recharge_pop, (android.view.ViewGroup) null);
            ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.recharge_message_tv)).setText(str2);
            this.W = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.recharge_confirm_btn_tv);
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.recharge_cancel_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.j
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    this.f3541a.V1(str, view);
                }
            });
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.recharge_confirm_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.i
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    this.f3539a.W1(str, view);
                }
            });
            builder.setView(viewInflate);
            android.app.AlertDialog alertDialogCreate = builder.create();
            this.V = alertDialogCreate;
            alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
            this.V.setCancelable(false);
            this.V.setCanceledOnTouchOutside(false);
            this.V.show();
            this.W.setText("去充值(" + this.Y + ")");
            this.f3369v.postDelayed(this.f3356l0, 1000L);
        }
    }

    public final void A2() {
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            android.content.Context contextC1 = c1();
            jSONObject.put("phoneType", "android");
            if (android.os.Build.VERSION.SDK_INT >= 29) {
                jSONObject.put("clipboard", "");
            }
            jSONObject.put("location", com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationPermission(contextC1));
            jSONObject.put("vpn", android.net.VpnService.prepare(contextC1) == null);
            jSONObject.put("battery", com.cndatacom.sdk.portal.util.BatteryUtil.isIgnoringBatteryOptimizations(contextC1));
            N0("HandleQueryPermissionResult", jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void B1() {
        android.content.Context contextC1 = c1();
        if (!this.f3360n0 && com.cndatacom.sdk.portal.util.NetUtil.isWifiConnected(contextC1) && com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationPermission(contextC1) && com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationServicePermission(contextC1) && this.f3362o0 != null) {
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = new com.cndatacom.sdk.portal.entity.NetInfo(contextC1, com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().isOpenSSID());
            if (!netInfo.isUnknown()) {
                this.f3360n0 = true;
            }
            this.f3362o0.handleNetworkInfoMsg(netInfo);
        }
    }

    public final void B2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.JSON.parseObject(com.cndatacom.personal.PersonalManager.getInstance().queryPersonalInfo(c1(), jSONArray.getString(0), jSONArray.getString(1)));
        java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.Object>> it = object.entrySet().iterator();
        while (it.hasNext()) {
            java.lang.String key = it.next().getKey();
            object.put(key, (java.lang.Object) com.alibaba.fastjson.JSON.parseArray(object.getString(key)));
        }
        uniJSCallback.invoke(object);
    }

    public final void C1(android.content.Context context, android.content.Intent intent) {
        U2(context);
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = (com.cndatacom.sdk.portal.entity.ReturnUIResult) intent.getBundleExtra(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_BUNDLEKEY).getParcelable(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_DATA_KEY);
        com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent = this.f3362o0;
        if (portalEvent != null) {
            portalEvent.handleConnectFailMsg(returnUIResult);
        }
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        configInfoObtain.setLoginState(3).save();
        if (com.cndatacom.sdk.portal.http.CdcProtocol.term(context, configInfoObtain, com.cndatacom.sdk.portal.entity.CdcErrCode.TERM_REASON_SHARE).isSuccess()) {
            configInfoObtain.save();
            try {
                java.lang.Thread.sleep(5000L);
            } catch (java.lang.InterruptedException e5) {
                e5.printStackTrace();
            }
        }
        V2();
    }

    public final void C2() {
        if (!com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
            com.cndatacom.sdk.portal.manager.DetectManager.getInstance().useIndexDetectUrlData();
        }
        android.content.Context contextC1 = c1();
        P0(contextC1, com.cndatacom.sdk.portal.util.NetUtil.getWifiState(contextC1), true, true);
    }

    public final void D1(android.content.Context context, com.cndatacom.sdk.portal.entity.ADInfo aDInfo, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_AD, aDInfo.getUrl().hashCode() + ".png");
        if (new java.io.File(contextFilePath).exists() && !this.f3373z && this.f3369v.hasMessages(4)) {
            this.f3369v.removeMessages(4);
            android.app.Activity activityZ0 = Z0();
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activityZ0, android.R.style.Theme.DeviceDefault.Light.NoActionBar);
            android.view.View viewInflate = android.view.LayoutInflater.from(activityZ0).inflate(com.cndatacom.campus.R.layout.alert_splash_ad_layout, (android.view.ViewGroup) null);
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.ad_tip_rrl);
            this.D = linearLayout;
            linearLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.25
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view) {
                    com.cndatacom.campus.PortalMananger.this.f3369v.sendEmptyMessage(4);
                }
            });
            this.C = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.ad_time_tv);
            this.B = (android.widget.ImageView) viewInflate.findViewById(com.cndatacom.campus.R.id.ad_img);
            builder.setView(viewInflate);
            android.app.AlertDialog alertDialogCreate = builder.create();
            this.A = alertDialogCreate;
            alertDialogCreate.setCancelable(false);
            this.A.setCanceledOnTouchOutside(false);
            android.view.Display defaultDisplay = ((android.view.WindowManager) context.getSystemService("window")).getDefaultDisplay();
            android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            com.cndatacom.sdk.portal.util.ImageUtil.loadImage(context, contextFilePath, aDInfo.getUrl(), this.B, displayMetrics.widthPixels, displayMetrics.heightPixels, new com.cndatacom.campus.PortalMananger.AnonymousClass26(uniJSCallback, activityZ0, aDInfo));
        }
    }

    public final void D2() {
        com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().shareLog(c1(), Z0());
    }

    public final void E1(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        com.cndatacom.sdk.portal.entity.ADInfo advData = com.cndatacom.sdk.portal.http.CdcProtocol.getAdvData(context, configInfo);
        if (advData == null) {
            return;
        }
        android.view.Display defaultDisplay = ((android.view.WindowManager) context.getSystemService("window")).getDefaultDisplay();
        android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i5 = displayMetrics.widthPixels;
        int i6 = displayMetrics.heightPixels;
        java.lang.String url = advData.getUrl();
        java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_AD, url.hashCode() + ".png");
        if (new java.io.File(contextFilePath).exists()) {
            return;
        }
        android.graphics.Bitmap bitmapLoadImageFormUrl = com.cndatacom.sdk.portal.util.ImageUtil.loadImageFormUrl(context, url, i5, i6);
        if (bitmapLoadImageFormUrl != null) {
            com.cndatacom.sdk.portal.util.ImageUtil.writeBitmapToFile(contextFilePath, bitmapLoadImageFormUrl, 100);
        } else {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("handleSplashAD  -->下载扉页广告失败");
        }
    }

    public final void E2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        boolean zEquals;
        boolean z4;
        try {
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
            this.F = uniJSCallback.hashCode() + "";
            android.content.Context contextC1 = c1();
            if ("2".equals(jSONArray.getString(0))) {
                jSONObject.put("checkItem", (java.lang.Object) (-1));
                uniJSCallback.invoke(jSONObject);
                return;
            }
            if (com.cndatacom.sdk.portal.util.NetUtil.getWifiState(contextC1) == 1) {
                if (!Q1(uniJSCallback, this.F)) {
                    jSONObject.put("result", (java.lang.Object) (-1));
                    jSONObject.put("checkItem", (java.lang.Object) 1);
                    L0(uniJSCallback, jSONObject, true);
                }
            } else if (!Q1(uniJSCallback, this.F)) {
                jSONObject.put("result", (java.lang.Object) 0);
                jSONObject.put("checkItem", (java.lang.Object) 1);
                L0(uniJSCallback, jSONObject, true);
            }
            if (Q1(uniJSCallback, this.F)) {
                return;
            }
            boolean zIsWifiConnected = com.cndatacom.sdk.portal.util.NetUtil.isWifiConnected(contextC1);
            com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
            if (zIsWifiConnected) {
                com.cndatacom.sdk.portal.entity.NetInfo netInfo = new com.cndatacom.sdk.portal.entity.NetInfo(contextC1, false);
                int iDetect = com.cndatacom.sdk.portal.http.CdcProtocol.detect(contextC1, configInfoObtain, false, true);
                if (iDetect == 200) {
                    zEquals = true;
                } else {
                    zEquals = iDetect == 201 ? com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().getNetInfo().equals(netInfo) : false;
                }
                if (zEquals) {
                    configInfoObtain.setNetInfo(netInfo);
                }
                if (!Q1(uniJSCallback, this.F)) {
                    jSONObject.put("result", (java.lang.Object) java.lang.Integer.valueOf(zEquals ? 0 : -1));
                    jSONObject.put("checkItem", (java.lang.Object) 2);
                    L0(uniJSCallback, jSONObject, true);
                }
            } else {
                if (!Q1(uniJSCallback, this.F)) {
                    jSONObject.put("result", (java.lang.Object) (-1));
                    jSONObject.put("checkItem", (java.lang.Object) 2);
                    L0(uniJSCallback, jSONObject, true);
                }
                zEquals = false;
            }
            if (Q1(uniJSCallback, this.F)) {
                return;
            }
            if (zEquals) {
                com.cndatacom.sdk.portal.entity.NetInfo netInfo2 = configInfoObtain.getNetInfo();
                z4 = netInfo2.getIpv4().equals(configInfoObtain.getWlanuserip()) || netInfo2.getIpv6().equals(configInfoObtain.getWlanuserip());
                if (!Q1(uniJSCallback, this.F)) {
                    jSONObject.put("result", (java.lang.Object) java.lang.Integer.valueOf(z4 ? 0 : -1));
                    jSONObject.put("checkItem", (java.lang.Object) 3);
                    L0(uniJSCallback, jSONObject, true);
                }
            } else {
                if (!Q1(uniJSCallback, this.F)) {
                    jSONObject.put("result", (java.lang.Object) (-1));
                    jSONObject.put("checkItem", (java.lang.Object) 3);
                    L0(uniJSCallback, jSONObject, true);
                }
                z4 = false;
            }
            if (Q1(uniJSCallback, this.F)) {
                return;
            }
            if (z4) {
                boolean zIsSuccess = com.cndatacom.sdk.portal.http.CdcProtocol.ticket(contextC1, configInfoObtain).isSuccess();
                if (!Q1(uniJSCallback, this.F)) {
                    jSONObject.put("result", (java.lang.Object) java.lang.Integer.valueOf(zIsSuccess ? 0 : -1));
                    jSONObject.put("checkItem", (java.lang.Object) 4);
                    L0(uniJSCallback, jSONObject, true);
                }
            } else if (!Q1(uniJSCallback, this.F)) {
                jSONObject.put("result", (java.lang.Object) (-1));
                jSONObject.put("checkItem", (java.lang.Object) 4);
                L0(uniJSCallback, jSONObject, true);
            }
            if (Q1(uniJSCallback, this.F)) {
                return;
            }
            if (!zIsWifiConnected) {
                if (Q1(uniJSCallback, this.F)) {
                    return;
                }
                jSONObject.put("result", (java.lang.Object) (-1));
                jSONObject.put("checkItem", (java.lang.Object) 5);
                L0(uniJSCallback, jSONObject, false);
                return;
            }
            java.lang.String funcfgUrl = configInfoObtain.getFuncfgUrl("HomePage", contextC1.getString(com.cndatacom.campus.R.string.home_page));
            if (android.text.TextUtils.isEmpty(funcfgUrl)) {
                if (Q1(uniJSCallback, this.F)) {
                    return;
                }
                jSONObject.put("result", (java.lang.Object) (-1));
                jSONObject.put("checkItem", (java.lang.Object) 5);
                L0(uniJSCallback, jSONObject, false);
                return;
            }
            boolean zIsSuccessful = new com.cndatacom.sdk.portal.http.HttpClient().get(funcfgUrl).isSuccessful();
            if (Q1(uniJSCallback, this.F)) {
                return;
            }
            jSONObject.put("result", (java.lang.Object) java.lang.Integer.valueOf(zIsSuccessful ? 0 : -1));
            jSONObject.put("checkItem", (java.lang.Object) 5);
            L0(uniJSCallback, jSONObject, false);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void F1(final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        this.f3372y.put(java.lang.Integer.valueOf(this.f3349i), uniJSCallback);
        this.f3369v.sendEmptyMessageDelayed(4, 5000L);
        final android.content.Context contextC1 = c1();
        final com.cndatacom.sdk.portal.entity.ADInfo advData = com.cndatacom.sdk.portal.http.CdcProtocol.getAdvData(contextC1, com.cndatacom.sdk.portal.entity.ConfigInfo.obtain());
        if (advData != null) {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.24
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.D1(contextC1, advData, uniJSCallback);
                }
            });
        } else if (this.f3369v.hasMessages(4)) {
            this.f3369v.removeMessages(4);
            this.f3369v.sendEmptyMessage(4);
        }
    }

    public final void F2(java.lang.String str) {
        com.cndatacom.campus.work.CheckRegularWorker.getInstance().closeCheckNetRegularly();
        android.content.Context contextC1 = c1();
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        configInfoObtain.setLoginState(3).save();
        com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onTerm(contextC1, configInfoObtain, str, this.f3362o0);
    }

    public final void G1(java.lang.String str) {
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        android.content.Context contextC1 = c1();
        try {
            org.json.JSONArray jSONArray = new org.json.JSONArray(configInfoObtain.getPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.LOCAL_SPLASH_AD_KEY, "[]"));
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("account", configInfoObtain.getUserId());
            jSONObject.put("ostype", "4");
            jSONObject.put("cid", configInfoObtain.getSchoolId(""));
            jSONObject.put("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(contextC1) + "");
            jSONObject.put("clientid", configInfoObtain.getClientId());
            jSONObject.put("stattime", new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()));
            jSONObject.put("count", 1);
            jSONObject.put("type", 2);
            jSONObject.put("moduleId", str);
            jSONArray.put(jSONObject);
            configInfoObtain.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.LOCAL_SPLASH_AD_KEY, jSONArray.toString()).save();
        } catch (org.json.JSONException e5) {
            e5.printStackTrace();
        }
    }

    public final void G2(final java.lang.String str, final com.alibaba.fastjson.JSONArray jSONArray, final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        byte b5 = 1;
        com.cndatacom.sdk.portal.util.ExLogUtil.i("coolMethod->" + str);
        str.hashCode();
        switch (str.hashCode()) {
            case -1920105040:
                b5 = !str.equals("showModal") ? (byte) -1 : (byte) 0;
                break;
            case -1917322321:
                if (!str.equals("showPopup")) {
                    b5 = -1;
                }
                break;
            case -1913642710:
                b5 = !str.equals("showToast") ? (byte) -1 : (byte) 2;
                break;
            case -1740298179:
                b5 = !str.equals("InitMananger") ? (byte) -1 : (byte) 3;
                break;
            case -1693450871:
                b5 = !str.equals("onAskPermission") ? (byte) -1 : (byte) 4;
                break;
            case -1569633115:
                b5 = !str.equals("onIntentAskVpnPage") ? (byte) -1 : (byte) 5;
                break;
            case -1481654716:
                b5 = !str.equals("onAskSSIDPermission") ? (byte) -1 : (byte) 6;
                break;
            case -1348685184:
                b5 = !str.equals("onHandleCheckNetRegular") ? (byte) -1 : (byte) 7;
                break;
            case -1338247159:
                b5 = !str.equals("onRetry") ? (byte) -1 : (byte) 8;
                break;
            case -1101349359:
                b5 = !str.equals("onExitVisitor") ? (byte) -1 : (byte) 9;
                break;
            case -1054545321:
                b5 = !str.equals("onMoveTaskToBack") ? (byte) -1 : (byte) 10;
                break;
            case -1013491673:
                b5 = !str.equals("onAuth") ? (byte) -1 : (byte) 11;
                break;
            case -1012941077:
                b5 = !str.equals("onTerm") ? (byte) -1 : (byte) 12;
                break;
            case -839143208:
                b5 = !str.equals("onQueryPermission") ? (byte) -1 : (byte) 13;
                break;
            case -546271909:
                b5 = !str.equals("onCheckNetGoon") ? (byte) -1 : (byte) 14;
                break;
            case 11858548:
                b5 = !str.equals("onCheckNet") ? (byte) -1 : (byte) 15;
                break;
            case 216239514:
                b5 = !str.equals("hideLoading") ? (byte) -1 : (byte) 16;
                break;
            case 247006579:
                b5 = !str.equals("onExitApplication") ? (byte) -1 : (byte) 17;
                break;
            case 412486861:
                b5 = !str.equals("showCheckBoxModal") ? (byte) -1 : (byte) 18;
                break;
            case 724809599:
                b5 = !str.equals("showLoading") ? (byte) -1 : (byte) 19;
                break;
            case 836904587:
                b5 = !str.equals("hideModal") ? (byte) -1 : (byte) 20;
                break;
            case 2144789448:
                b5 = !str.equals("onIntentVpnPage") ? (byte) -1 : (byte) 21;
                break;
            default:
                b5 = -1;
                break;
        }
        switch (b5) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 10:
            case 13:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                r1(str, jSONArray, uniJSCallback);
                return;
            case 3:
                P1();
                H2();
                break;
            case 7:
            case 8:
            case 9:
            case 11:
            case 12:
            case 14:
            case 15:
                break;
            default:
                this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.6
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.campus.PortalMananger.this.r1(str, jSONArray, uniJSCallback);
                    }
                });
                return;
        }
        this.f3369v.post(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.5
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.campus.PortalMananger.this.r1(str, jSONArray, uniJSCallback);
            }
        });
    }

    public final void H0(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultAuthOtherClient;
        java.lang.String string = jSONArray.getString(0);
        java.lang.String string2 = jSONArray.getString(1);
        java.lang.String string3 = jSONArray.getString(2);
        java.lang.String string4 = jSONArray.getString(3);
        if (android.text.TextUtils.isEmpty(string4)) {
            returnUIResultAuthOtherClient = com.cndatacom.sdk.portal.http.CdcProtocol.authOtherClient(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), string, string2, string3);
        } else {
            returnUIResultAuthOtherClient = com.cndatacom.sdk.portal.http.CdcProtocol.authOtherClient(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), new java.lang.String(android.util.Base64.decode(string4, 2)).trim(), string, string2, string3);
        }
        uniJSCallback.invoke(com.alibaba.fastjson.JSON.parseObject(returnUIResultAuthOtherClient.toJsonString()));
    }

    public final void H1(final java.lang.String str, java.lang.String str2, final java.lang.String str3, final java.lang.String str4) {
        android.app.AlertDialog alertDialog = this.K;
        if (alertDialog == null || !alertDialog.isShowing()) {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(Z0());
            android.view.View viewInflate = android.view.LayoutInflater.from(Z0()).inflate(com.cndatacom.campus.R.layout.alert_vetify_pop, (android.view.ViewGroup) null);
            this.L = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_success_tv);
            this.M = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_error_tv);
            if (!android.text.TextUtils.isEmpty(str2)) {
                this.M.setText(str2);
                this.M.setVisibility(0);
            }
            android.widget.EditText editText = (android.widget.EditText) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_et);
            this.N = editText;
            editText.addTextChangedListener(new android.text.TextWatcher() { // from class: com.cndatacom.campus.PortalMananger.30
                @Override // android.text.TextWatcher
                public void afterTextChanged(android.text.Editable editable) {
                    if (android.text.TextUtils.isEmpty(com.cndatacom.campus.PortalMananger.this.N.getText().toString())) {
                        com.cndatacom.campus.PortalMananger.this.T.setTextColor(android.graphics.Color.parseColor("#a1a1a1"));
                    } else {
                        com.cndatacom.campus.PortalMananger.this.T.setTextColor(android.graphics.Color.parseColor("#42a5f5"));
                    }
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(java.lang.CharSequence charSequence, int i5, int i6, int i7) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(java.lang.CharSequence charSequence, int i5, int i6, int i7) {
                }
            });
            android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_get_btn);
            this.O = textView;
            textView.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.d
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    this.f3527a.b2(str3, view);
                }
            });
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_cancel_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.h
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    this.f3537a.c2(str, view);
                }
            });
            android.widget.RelativeLayout relativeLayout = (android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_confirm_btn);
            this.S = relativeLayout;
            relativeLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.k
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    this.f3543a.Y1(str3, str4, view);
                }
            });
            this.T = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.vetify_confirm_btn_tv);
            builder.setView(viewInflate);
            android.app.AlertDialog alertDialogCreate = builder.create();
            this.K = alertDialogCreate;
            alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
            this.K.setCancelable(false);
            this.K.setCanceledOnTouchOutside(false);
            this.K.show();
        }
    }

    public final void H2() {
        android.content.Context contextC1 = c1();
        final android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) contextC1.getSystemService("connectivity");
        if (connectivityManager != null) {
            android.net.NetworkRequest.Builder builder = new android.net.NetworkRequest.Builder();
            builder.addTransportType(1);
            connectivityManager.requestNetwork(builder.build(), new android.net.ConnectivityManager.NetworkCallback() { // from class: com.cndatacom.campus.PortalMananger.34
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(android.net.Network network) {
                    super.onAvailable(network);
                    connectivityManager.bindProcessToNetwork(network);
                    if (com.cndatacom.campus.PortalMananger.this.E) {
                        com.cndatacom.campus.PortalMananger.this.onNetworkChange();
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(android.net.Network network) {
                    super.onLost(network);
                    if (com.cndatacom.campus.PortalMananger.this.E) {
                        com.cndatacom.campus.PortalMananger.this.onNetworkChange();
                    }
                }
            });
        }
        com.cndatacom.campus.receiver.AppReceiver appReceiver = new com.cndatacom.campus.receiver.AppReceiver();
        this.H = appReceiver;
        appReceiver.setReceiverListener(new com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener() { // from class: com.cndatacom.campus.PortalMananger.35
            @Override // com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener
            public void onReceive(final android.content.Context context, final android.content.Intent intent, final int i5) {
                com.cndatacom.campus.PortalMananger.this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.35.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.campus.PortalMananger.this.z1(context, intent, i5);
                    }
                });
            }
        });
        this.H.registerReceiver(contextC1);
    }

    public final void I0(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        configInfo.putPrivateConfig("dialuptype", "51");
        configInfo.putPrivateConfig("ccmpid", "cpb-factory-app-cz");
        configInfo.putPrivateConfig("recharge-num", "A-%s-%s@%s-100");
        configInfo.putPrivateConfig("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(c1()) + "");
        com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
        configInfo.putPrivateConfig("ip", configInfo.getIpType().booleanValue() ? netInfo.getIpv4() : netInfo.getIpv6());
        configInfo.putPrivateConfig("clientId", configInfo.getClientId());
        configInfo.putPrivateConfig("userAgent", configInfo.getUserAgent(true));
        configInfo.putPrivateConfig("OSVersion", android.os.Build.VERSION.RELEASE);
        configInfo.save();
    }

    public final void I1(com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.content.Context contextC1 = c1();
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put("action", "visitor");
        jSONObject.put("phoneType", "android");
        jSONObject.put("province", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.province));
        jSONObject.put("appName", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.app_name));
        uniJSCallback.invoke(jSONObject);
    }

    public final void I2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        if (com.cndatacom.sdk.portal.util.ApkUtil.runInstalledApp(c1(), jSONArray.getString(0))) {
            uniJSCallback.invoke(true);
        } else {
            uniJSCallback.invoke(false);
        }
    }

    public final void J0(com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
            jSONObject.put("action", "closeSplash");
            uniJSCallback.invokeAndKeepAlive(jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void J1(final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.app.Activity activityZ0 = Z0();
        final android.content.Context contextC1 = c1();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activityZ0);
        android.view.View viewInflate = android.view.LayoutInflater.from(activityZ0).inflate(com.cndatacom.campus.R.layout.alert_visitor_layout, (android.view.ViewGroup) null);
        android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.message_tv);
        java.lang.String strReplaceAll = contextC1.getString(com.cndatacom.campus.R.string.visitor_content_text).replaceAll("\\{appName\\}", contextC1.getString(com.cndatacom.campus.R.string.app_name));
        textView.setText(strReplaceAll);
        com.cndatacom.campus.util.SpannableStringUtil.bindLinkText(contextC1, textView, strReplaceAll, contextC1.getResources().getString(com.cndatacom.campus.R.string.visitor_link_text), false, new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.20
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                com.cndatacom.campus.PortalWebviewActivity.startActivity(com.cndatacom.campus.PortalMananger.this.Z0(), "file:///android_asset/" + contextC1.getString(com.cndatacom.campus.R.string.privacyFilePath), contextC1.getString(com.cndatacom.campus.R.string.dcloud_privacy_prompt_title));
            }
        });
        builder.setView(viewInflate);
        final android.app.AlertDialog alertDialogCreate = builder.create();
        ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.cancel_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.21
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                alertDialogCreate.dismiss();
                com.cndatacom.campus.PortalMananger.this.y1("PrivacyKey", uniJSCallback);
            }
        });
        ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.confirm_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.22
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                alertDialogCreate.dismiss();
                com.cndatacom.campus.PortalMananger.this.f3372y.put(java.lang.Integer.valueOf(com.cndatacom.campus.PortalMananger.this.f3351j), uniJSCallback);
                com.cndatacom.campus.PortalMananger.this.I1(uniJSCallback);
            }
        });
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        alertDialogCreate.show();
    }

    public final void J2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        boolean z4 = false;
        try {
            com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().setCacheData(jSONArray.getString(0), jSONArray.getString(1));
            z4 = true;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        if (uniJSCallback != null) {
            uniJSCallback.invoke(z4);
        }
    }

    public final void K0(final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        if (uniJSCallback == null) {
            return;
        }
        com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.27
            @Override // java.lang.Runnable
            public void run() {
                try {
                    android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
                    com.cndatacom.campus.PortalMananger.this.u1(contextC1);
                    com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
                    jSONObject.put("action", (java.lang.Object) "finish");
                    jSONObject.put("phoneType", (java.lang.Object) "android");
                    jSONObject.put("appName", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.app_name));
                    jSONObject.put("province", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.province));
                    jSONObject.put("verno", (java.lang.Object) java.lang.Integer.valueOf(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(contextC1)));
                    uniJSCallback.invoke(jSONObject);
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                }
            }
        });
    }

    public final void K1() {
        android.content.Context contextC1 = c1();
        if (android.net.VpnService.prepare(contextC1) != null) {
            com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(contextC1, contextC1.getString(com.cndatacom.campus.R.string.vpn_cancel));
        } else {
            com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(contextC1, contextC1.getString(com.cndatacom.campus.R.string.vpn_success));
        }
    }

    public final void K2(android.content.Context context) {
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("title", "SSID显示申请获取位置权限");
            jSONObject.put("gravity", "bottom");
            jSONObject.put("titleBold", true);
            jSONObject.put("contentAlign", "left");
            jSONObject.put("content", "允许后，你可以在网络检测界面查看当前连接SSID（你可以前往[我的-个人信息与权限-系统权限管理-位置信息-开启或关闭此权限]）");
            jSONObject.put("confirmText", "允许");
            jSONObject.put("cancelText", "拒绝");
            com.cndatacom.dialog.Dialog.alert(this.f3348h0, jSONObject, new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.45
                @Override // com.cndatacom.dialog.Dialog.DialogEvent
                public void btnClick(int i5) {
                    if (i5 == -1) {
                        return;
                    }
                    com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(com.cndatacom.campus.PortalMananger.this.c1(), "FINE_LOCATION", false);
                    if (i5 == 1) {
                        com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().setOpenSSID(true).save();
                    }
                    com.cndatacom.campus.PortalMananger.this.O0(false);
                }
            }).show();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void L0(com.cndatacom.campus.uni.UniJSCallback uniJSCallback, com.alibaba.fastjson.JSONObject jSONObject, boolean z4) {
        if (!z4) {
            uniJSCallback.invoke(jSONObject);
            return;
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("callbackNetCheckToolResult -->" + jSONObject);
        uniJSCallback.invokeAndKeepAlive(jSONObject);
        try {
            java.lang.Thread.sleep(1500L);
        } catch (java.lang.InterruptedException e5) {
            e5.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void L1(android.content.Context context, android.content.Intent intent) {
        java.lang.String string = intent.getBundleExtra(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_BUNDLEKEY).getString(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_DATA_KEY, "");
        if (android.text.TextUtils.isEmpty(string)) {
            return;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(string);
            java.lang.String strOptString = jSONObject.optString("type", "");
            byte b5 = -1;
            switch (strOptString.hashCode()) {
                case -1865432255:
                    if (strOptString.equals("vpnservice")) {
                        b5 = 2;
                    }
                    break;
                case -1220914564:
                    if (strOptString.equals("moduleClick")) {
                        b5 = 4;
                    }
                    break;
                case -517618225:
                    if (strOptString.equals("permission")) {
                        b5 = 1;
                    }
                    break;
                case 3211051:
                    if (strOptString.equals("href")) {
                        b5 = 0;
                    }
                    break;
                case 771269563:
                    if (strOptString.equals("InfoUpdateLastDate")) {
                        b5 = 5;
                    }
                    break;
                case 1901043637:
                    if (strOptString.equals("location")) {
                        b5 = 3;
                    }
                    break;
            }
            if (b5 == 0) {
                java.lang.String strOptString2 = jSONObject.optString("url", "");
                com.cndatacom.campus.PortalWebviewActivity.startActivity(Z0(), "file:///android_asset/" + context.getString(com.cndatacom.campus.R.string.baseFilePath) + java.io.File.separator + strOptString2, jSONObject.optString("titleName", ""));
                return;
            }
            if (b5 == 1) {
                v2();
                return;
            }
            if (b5 == 2) {
                x2();
                return;
            }
            if (b5 == 3) {
                u2();
                return;
            }
            if (b5 == 4) {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                org.json.JSONObject jSONObject3 = new org.json.JSONObject();
                jSONObject3.put("type", "clickModule");
                org.json.JSONObject jSONObject4 = new org.json.JSONObject();
                jSONObject4.put("type", jSONObject.optString("moduletype", ""));
                jSONObject4.put("moduleId", jSONObject.optString("moduleid", ""));
                jSONObject3.put("data", jSONObject4);
                jSONObject2.put("eventName", "handleListen");
                jSONObject2.put("result", jSONObject3);
                N0("emitEvent", jSONObject2);
                return;
            }
            if (b5 != 5) {
                com.cndatacom.sdk.portal.util.IntentUtil.inBrowserOpen(Z0(), jSONObject.optString("url", ""));
                return;
            }
            org.json.JSONObject jSONObject5 = new org.json.JSONObject();
            org.json.JSONObject jSONObject6 = new org.json.JSONObject();
            jSONObject6.put("type", "InfoUpdateLastDate");
            jSONObject6.put("data", jSONObject);
            jSONObject5.put("eventName", "handleListen");
            jSONObject5.put("result", jSONObject6);
            N0("emitEvent", jSONObject5);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void L2() throws org.json.JSONException {
        if (com.cndatacom.sdk.portal.util.BatteryUtil.isIgnoringBatteryOptimizations(c1())) {
            A2();
            Z0().startActivityForResult(new android.content.Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"), 5);
            return;
        }
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("title", "开启耗电保护");
        jSONObject.put("gravity", "bottom");
        jSONObject.put("titleBold", true);
        jSONObject.put("content", "您还没有开启耗电保护服务，开启后可保持APP在后台运行，以及接收应用信息。");
        jSONObject.put("contentAlign", "left");
        jSONObject.put("confirmText", "继续");
        jSONObject.put("cancelText", "以后再说");
        com.cndatacom.dialog.Dialog.alert(Z0(), jSONObject, new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.9
            @Override // com.cndatacom.dialog.Dialog.DialogEvent
            public void btnClick(int i5) {
                if (i5 == 1) {
                    com.cndatacom.campus.PortalMananger.this.Z0().startActivityForResult(new android.content.Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"), 5);
                }
            }
        }).show();
    }

    public final void M0(int i5, int i6, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("type", i5);
            jSONObject.put("newState", i6);
            jSONObject.put("errorCode", returnUIResult.getErrorCode());
            jSONObject.put("subErrCode", returnUIResult.getSubErrorCode());
            jSONObject.put("extern", returnUIResult.getExtern());
            N0("cndatacomEvent", jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void M1(android.os.Message message) {
        int i5 = message.what;
        if (i5 == 1) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("onNetworkChange->");
            j2();
            return;
        }
        if (i5 == 2) {
            com.cndatacom.sdk.portal.util.ExLogUtil.d("check Hold(Vpn)Service is alive");
            if (!com.cndatacom.sdk.portal.util.ServiceUtil.isServiceRunning(c1(), com.cndatacom.campus.service.HoldVpnService.class.getName()) && !com.cndatacom.sdk.portal.util.ServiceUtil.isServiceRunning(c1(), com.cndatacom.campus.service.HoldService.class.getName())) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Hold(Vpn)Service is killed");
                startService(c1());
            }
            this.f3369v.sendEmptyMessageDelayed(2, 60000L);
            return;
        }
        if (i5 == 3) {
            final int iIntValue = ((java.lang.Integer) message.obj).intValue();
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.39
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.X2(iIntValue);
                }
            });
            return;
        }
        if (i5 != 4) {
            return;
        }
        this.f3369v.removeMessages(3);
        this.f3373z = true;
        final com.cndatacom.campus.uni.UniJSCallback uniJSCallback = this.f3372y.get(java.lang.Integer.valueOf(this.f3349i));
        android.app.AlertDialog alertDialog = this.A;
        if (alertDialog != null && alertDialog.isShowing()) {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.40
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.A.dismiss();
                    com.cndatacom.campus.PortalMananger.this.K0(uniJSCallback);
                    com.cndatacom.campus.PortalMananger.this.f3372y.remove(java.lang.Integer.valueOf(com.cndatacom.campus.PortalMananger.this.f3349i));
                }
            });
        } else {
            K0(uniJSCallback);
            this.f3372y.remove(java.lang.Integer.valueOf(this.f3349i));
        }
    }

    public final void M2(com.alibaba.fastjson.JSONArray jSONArray, final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            android.app.Activity activityZ0 = Z0();
            final android.content.Context contextC1 = c1();
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activityZ0);
            android.view.View viewInflate = android.view.LayoutInflater.from(activityZ0).inflate(com.cndatacom.campus.R.layout.alert_check_layout, (android.view.ViewGroup) null);
            org.json.JSONObject jSONObject = new org.json.JSONObject(jSONArray.getString(0));
            ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.title_tv)).setText(jSONObject.optString("titleText", contextC1.getString(com.cndatacom.campus.R.string.dialog_title_text)));
            boolean zOptBoolean = jSONObject.optBoolean("allowHtml", false);
            android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.message_tv);
            java.lang.String strOptString = jSONObject.optString("content", "");
            if (zOptBoolean) {
                textView.setText(android.text.Html.fromHtml(strOptString));
            } else {
                textView.setText(strOptString);
            }
            final android.widget.CheckBox checkBox = (android.widget.CheckBox) viewInflate.findViewById(2131165263);
            ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.checkbox_tv)).setText(jSONObject.optString("checkboxText", ""));
            ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.cancel_tv)).setText(jSONObject.optString("cancelText", ""));
            ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.confirm_tv)).setText(jSONObject.optString("confirmText", ""));
            final java.lang.String strOptString2 = jSONObject.optString("toastText", "");
            builder.setView(viewInflate);
            final android.app.AlertDialog alertDialogCreate = builder.create();
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.cancel_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.31
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view) {
                    alertDialogCreate.dismiss();
                    uniJSCallback.invoke(false);
                }
            });
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.confirm_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.32
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view) {
                    if (!checkBox.isChecked()) {
                        com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(contextC1, strOptString2);
                    } else {
                        alertDialogCreate.dismiss();
                        uniJSCallback.invoke(true);
                    }
                }
            });
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
            alertDialogCreate.show();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void N0(java.lang.String str, org.json.JSONObject jSONObject) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("var customEvent = new CustomEvent('" + str + "',");
        sb.append("{");
        sb.append("detail:" + jSONObject.toString());
        sb.append("}");
        sb.append(");");
        sb.append("document.dispatchEvent(customEvent);");
        final java.lang.String string = sb.toString();
        Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.48
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.campus.PortalMananger.this.f3350i0.loadUrl("javascript:" + string);
            }
        });
    }

    public final void N1(final android.content.Context context) {
        boolean z4 = com.cndatacom.sdk.portal.util.PreferencesUtil.getBoolean(context, "BatteryTips", false);
        if (com.cndatacom.sdk.portal.util.BatteryUtil.isIgnoringBatteryOptimizations(context) || z4) {
            return;
        }
        com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(context, "BatteryTips", true);
        Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.41
            @Override // java.lang.Runnable
            public void run() {
                try {
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    jSONObject.put("showCancel", true);
                    jSONObject.put("title", context.getString(com.cndatacom.campus.R.string.battery_title));
                    jSONObject.put("content", context.getString(com.cndatacom.campus.R.string.battery_text));
                    jSONObject.put("contentAlign", "left");
                    jSONObject.put("confirmText", context.getString(com.cndatacom.campus.R.string.goto_setting));
                    com.cndatacom.campus.PortalMananger portalMananger = com.cndatacom.campus.PortalMananger.this;
                    portalMananger.f3336b0 = com.cndatacom.dialog.Dialog.alert(portalMananger.Z0(), jSONObject, new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.41.1
                        @Override // com.cndatacom.dialog.Dialog.DialogEvent
                        public void btnClick(int i5) {
                            if (i5 != 0 && i5 == 1) {
                                android.content.Intent intent = new android.content.Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                                intent.setData(android.net.Uri.parse("package:" + context.getPackageName()));
                                com.cndatacom.campus.PortalMananger.this.Z0().startActivity(intent);
                            }
                        }
                    });
                    com.cndatacom.campus.PortalMananger.this.f3336b0.show();
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                }
            }
        });
    }

    public final void N2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.app.AlertDialog alertDialog = this.J;
        if (alertDialog == null || !alertDialog.isShowing()) {
            android.app.AlertDialog alertDialogLoading = com.cndatacom.dialog.Dialog.loading(Z0(), jSONArray.getJSONObject(0).getString("title"));
            this.J = alertDialogLoading;
            alertDialogLoading.show();
        }
    }

    public final void O0(final boolean z4) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("checkNetGoon->");
        this.f3369v.post(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.42
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.campus.PortalMananger.this.Q0(z4);
            }
        });
    }

    /* JADX INFO: renamed from: O1, reason: merged with bridge method [inline-methods] */
    public final void U1(com.alibaba.fastjson.JSONArray jSONArray) {
        java.lang.String string = jSONArray.getString(0);
        string.hashCode();
        if (string.equals("vetifyPopup")) {
            W0();
        } else if (string.equals("loginFailPopup")) {
            V0();
        }
    }

    public final void O2(final int i5) throws org.json.JSONException {
        if (i5 == 6) {
            Z0().startActivityForResult(new android.content.Intent("android.settings.APPLICATION_DETAILS_SETTINGS", android.net.Uri.parse("package:" + Z0().getPackageName())), i5);
            return;
        }
        android.content.Context contextC1 = c1();
        java.lang.String strReplace = contextC1.getString(com.cndatacom.campus.R.string.ask_location_permission_text).replace("{appName}", contextC1.getString(com.cndatacom.campus.R.string.app_name));
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("title", contextC1.getString(com.cndatacom.campus.R.string.ask_location_permission_title));
        jSONObject.put("gravity", "bottom");
        jSONObject.put("titleBold", true);
        jSONObject.put("content", strReplace);
        jSONObject.put("contentAlign", "left");
        jSONObject.put("confirmText", "继续");
        jSONObject.put("cancelText", "以后再说");
        com.cndatacom.dialog.Dialog.alert(Z0(), jSONObject, new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.10
            @Override // com.cndatacom.dialog.Dialog.DialogEvent
            public void btnClick(int i6) {
                if (i6 == 1) {
                    com.cndatacom.campus.PortalMananger.this.Z0().startActivityForResult(new android.content.Intent("android.settings.APPLICATION_DETAILS_SETTINGS", android.net.Uri.parse("package:" + com.cndatacom.campus.PortalMananger.this.Z0().getPackageName())), i5);
                }
            }
        }).show();
    }

    public final void P0(android.content.Context context, int i5, boolean z4, boolean z5) {
        this.G = i5;
        if (this.f3337c) {
            return;
        }
        this.f3337c = true;
        com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onCheckNet(context, i5, z4, z5, this.f3362o0);
    }

    public final void P1() {
        this.f3371x = java.util.concurrent.Executors.newFixedThreadPool(50);
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("handleMainActivityData", 0);
        this.f3370w = handlerThread;
        handlerThread.start();
        this.f3369v = new android.os.Handler(this.f3370w.getLooper(), new android.os.Handler.Callback() { // from class: com.cndatacom.campus.PortalMananger.36
            @Override // android.os.Handler.Callback
            public boolean handleMessage(android.os.Message message) {
                com.cndatacom.campus.PortalMananger.this.M1(message);
                return true;
            }
        });
        com.cndatacom.campus.permission.v2.PermissionCheckerV2 permissionCheckerV2 = new com.cndatacom.campus.permission.v2.PermissionCheckerV2(Z0());
        this.f3346g0 = permissionCheckerV2;
        permissionCheckerV2.setPermissionEvent(new com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent() { // from class: com.cndatacom.campus.PortalMananger.37
            @Override // com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent
            public boolean checkPermission(int i5, java.lang.String[] strArr) {
                android.content.Context contextC1 = com.cndatacom.campus.PortalMananger.this.c1();
                if (i5 != 0) {
                    if (i5 == 2) {
                        return com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationServicePermission(contextC1);
                    }
                    if (i5 != 9) {
                        return com.cndatacom.sdk.portal.util.PermissionUtil.checkPermission(contextC1, strArr);
                    }
                }
                return android.net.VpnService.prepare(contextC1) == null;
            }

            @Override // com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent
            public void finish(java.util.Vector<com.cndatacom.campus.permission.v2.entity.PermissionResult> vector) {
                for (int i5 = 0; i5 < vector.size(); i5++) {
                    int requestCode = vector.get(i5).getRequestCode();
                    if (requestCode == 0 || requestCode == 9) {
                        return;
                    }
                }
                com.cndatacom.campus.PortalMananger.this.O0(false);
            }

            @Override // com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent
            public boolean needRemind(int i5, java.lang.String[] strArr) {
                if (i5 != 0) {
                    if (i5 == 1) {
                        return com.cndatacom.campus.PortalMananger.this.h2();
                    }
                    if (i5 == 2) {
                        return com.cndatacom.campus.PortalMananger.this.i2();
                    }
                    if (i5 != 9) {
                        return false;
                    }
                }
                return android.net.VpnService.prepare(com.cndatacom.campus.PortalMananger.this.c1()) != null;
            }

            @Override // com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent
            public void requestPermissions(int i5, java.lang.String[] strArr) {
                if (i5 != 0 && i5 != 9) {
                    com.cndatacom.campus.PortalMananger.this.Z0().requestPermissions(strArr, i5);
                } else {
                    com.cndatacom.campus.PortalMananger.this.Z0().startActivityForResult(android.net.VpnService.prepare(com.cndatacom.campus.PortalMananger.this.c1()), i5);
                }
            }
        });
    }

    public final void P2(final int i5) throws org.json.JSONException {
        android.content.Context contextC1 = c1();
        java.lang.String strReplace = contextC1.getString(com.cndatacom.campus.R.string.ask_location_service_tip).replace("{appName}", contextC1.getString(com.cndatacom.campus.R.string.app_name));
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        jSONObject.put("title", contextC1.getString(com.cndatacom.campus.R.string.ask_location_service_title));
        jSONObject.put("gravity", "bottom");
        jSONObject.put("titleBold", true);
        jSONObject.put("content", strReplace);
        jSONObject.put("contentAlign", "left");
        jSONObject.put("confirmText", "继续");
        jSONObject.put("cancelText", "以后再说");
        com.cndatacom.dialog.Dialog.alert(Z0(), jSONObject, new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.11
            @Override // com.cndatacom.dialog.Dialog.DialogEvent
            public void btnClick(int i6) {
                if (i6 == 1) {
                    com.cndatacom.campus.PortalMananger.this.Z0().startActivityForResult(new android.content.Intent("android.settings.LOCATION_SOURCE_SETTINGS"), i5);
                }
            }
        }).show();
    }

    public final void Q0(boolean z4) {
        if (!z4) {
            android.content.Context contextC1 = c1();
            P0(contextC1, com.cndatacom.sdk.portal.util.NetUtil.getWifiState(contextC1), true, true);
            return;
        }
        android.content.Context contextC2 = c1();
        boolean z5 = com.cndatacom.sdk.portal.util.PreferencesUtil.getBoolean(contextC2, "FINE_LOCATION", true);
        boolean zHasLocationPermission = com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationPermission(contextC2);
        if (z5 && zHasLocationPermission) {
            K2(contextC2);
            return;
        }
        try {
            com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2 = new com.cndatacom.campus.permission.v2.entity.PermissionInfoV2();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("title", contextC2.getString(com.cndatacom.campus.R.string.ask_location_permission_title));
            jSONObject.put("titleBold", true);
            jSONObject.put("titleAlign", "left");
            jSONObject.put("content", contextC2.getString(com.cndatacom.campus.R.string.ask_location_permission_text));
            jSONObject.put("contentAlign", "left");
            permissionInfoV2.setTipDialogOptions(jSONObject);
            permissionInfoV2.setRequestCode(1);
            permissionInfoV2.setPermissions(new java.lang.String[]{"android.permission.ACCESS_FINE_LOCATION"});
            this.f3346g0.addPermission(permissionInfoV2);
            java.lang.String strReplace = contextC2.getString(com.cndatacom.campus.R.string.ask_location_service_text).replace("{appName}", contextC2.getString(com.cndatacom.campus.R.string.app_name));
            com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV3 = new com.cndatacom.campus.permission.v2.entity.PermissionInfoV2();
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            jSONObject2.put("title", contextC2.getString(com.cndatacom.campus.R.string.ask_location_service_tip_title));
            jSONObject2.put("titleBold", true);
            jSONObject2.put("titleAlign", "left");
            jSONObject2.put("content", contextC2.getString(com.cndatacom.campus.R.string.ask_location_service_tip));
            jSONObject2.put("contentAlign", "left");
            permissionInfoV3.setTipDialogOptions(jSONObject2);
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            jSONObject3.put("title", contextC2.getString(com.cndatacom.campus.R.string.ask_location_service_title));
            jSONObject3.put("gravity", "bottom");
            jSONObject3.put("titleBold", true);
            jSONObject3.put("content", strReplace);
            jSONObject3.put("confirmText", "去开启");
            jSONObject3.put("cancelText", "以后再说");
            permissionInfoV3.setAskDialogOptions(jSONObject3);
            permissionInfoV3.setRequestCode(2);
            permissionInfoV3.setConfirmEvent(new com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.43
                @Override // com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent
                public void event() {
                    com.cndatacom.campus.PortalMananger.this.Z0().startActivityForResult(new android.content.Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 2);
                }
            });
            permissionInfoV3.setCancelEvent(new com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.44
                @Override // com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent
                public void event() {
                    com.cndatacom.campus.PortalMananger.this.O0(false);
                }
            });
            this.f3346g0.addPermission(permissionInfoV3);
            this.f3346g0.start();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final boolean Q1(com.cndatacom.campus.uni.UniJSCallback uniJSCallback, java.lang.String str) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(uniJSCallback.hashCode());
        sb.append("");
        return !str.equals(sb.toString());
    }

    public final void Q2(com.alibaba.fastjson.JSONArray jSONArray, final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.app.AlertDialog alertDialog = this.I;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.I.dismiss();
        }
        try {
            android.app.AlertDialog alertDialogAlert = com.cndatacom.dialog.Dialog.alert(Z0(), new org.json.JSONObject(jSONArray.getString(0)), new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.PortalMananger.33
                @Override // com.cndatacom.dialog.Dialog.DialogEvent
                public void btnClick(int i5) {
                    com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
                    if (i5 != -1) {
                        if (i5 == 0) {
                            jSONObject.put("cancel", (java.lang.Object) java.lang.Boolean.TRUE);
                        } else if (i5 == 1) {
                            jSONObject.put("confirm", (java.lang.Object) java.lang.Boolean.TRUE);
                        }
                    }
                    uniJSCallback.invoke(jSONObject);
                }
            });
            this.I = alertDialogAlert;
            alertDialogAlert.show();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void R0(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        java.lang.String string = jSONArray.getString(0);
        string.hashCode();
        if (string.equals("CAMERA")) {
            if (com.cndatacom.sdk.portal.util.PermissionUtil.hasCameraPermission(c1())) {
                uniJSCallback.invoke(true);
                return;
            }
            int iAbs = java.lang.Math.abs(java.util.UUID.randomUUID().toString().hashCode());
            this.f3372y.put(java.lang.Integer.valueOf(iAbs), uniJSCallback);
            this.f3352j0.put(java.lang.Integer.valueOf(iAbs), new com.cndatacom.campus.PortalMananger.PermissionRunnable(iAbs) { // from class: com.cndatacom.campus.PortalMananger.14
                @Override // com.cndatacom.campus.PortalMananger.PermissionRunnable, java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.uni.UniJSCallback uniJSCallback2 = (com.cndatacom.campus.uni.UniJSCallback) com.cndatacom.campus.PortalMananger.this.f3372y.get(java.lang.Integer.valueOf(getRequestCode()));
                    if (uniJSCallback2 != null) {
                        uniJSCallback2.invoke(com.cndatacom.sdk.portal.util.PermissionUtil.hasCameraPermission(com.cndatacom.campus.PortalMananger.this.c1()));
                        com.cndatacom.campus.PortalMananger.this.f3372y.remove(java.lang.Integer.valueOf(getRequestCode()));
                        com.cndatacom.campus.PortalMananger.this.f3352j0.remove(java.lang.Integer.valueOf(getRequestCode()));
                    }
                }
            });
            Z0().requestPermissions(new java.lang.String[]{"android.permission.CAMERA"}, iAbs);
        }
    }

    public final void R1(com.alibaba.fastjson.JSONArray jSONArray) {
        java.lang.String string = jSONArray.getString(0);
        java.lang.String str = "JSLOG_" + jSONArray.getString(1);
        string.hashCode();
        switch (string) {
            case "log":
            case "info":
            case "warn":
                com.cndatacom.sdk.portal.util.ExLogUtil.i(str);
                break;
            case "debug":
                com.cndatacom.sdk.portal.util.ExLogUtil.d(str);
                break;
            case "error":
                com.cndatacom.sdk.portal.util.ExLogUtil.e(str);
                break;
        }
    }

    /* JADX INFO: renamed from: R2, reason: merged with bridge method [inline-methods] */
    public final void T1(com.alibaba.fastjson.JSONArray jSONArray) {
        byte b5 = 0;
        java.lang.String string = jSONArray.getString(0);
        string.hashCode();
        switch (string.hashCode()) {
            case -1976084360:
                if (!string.equals("historyPopup")) {
                    b5 = -1;
                }
                break;
            case -1282197067:
                b5 = !string.equals("vetifyPopup") ? (byte) -1 : (byte) 1;
                break;
            case 747889349:
                b5 = !string.equals("loginFailPopup") ? (byte) -1 : (byte) 2;
                break;
            default:
                b5 = -1;
                break;
        }
        switch (b5) {
            case 0:
                t1(string, jSONArray.getString(1));
                break;
            case 1:
                H1(string, jSONArray.getString(1), jSONArray.getString(2), jSONArray.getString(3));
                break;
            case 2:
                A1(string, jSONArray.getString(1));
                break;
        }
    }

    public final void S0(android.content.Context context) {
        java.io.File file = new java.io.File(com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_APK, ""));
        if (file.exists()) {
            com.cndatacom.sdk.portal.util.FileUtil.delFile(file);
        }
        java.io.File file2 = new java.io.File(com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_AD, ""));
        if (file2.exists()) {
            com.cndatacom.sdk.portal.util.FileUtil.delFile(file2, 3);
        }
        java.io.File file3 = new java.io.File(com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_IMAGE, ""));
        if (file3.exists()) {
            com.cndatacom.sdk.portal.util.FileUtil.delFile(file3, 3);
        }
    }

    public final void S2(com.alibaba.fastjson.JSONArray jSONArray) {
        try {
            com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(c1(), new org.json.JSONObject(jSONArray.getString(0)).optString("title", ""));
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void T0(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            uniJSCallback.invoke(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeECB(jSONArray.getString(0).getBytes()));
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void T2() {
        android.content.Intent intentPrepare = android.net.VpnService.prepare(c1());
        if (intentPrepare != null) {
            Z0().startActivityForResult(intentPrepare, 8);
            return;
        }
        A2();
        Z0().startActivityForResult(new android.content.Intent("android.settings.VPN_SETTINGS"), 8);
    }

    public final void U0(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("destroy->");
        x1(context);
        com.cndatacom.campus.permission.v2.PermissionCheckerV2 permissionCheckerV2 = this.f3346g0;
        if (permissionCheckerV2 != null) {
            permissionCheckerV2.release();
        }
        android.app.AlertDialog alertDialog = this.f3336b0;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.f3336b0.dismiss();
        }
        android.app.AlertDialog alertDialog2 = this.J;
        if (alertDialog2 != null && alertDialog2.isShowing()) {
            this.J.dismiss();
        }
        android.app.AlertDialog alertDialog3 = this.I;
        if (alertDialog3 != null && alertDialog3.isShowing()) {
            this.I.dismiss();
        }
        android.app.AlertDialog alertDialog4 = this.f3338c0;
        if (alertDialog4 != null && alertDialog4.isShowing()) {
            this.f3338c0.dismiss();
        }
        com.cndatacom.campus.receiver.AppReceiver appReceiver = this.H;
        if (appReceiver != null) {
            appReceiver.unregisterReceiver(context);
        }
        android.os.Handler handler = this.f3369v;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        android.os.HandlerThread handlerThread = this.f3370w;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        java.util.concurrent.ExecutorService executorService = this.f3371x;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final void U2(android.content.Context context) {
        this.f3369v.removeMessages(2);
        if (com.cndatacom.sdk.portal.util.ServiceUtil.isServiceRunning(c1(), com.cndatacom.campus.service.HoldVpnService.class.getName())) {
            com.cndatacom.sdk.portal.service.BaseIntentService.cancel(c1(), com.cndatacom.campus.service.VpnKeepService.class);
            com.cndatacom.campus.service.HoldVpnService.stop(context);
        } else if (com.cndatacom.sdk.portal.util.ServiceUtil.isServiceRunning(c1(), com.cndatacom.campus.service.HoldService.class.getName())) {
            com.cndatacom.campus.service.HoldService.stop(context);
        }
    }

    public final void V0() {
        android.app.AlertDialog alertDialog = this.V;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        this.V = null;
        this.Y = this.X;
        this.f3369v.removeCallbacks(this.f3356l0);
    }

    public final void V2() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("termAndCheckNet->");
        android.content.Context contextC1 = c1();
        P0(contextC1, com.cndatacom.sdk.portal.util.NetUtil.getWifiState(contextC1), false, false);
    }

    public final void W0() {
        android.app.AlertDialog alertDialog = this.K;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        this.K = null;
        this.R = this.P;
        this.Q = false;
        this.f3369v.removeCallbacks(this.f3358m0);
    }

    public final void W2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        uniJSCallback.invoke(com.alibaba.fastjson.JSON.parseObject(com.cndatacom.sdk.portal.http.CdcProtocol.termOtherClient(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), jSONArray.getString(0)).toString()));
    }

    public final void X0(com.alibaba.fastjson.JSONArray jSONArray) {
        java.lang.String string = jSONArray.getString(0);
        final java.lang.String string2 = jSONArray.getString(1);
        Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.28
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.campus.PortalMananger portalMananger = com.cndatacom.campus.PortalMananger.this;
                portalMananger.f3338c0 = com.cndatacom.dialog.Dialog.getUpdateDialog(portalMananger.Z0(), string2, new com.cndatacom.dialog.Dialog.UpdateDialogEvent() { // from class: com.cndatacom.campus.PortalMananger.28.1
                    @Override // com.cndatacom.dialog.Dialog.UpdateDialogEvent
                    public void callbackView(android.view.View view) {
                        com.cndatacom.campus.PortalMananger.this.f3340d0 = view;
                    }
                });
                com.cndatacom.campus.PortalMananger.this.f3338c0.show();
            }
        });
        Y0(string);
    }

    public final void X2(int i5) {
        if (i5 < 0) {
            this.C.setText(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
            this.f3369v.sendEmptyMessage(4);
            return;
        }
        this.C.setText((i5 / com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO) + "");
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 3;
        messageObtain.obj = java.lang.Integer.valueOf(i5 + (-1000));
        this.f3369v.sendMessageDelayed(messageObtain, 1000L);
    }

    public final void Y0(java.lang.String str) {
        android.content.Context contextC1 = c1();
        if (this.f3342e0 == null) {
            com.cndatacom.download.manager.DownloadTaskManager downloadTaskManager = new com.cndatacom.download.manager.DownloadTaskManager(contextC1, "app_task");
            this.f3342e0 = downloadTaskManager;
            downloadTaskManager.setIDownloadTaskEvent(new com.cndatacom.download.interfaces.IDownloadTaskEvent() { // from class: com.cndatacom.campus.PortalMananger.29
                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public boolean getAskWifi() {
                    return false;
                }

                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public boolean hasAskWifi() {
                    return false;
                }

                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public void taskDownloading(java.util.List<com.cndatacom.download.entity.DownloadTask> list) {
                    if (com.cndatacom.campus.PortalMananger.this.f3338c0 == null || !com.cndatacom.campus.PortalMananger.this.f3338c0.isShowing() || list == null || list.size() <= 0) {
                        return;
                    }
                    final com.cndatacom.download.entity.DownloadTask downloadTask = list.get(0);
                    com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.29.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                org.json.JSONObject jSONObject = new org.json.JSONObject();
                                jSONObject.put("tag", "downloading");
                                jSONObject.put("fileSize", downloadTask.getTaskFileSize());
                                jSONObject.put("fileSizeText", com.cndatacom.sdk.portal.util.FileUtil.getFileSize(downloadTask.getTaskFileSize()));
                                jSONObject.put("progress", downloadTask.getDownloadedSize());
                                jSONObject.put("progressText", com.cndatacom.sdk.portal.util.FileUtil.getFileSize(downloadTask.getDownloadedSize()));
                                com.cndatacom.dialog.Dialog.refreshUpdateDialog(com.cndatacom.campus.PortalMananger.this.f3340d0, jSONObject, null);
                            } catch (java.lang.Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                    });
                }

                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public void taskError(final com.cndatacom.download.entity.DownloadTask downloadTask, int i5) {
                    if (com.cndatacom.campus.PortalMananger.this.f3338c0 == null || !com.cndatacom.campus.PortalMananger.this.f3338c0.isShowing()) {
                        return;
                    }
                    com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.29.4
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                org.json.JSONObject jSONObject = new org.json.JSONObject();
                                jSONObject.put("tag", "error");
                                jSONObject.put("taskUrl", downloadTask.getTaskUrl());
                                com.cndatacom.dialog.Dialog.refreshUpdateDialog(com.cndatacom.campus.PortalMananger.this.f3340d0, jSONObject, com.cndatacom.campus.PortalMananger.this.f3354k0);
                            } catch (java.lang.Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                    });
                }

                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public void taskFinish(final com.cndatacom.download.entity.DownloadTask downloadTask, long j5) {
                    if (com.cndatacom.campus.PortalMananger.this.f3338c0 == null || !com.cndatacom.campus.PortalMananger.this.f3338c0.isShowing()) {
                        return;
                    }
                    com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.29.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                org.json.JSONObject jSONObject = new org.json.JSONObject();
                                jSONObject.put("tag", "finish");
                                jSONObject.put("filePath", downloadTask.getTaskPath());
                                com.cndatacom.dialog.Dialog.refreshUpdateDialog(com.cndatacom.campus.PortalMananger.this.f3340d0, jSONObject, com.cndatacom.campus.PortalMananger.this.f3354k0);
                            } catch (java.lang.Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                    });
                }

                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public void taskPauseOrCancel(com.cndatacom.download.entity.DownloadTask downloadTask, long j5) {
                }

                @Override // com.cndatacom.download.interfaces.IDownloadTaskEvent
                public void taskWaiting(final com.cndatacom.download.entity.DownloadTask downloadTask) {
                    if (com.cndatacom.campus.PortalMananger.this.f3338c0 == null || !com.cndatacom.campus.PortalMananger.this.f3338c0.isShowing()) {
                        return;
                    }
                    com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.29.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                org.json.JSONObject jSONObject = new org.json.JSONObject();
                                jSONObject.put("tag", "downloading");
                                jSONObject.put("fileSize", downloadTask.getTaskFileSize());
                                jSONObject.put("fileSizeText", com.cndatacom.sdk.portal.util.FileUtil.getFileSize(downloadTask.getTaskFileSize()));
                                jSONObject.put("progress", downloadTask.getDownloadedSize());
                                jSONObject.put("progressText", com.cndatacom.sdk.portal.util.FileUtil.getFileSize(downloadTask.getDownloadedSize()));
                                com.cndatacom.dialog.Dialog.refreshUpdateDialog(com.cndatacom.campus.PortalMananger.this.f3340d0, jSONObject, null);
                            } catch (java.lang.Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                    });
                }
            });
        }
        java.lang.String str2 = str.hashCode() + "";
        if (isDownloadExists(str2)) {
            return;
        }
        com.cndatacom.download.entity.DownloadTask downloadTask = new com.cndatacom.download.entity.DownloadTask(3);
        java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_APK, str2 + ".apk");
        java.lang.String contextFilePath2 = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_CACHE, str2 + ".temp");
        downloadTask.setCreateTime(com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date()));
        downloadTask.setTaskExt("apk");
        downloadTask.setTaskId(str2);
        downloadTask.setTaskName(str2);
        downloadTask.setTaskPath(contextFilePath);
        downloadTask.setTaskTempPath(contextFilePath2);
        downloadTask.setTaskUrl(str);
        this.f3342e0.addDownloadTask(downloadTask);
    }

    public final void Y2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        if (this.f3362o0 != null) {
            boolean z4 = false;
            java.lang.String string = jSONArray.getString(0);
            android.content.Context contextC1 = c1();
            if (!android.text.TextUtils.isEmpty(string) && string.equals("1")) {
                z4 = true;
            }
            this.f3362o0.handleNetworkInfoMsg(new com.cndatacom.sdk.portal.entity.NetInfo(contextC1, z4));
        }
    }

    public final android.app.Activity Z0() {
        return this.f3348h0;
    }

    public final void a1(com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            android.content.Context contextC1 = c1();
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
            jSONObject.put("phoneType", "android");
            jSONObject.put("province", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.province));
            jSONObject.put("appName", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.app_name));
            jSONObject.put("versionCode", (java.lang.Object) java.lang.Integer.valueOf(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(contextC1)));
            jSONObject.put("versionName", (java.lang.Object) com.cndatacom.sdk.portal.util.ApkUtil.getVersionName(contextC1));
            jSONObject.put("copyright", (java.lang.Object) contextC1.getString(com.cndatacom.campus.R.string.copy_right));
            uniJSCallback.invoke(jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void b1(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        java.lang.String cacheData = com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().getCacheData(jSONArray.getString(0));
        if (uniJSCallback != null) {
            uniJSCallback.invoke(cacheData);
        }
    }

    public final android.content.Context c1() {
        return com.cndatacom.sdk.portal.util.ContextUtil.getContext();
    }

    public void callbackCheckResultToJs(java.lang.String str) {
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
            jSONObject2.put("reason", (java.lang.Object) str);
            jSONObject.put("extern", jSONObject2);
            N0("CHECK_NET_REGULARLY", jSONObject);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void coolMethod(java.lang.String str, com.alibaba.fastjson.JSONArray jSONArray, java.lang.String str2) {
        G2(str, jSONArray, new com.cndatacom.campus.uni.UniJSCallback(this.f3348h0, this.f3350i0, str2));
    }

    public final void d1(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            ((android.content.ClipboardManager) Z0().getSystemService("clipboard")).setPrimaryClip(android.content.ClipData.newPlainText("label", com.cndatacom.personal.PersonalManager.getInstance().getPersonalInfoText(c1())));
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3549a.S1();
                }
            });
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void e1(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        for (int i5 = 0; i5 < jSONArray.size(); i5++) {
            try {
                java.lang.String string = jSONArray.getString(i5);
                jSONObject.put(string, (java.lang.Object) com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().getCacheData(string));
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        if (uniJSCallback != null) {
            uniJSCallback.invoke(jSONObject);
        }
    }

    public final void f1(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.JSON.parseObject(com.cndatacom.personal.PersonalManager.getInstance().queryPersonalInfo(c1(), "all", ""));
        java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.Object>> it = object.entrySet().iterator();
        while (it.hasNext()) {
            java.lang.String key = it.next().getKey();
            object.put(key, (java.lang.Object) com.alibaba.fastjson.JSON.parseArray(object.getString(key)));
        }
        uniJSCallback.invoke(object);
    }

    public final void f2(com.alibaba.fastjson.JSONArray jSONArray) {
        int iIntValue = jSONArray.getInteger(0).intValue();
        int iIntValue2 = jSONArray.getInteger(1).intValue();
        java.lang.String string = jSONArray.getString(2);
        final java.lang.String string2 = jSONArray.getString(3);
        final java.lang.String string3 = jSONArray.getString(4);
        final android.graphics.Bitmap bitmapLoadImageFormFile = com.cndatacom.sdk.portal.util.ImageUtil.loadImageFormFile(c1(), com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_IMAGE, (string.hashCode() + "") + ".png"), string, iIntValue, iIntValue2);
        if (bitmapLoadImageFormFile != null) {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3551a.e2(bitmapLoadImageFormFile, string2, string3);
                }
            });
        }
    }

    public final void g1() {
        try {
            com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfoObtain.getNetInfo();
            if (netInfo.isUnknown()) {
                return;
            }
            java.lang.String ssid = netInfo.getSsid();
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.lang.String privateConfig = configInfoObtain.getPrivateConfig("AddressHistory", "");
            if (!android.text.TextUtils.isEmpty(privateConfig)) {
                jSONArray = new org.json.JSONArray(privateConfig);
            }
            boolean z4 = false;
            for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                if (jSONArray.getString(i5).equals(ssid)) {
                    z4 = true;
                    break;
                }
            }
            if (z4) {
                return;
            }
            jSONArray.put(ssid);
            configInfoObtain.putPrivateConfig("AddressHistory", jSONArray.toString()).save();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void g2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            int iIntValue = jSONArray.getInteger(0).intValue();
            int iIntValue2 = jSONArray.getInteger(1).intValue();
            java.lang.String string = jSONArray.getString(2);
            java.lang.String contextFilePath = com.cndatacom.sdk.portal.util.ResourceUtil.getContextFilePath(c1(), com.cndatacom.sdk.portal.constant.ResourceConstants.PATH_IMAGE, (string.hashCode() + "") + ".png");
            if (com.cndatacom.sdk.portal.util.ImageUtil.loadImageFormFile(c1(), contextFilePath, string, iIntValue, iIntValue2) != null) {
                com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
                jSONObject.put(string, (java.lang.Object) contextFilePath);
                uniJSCallback.invoke(jSONObject);
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void h1(android.content.Context context) {
    }

    public final boolean h2() {
        android.content.Context contextC1 = c1();
        boolean z4 = com.cndatacom.sdk.portal.util.PreferencesUtil.getBoolean(contextC1, "FINE_LOCATION", true) && !com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationPermission(contextC1);
        if (z4) {
            com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(contextC1, "FINE_LOCATION", false);
        }
        return z4;
    }

    public final void i1(android.content.Context context, boolean z4, boolean z5) {
        startService(context);
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        com.cndatacom.campus.work.CheckRegularWorker.getInstance().startCheckNetRegularly(configInfoObtain, 10000);
        if (z5) {
            com.cndatacom.personal.PersonalManager.getInstance().collectionAccountInfo(context, configInfoObtain.getUserId());
            g1();
            N1(context);
            com.cndatacom.sdk.portal.http.CdcProtocol.getSchoolInfo(context, configInfoObtain);
            com.cndatacom.collection.CollectionManager.getInstance().uploadCollectionInfo(context, configInfoObtain);
            com.cndatacom.collection.CollectionManager.getInstance().start(context, configInfoObtain);
            com.cndatacom.sdk.portal.http.CdcProtocol.uploadLog(context, configInfoObtain);
            com.cndatacom.sdk.portal.http.CdcProtocol.uploadModuleLog(context, configInfoObtain);
            com.cndatacom.sdk.portal.http.CdcProtocol.uploadSSIDData(context, configInfoObtain);
            com.cndatacom.sdk.portal.http.CdcProtocol.uploadPhoneMarketingData(context, configInfoObtain);
            E1(context, configInfoObtain);
            com.cndatacom.sdk.portal.work.KeepUserAgentWorker.getKeepUserAgent(context, configInfoObtain);
        }
        this.f3369v.sendEmptyMessageDelayed(2, 60000L);
        com.cndatacom.zexcheck.v3.manager.ExCheckManager.getInstance().start(configInfoObtain);
        com.cndatacom.traffic.TrafficStatsManager.getInstance().start(context, configInfoObtain, z4);
        com.cndatacom.safecollection.SafeCollectionManager.getInstance().start(context, configInfoObtain);
        com.cndatacom.campus.work.CapabilityWorker.getInstance().startTask(context, configInfoObtain);
        com.cndatacom.campus.work.WiFiInfoWorker.getInstance().release(context);
        com.cndatacom.campus.work.WiFiInfoWorker.getInstance().startTask(context, configInfoObtain);
        com.cndatacom.campus.work.InterfaceInfoWorker.getInstance().uploadInterfaceInfo(context, configInfoObtain);
        com.cndatacom.campus.work.RoutingdelayWorker.getInstance().release(context);
        com.cndatacom.campus.work.RoutingdelayWorker.getInstance().startTask(context, configInfoObtain);
        com.cndatacom.topology.TopologyManager.getInstance().start(context, configInfoObtain);
    }

    public final boolean i2() {
        android.content.Context contextC1 = c1();
        boolean z4 = com.cndatacom.sdk.portal.util.PreferencesUtil.getBoolean(contextC1, "LOCATION_SERVICE", true) && !com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationServicePermission(contextC1);
        if (z4) {
            com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(contextC1, "LOCATION_SERVICE", false);
        }
        return z4;
    }

    public boolean isDownloadExists(java.lang.String str) {
        java.util.List<com.cndatacom.download.entity.DownloadTask> downloadTasks = this.f3342e0.getDownloadTasks();
        if (downloadTasks != null) {
            for (int i5 = 0; i5 < downloadTasks.size(); i5++) {
                if (downloadTasks.get(i5).getTaskId().equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void j1(android.content.Context context) {
        this.f3369v.removeMessages(2);
        x1(context);
        V2();
    }

    public final void j2() {
        if (this.G != -1) {
            q1();
        }
        Q0(true);
        this.E = true;
    }

    public final void k1(android.content.Context context, com.cndatacom.sdk.portal.entity.NetInfo netInfo) {
        com.cndatacom.personal.PersonalManager.getInstance().collectionNetworkInfo(context, netInfo);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void k2(com.alibaba.fastjson.JSONArray jSONArray) {
        byte b5 = 0;
        try {
            java.lang.String string = jSONArray.getString(0);
            switch (string.hashCode()) {
                case -1600397930:
                    if (!string.equals("clipboard")) {
                        b5 = -1;
                    } else {
                        b5 = 2;
                    }
                    break;
                case -331239923:
                    if (!string.equals("battery")) {
                        b5 = -1;
                    } else {
                        b5 = 4;
                    }
                    break;
                case 116980:
                    if (!string.equals("vpn")) {
                        b5 = -1;
                    } else {
                        b5 = 3;
                    }
                    break;
                case 175540267:
                    if (!string.equals("location_service")) {
                        b5 = -1;
                    }
                    break;
                case 1901043637:
                    if (!string.equals("location")) {
                        b5 = -1;
                    } else {
                        b5 = 1;
                    }
                    break;
                default:
                    b5 = -1;
                    break;
            }
            if (b5 == 0) {
                P2(7);
                return;
            }
            if (b5 == 1) {
                O2(6);
                return;
            }
            if (b5 == 2) {
                com.cndatacom.sdk.portal.util.IntentUtil.gotoAppDetailSetting(Z0());
            } else if (b5 == 3) {
                T2();
            } else {
                if (b5 != 4) {
                    return;
                }
                L2();
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void l1(android.content.Context context) {
    }

    public final void l2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        try {
            android.content.Context contextC1 = c1();
            com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
            if (!com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationPermission(contextC1)) {
                O2(10);
            } else if (com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationServicePermission(contextC1)) {
                uniJSCallback.invoke(configInfoObtain.isOpenSSID());
            } else {
                P2(11);
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void m1(android.content.Context context) {
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        I0(configInfoObtain);
        com.cndatacom.sdk.portal.work.KeepUserAgentWorker.loadCurUserAgentData(context, configInfoObtain);
    }

    public final void m2(com.alibaba.fastjson.JSONArray jSONArray) {
        n2(com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), jSONArray.getString(0).trim(), jSONArray.getString(1).trim(), jSONArray.size() == 3 ? jSONArray.getString(2).trim() : "");
    }

    public final void n(com.alibaba.fastjson.JSONArray jSONArray, final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        boolean zBooleanValue = jSONArray.getBoolean(0).booleanValue();
        final java.lang.String str = "PrivacyKey";
        if (com.cndatacom.sdk.portal.util.PreferencesUtil.getBoolean(c1(), "PrivacyKey", false)) {
            n1(zBooleanValue, uniJSCallback);
        } else {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.15
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.y1(str, uniJSCallback);
                }
            });
        }
    }

    public final void n1(boolean z4, final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        if (z4) {
            K0(uniJSCallback);
        } else {
            com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.23
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.F1(uniJSCallback);
                }
            });
        }
    }

    public final void n2(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        android.content.Context contextC1 = c1();
        if (!configInfo.isVpn() || android.net.VpnService.prepare(contextC1) == null) {
            com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onAuth(contextC1, configInfo, str, str2, str3, this.f3362o0);
            return;
        }
        configInfo.putCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_ACCOUNT, str);
        configInfo.putCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_PASSWORD, str2);
        configInfo.putCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_VERIFY, str3);
        w2(0);
    }

    public final void o1(int i5) {
        if (i5 == -1) {
            this.f3369v.post(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.47
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("handleGoOnAuth->");
                    com.cndatacom.campus.PortalMananger.this.s1();
                }
            });
            return;
        }
        com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent = this.f3362o0;
        if (portalEvent != null) {
            portalEvent.handleConnectFailMsg(new com.cndatacom.sdk.portal.entity.ReturnUIResult("200123"));
        }
    }

    public final void o2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.content.Intent intent = new android.content.Intent("android.intent.action.DIAL", android.net.Uri.parse("tel:" + jSONArray.getString(0)));
        intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        Z0().startActivity(intent);
    }

    public void onActivityResult(int i5, int i6, android.content.Intent intent) {
        if (i5 == 0) {
            this.f3346g0.onRequestPermissionsResult();
            o1(i6);
            return;
        }
        if (i5 == 9) {
            this.f3346g0.onRequestPermissionsResult();
            K1();
            return;
        }
        if (i5 == 2) {
            this.f3346g0.onRequestPermissionsResult();
            return;
        }
        if (i5 == 3) {
            O0(true);
            return;
        }
        if (i5 == 4) {
            K1();
            return;
        }
        if (i5 == 5 || i5 == 6 || i5 == 7 || i5 == 8) {
            if (i5 == 5) {
                this.f3369v.postDelayed(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.46
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.campus.PortalMananger.this.Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.46.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.cndatacom.campus.PortalMananger.this.A2();
                            }
                        });
                    }
                }, 1000L);
                return;
            } else {
                A2();
                return;
            }
        }
        if (i5 == 10) {
            android.content.Context contextC1 = c1();
            if (!com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationPermission(contextC1) || com.cndatacom.sdk.portal.util.PermissionUtil.hasLocationServicePermission(contextC1)) {
                return;
            }
            try {
                P2(11);
            } catch (org.json.JSONException e5) {
                e5.printStackTrace();
            }
        }
    }

    public void onExitApplication(boolean z4) {
        android.content.Context contextC1 = c1();
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        if (this.f3344f0 == 2 && com.cndatacom.sdk.portal.util.NetUtil.isWifiConnected(c1()) && configInfoObtain.isOnline()) {
            com.cndatacom.sdk.portal.http.CdcProtocol.term(contextC1, configInfoObtain, z4 ? "2" : "1");
        }
        U2(contextC1);
        U0(contextC1);
        if (z4) {
            android.os.Process.killProcess(android.os.Process.myPid());
        }
    }

    public void onNetworkChange() {
        if (this.f3369v.hasMessages(1)) {
            this.f3369v.removeMessages(1);
        }
        this.f3369v.sendEmptyMessageDelayed(1, 2000L);
    }

    public void onRequestPermissionsResult(int i5, java.lang.String[] strArr, int[] iArr) {
        com.stub.StubApp.interface22(i5, strArr, iArr);
        if (i5 == 1) {
            this.f3346g0.onRequestPermissionsResult();
        } else if (this.f3352j0.containsKey(java.lang.Integer.valueOf(i5))) {
            this.f3352j0.get(java.lang.Integer.valueOf(i5)).run();
        }
    }

    public final void p1(android.content.Context context) {
        com.cndatacom.traffic.TrafficStatsManager.getInstance().release(context);
    }

    public final void p2() {
        android.content.Context contextC1 = c1();
        P0(contextC1, com.cndatacom.sdk.portal.util.NetUtil.getWifiState(contextC1), false, true);
    }

    public final void q1() {
        android.content.Context contextC1 = c1();
        com.cndatacom.campus.work.CheckRegularWorker.getInstance().closeCheckNetRegularly();
        com.cndatacom.zexcheck.v3.manager.ExCheckManager.getInstance().release();
        com.cndatacom.traffic.TrafficStatsManager.getInstance().changeNet(contextC1);
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(contextC1, 5);
        com.cndatacom.topology.TopologyManager.getInstance().release(contextC1);
        com.cndatacom.safecollection.SafeCollectionManager.getInstance().release(contextC1);
        com.cndatacom.campus.work.WiFiInfoWorker.getInstance().release(contextC1);
        com.cndatacom.campus.work.RoutingdelayWorker.getInstance().release(contextC1);
    }

    public final void q2(com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        org.json.JSONObject jSONObjectOnCheckUpdate = com.cndatacom.sdk.portal.http.CdcProtocol.onCheckUpdate(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain());
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onCheckUpdate ->" + jSONObjectOnCheckUpdate);
        uniJSCallback.invoke(com.alibaba.fastjson.JSON.parseObject(jSONObjectOnCheckUpdate.toString()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:261:0x03e0  */
    public final void r1(java.lang.String str, final com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.app.AlertDialog alertDialog;
        str.hashCode();
        switch (str) {
            case "showModal":
                Q2(jSONArray, uniJSCallback);
                break;
            case "showPopup":
                Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3555a.T1(jSONArray);
                    }
                });
                break;
            case "showToast":
                S2(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "des3EncodeECB":
                T0(jSONArray, uniJSCallback);
                break;
            case "InitMananger":
                n(jSONArray, uniJSCallback);
                break;
            case "onAskPermission":
                k2(jSONArray);
                break;
            case "onIntentAskVpnPage":
                w2(9);
                uniJSCallback.invoke("");
                break;
            case "onAskSSIDPermission":
                l2(jSONArray, uniJSCallback);
                break;
            case "onIntentLocationServicePage":
                u2();
                uniJSCallback.invoke("");
                break;
            case "onRetry":
                C2();
                break;
            case "onResetDetectSettings":
                com.cndatacom.sdk.portal.manager.DetectManager.getInstance().resetLastLocalDetectUrlData();
                Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.8
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(com.cndatacom.campus.PortalMananger.this.c1(), com.cndatacom.campus.PortalMananger.this.c1().getString(com.cndatacom.campus.R.string.reset_text));
                    }
                });
                break;
            case "downloadApp":
                X0(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "onExitVisitor":
                this.f3372y.put(java.lang.Integer.valueOf(this.f3351j), uniJSCallback);
                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(c1(), 14);
                break;
            case "onMoveTaskToBack":
                Z0().moveTaskToBack(false);
                break;
            case "onAuth":
                m2(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "onCall":
                o2(jSONArray, uniJSCallback);
                break;
            case "onTerm":
                F2("1");
                uniJSCallback.invoke("");
                break;
            case "onQueryPermission":
                A2();
                break;
            case "getCacheData":
                b1(jSONArray, uniJSCallback);
                break;
            case "onCheckNetGoon":
                p2();
                uniJSCallback.invoke("");
                break;
            case "onGetVerificatioCode":
                r2(jSONArray, uniJSCallback);
                break;
            case "onQueryPersonalInfo":
                B2(jSONArray, uniJSCallback);
                break;
            case "onCheckNet":
                j2();
                uniJSCallback.invoke("");
                break;
            case "jsLog":
                R1(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "onStartNetCheckTool":
                E2(jSONArray, uniJSCallback);
                break;
            case "hideLoading":
                uniJSCallback.invoke("");
                android.app.AlertDialog alertDialog2 = this.J;
                if (alertDialog2 != null && alertDialog2.isShowing()) {
                    this.J.dismiss();
                    break;
                }
                break;
            case "getAppInfo":
                a1(uniJSCallback);
                break;
            case "onExitApplication":
                alertDialog = this.J;
                if (alertDialog != null && alertDialog.isShowing()) {
                    this.J.dismiss();
                }
                android.app.AlertDialog alertDialogLoading = com.cndatacom.dialog.Dialog.loading(Z0(), Z0().getString(com.cndatacom.campus.R.string.exit_text), false);
                this.J = alertDialogLoading;
                alertDialogLoading.show();
                this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.7
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.campus.PortalMananger.this.onExitApplication(true);
                    }
                });
                break;
            case "revokePrivacy":
                com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(c1(), "PrivacyKey", false);
                com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(c1(), "FINE_LOCATION", true);
                com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().setOpenSSID(false).save();
                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(c1(), 16);
                break;
            case "showCheckBoxModal":
                M2(jSONArray, uniJSCallback);
                break;
            case "getMulCacheData":
                e1(jSONArray, uniJSCallback);
                break;
            case "onInWebView":
                t2(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "onIntentPermissionPage":
                v2();
                uniJSCallback.invoke("");
                break;
            case "checkPermission":
                R0(jSONArray, uniJSCallback);
                break;
            case "showLoading":
                N2(jSONArray, uniJSCallback);
                break;
            case "onIntentWiFiPage":
                y2();
                uniJSCallback.invoke("");
                break;
            case "runManagerInternetTool":
                z2(uniJSCallback);
                break;
            case "hideModal":
                uniJSCallback.invoke("");
                android.app.AlertDialog alertDialog3 = this.I;
                if (alertDialog3 != null && alertDialog3.isShowing()) {
                    this.I.dismiss();
                    break;
                }
                break;
            case "hidePopup":
                Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3529a.U1(jSONArray);
                    }
                });
                break;
            case "termOtherClient":
                W2(jSONArray, uniJSCallback);
                break;
            case "postBackgroundNotification":
                if (!com.cndatacom.campus.CampusApplication.isRunBackground()) {
                }
                try {
                    com.cndatacom.sdk.portal.notify.NotifyManager.getInstance().postNotification(c1(), jSONArray.getString(0), com.cndatacom.campus.R.mipmap.ic_launcher);
                    break;
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                }
                alertDialog = this.J;
                if (alertDialog != null) {
                    this.J.dismiss();
                }
                android.app.AlertDialog alertDialogLoading2 = com.cndatacom.dialog.Dialog.loading(Z0(), Z0().getString(com.cndatacom.campus.R.string.exit_text), false);
                this.J = alertDialogLoading2;
                alertDialogLoading2.show();
                this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.7
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.campus.PortalMananger.this.onExitApplication(true);
                    }
                });
                break;
            case "setCacheData":
                J2(jSONArray, uniJSCallback);
                break;
            case "runInstalledApp":
                I2(jSONArray, uniJSCallback);
                break;
            case "loadDialogAD":
                f2(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "updateNetworkInfo":
                Y2(jSONArray, uniJSCallback);
                break;
            case "getPersonalInfo":
                f1(jSONArray, uniJSCallback);
                break;
            case "loadImage":
                g2(jSONArray, uniJSCallback);
                break;
            case "onInAppBrowser":
                s2(jSONArray);
                uniJSCallback.invoke("");
                break;
            case "authOtherClient":
                H0(jSONArray, uniJSCallback);
                break;
            case "postNotification":
                com.cndatacom.sdk.portal.notify.NotifyManager.getInstance().postNotification(c1(), jSONArray.getString(0), com.cndatacom.campus.R.mipmap.ic_launcher);
                alertDialog = this.J;
                if (alertDialog != null) {
                    this.J.dismiss();
                }
                android.app.AlertDialog alertDialogLoading3 = com.cndatacom.dialog.Dialog.loading(Z0(), Z0().getString(com.cndatacom.campus.R.string.exit_text), false);
                this.J = alertDialogLoading3;
                alertDialogLoading3.show();
                this.f3371x.submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.7
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cndatacom.campus.PortalMananger.this.onExitApplication(true);
                    }
                });
                break;
            case "getCopyPersonalInfo":
                d1(jSONArray, uniJSCallback);
                break;
            case "onVersionUpdate":
                q2(uniJSCallback);
                break;
            case "onShareLog":
                D2();
                uniJSCallback.invoke("");
                break;
            case "onIntentVpnPage":
                x2();
                uniJSCallback.invoke("");
                break;
        }
    }

    public final void r2(com.alibaba.fastjson.JSONArray jSONArray, com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        boolean zOnGetVerificatioCode = com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().onGetVerificatioCode(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), jSONArray.getString(0));
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onGetVerificatioCode->" + zOnGetVerificatioCode);
        if (uniJSCallback != null) {
            uniJSCallback.invoke(zOnGetVerificatioCode);
        }
    }

    public final void s1() {
        com.cndatacom.sdk.portal.entity.ConfigInfo configInfoObtain = com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        n2(configInfoObtain, configInfoObtain.getCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_ACCOUNT, ""), configInfoObtain.getCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_PASSWORD, ""), configInfoObtain.getCacheConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_CACHE_VERIFY, ""));
    }

    public final void s2(com.alibaba.fastjson.JSONArray jSONArray) {
        com.cndatacom.sdk.portal.util.IntentUtil.inBrowserOpen(Z0(), jSONArray.getString(0));
    }

    public final void t1(java.lang.String str, java.lang.String str2) {
        android.app.AlertDialog alertDialog = this.Z;
        if (alertDialog == null || !alertDialog.isShowing()) {
            try {
                org.json.JSONArray jSONArray = new org.json.JSONArray(str2);
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(Z0());
                android.view.View viewInflate = android.view.LayoutInflater.from(Z0()).inflate(com.cndatacom.campus.R.layout.alert_history_pop, (android.view.ViewGroup) null);
                if (jSONArray.length() > 0) {
                    androidx.recyclerview.widget.RecyclerView recyclerView = (androidx.recyclerview.widget.RecyclerView) viewInflate.findViewById(com.cndatacom.campus.R.id.recycler_view);
                    recyclerView.setLayoutManager(new androidx.recyclerview.widget.LinearLayoutManager(c1()));
                    recyclerView.setAdapter(new com.cndatacom.campus.adapter.HistoryAdapter(c1(), jSONArray));
                    recyclerView.setVisibility(0);
                } else {
                    ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.null_tv)).setVisibility(0);
                }
                builder.setView(viewInflate);
                android.app.AlertDialog alertDialogCreate = builder.create();
                this.Z = alertDialogCreate;
                android.view.Window window = alertDialogCreate.getWindow();
                if (window != null) {
                    android.view.WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.gravity = 53;
                    attributes.y = 240;
                    window.setAttributes(attributes);
                }
                this.Z.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
                this.Z.setCancelable(true);
                this.Z.setCanceledOnTouchOutside(true);
                this.Z.show();
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    public final void t2(com.alibaba.fastjson.JSONArray jSONArray) {
        java.lang.String string = jSONArray.getString(0);
        if (!string.startsWith("http:") && !string.startsWith("https:")) {
            string = "file:///android_asset/" + string;
        }
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onInWebView->" + string);
        com.cndatacom.campus.PortalWebviewActivity.startActivity(Z0(), string, jSONArray.getString(1));
    }

    public final void u1(android.content.Context context) {
        z2.a.d();
        com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().initLog(context, true);
        com.cndatacom.sdk.portal.entity.ConfigInfo.obtain();
        com.cndatacom.personal.PersonalManager.getInstance().collectionDeviceInfo(context);
        S0(context);
    }

    public final void u2() {
        Z0().startActivity(new android.content.Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    public final void v1(android.content.Context context, android.content.Intent intent) {
        if (intent == null) {
            return;
        }
        java.lang.String string = intent.getBundleExtra(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_BUNDLEKEY).getString(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_DATA_KEY);
        try {
            if (android.text.TextUtils.isEmpty(string)) {
                return;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject(string);
            com.cndatacom.campus.work.InterfaceInfoWorker.getInstance().collection(context, com.cndatacom.sdk.portal.entity.ConfigInfo.obtain(), jSONObject.optString("url", ""), jSONObject.optLong("startTime", 0L), jSONObject.optLong("endTime", 0L), jSONObject.optInt("status", 0));
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void v2() {
        com.cndatacom.sdk.portal.util.IntentUtil.goToPermissionSetting(Z0());
    }

    public final void w1(android.content.Context context, android.content.Intent intent) {
        com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult = (com.cndatacom.sdk.portal.entity.ReturnUIResult) intent.getBundleExtra(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_BUNDLEKEY).getParcelable(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_DATA_KEY);
        if (returnUIResult.getErrorCode().equals(com.cndatacom.sdk.portal.entity.CdcErrCode.KEEP_TIMEOUT_ERROR) && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
            com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
        }
        com.cndatacom.sdk.portal.interfaces.PortalEvent portalEvent = this.f3362o0;
        if (portalEvent != null) {
            portalEvent.handleConnectFailMsg(returnUIResult);
        }
        U2(context);
        V2();
    }

    public final void w2(int i5) {
        try {
            com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2 = new com.cndatacom.campus.permission.v2.entity.PermissionInfoV2();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("title", "VPN权限使用说明");
            jSONObject.put("titleBold", true);
            jSONObject.put("titleAlign", "left");
            jSONObject.put("content", "当您使用APP时，在防止APP进程被杀时会使用VPN权限。如果不授权上述权限，会导致客户端无法正常保持上网状态，建议选择允许。");
            jSONObject.put("contentAlign", "left");
            permissionInfoV2.setTipDialogOptions(jSONObject);
            permissionInfoV2.setRequestCode(i5);
            this.f3346g0.addPermission(permissionInfoV2);
            this.f3346g0.start();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void x1(android.content.Context context) {
        com.cndatacom.topology.TopologyManager.getInstance().release(context);
        com.cndatacom.traffic.TrafficStatsManager.getInstance().release(context);
        com.cndatacom.safecollection.SafeCollectionManager.getInstance().release(context);
        com.cndatacom.collection.CollectionManager.getInstance().release(context);
        com.cndatacom.campus.work.CapabilityWorker.getInstance().release(context);
        com.cndatacom.campus.work.WiFiInfoWorker.getInstance().release(context);
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancelAll();
        N0("onTrimMemoryEvent", new org.json.JSONObject());
    }

    public final void x2() {
        final android.content.Context contextC1 = c1();
        if (!com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().isVpn()) {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.13
                @Override // java.lang.Runnable
                public void run() {
                    android.content.Context context = contextC1;
                    com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(context, context.getString(com.cndatacom.campus.R.string.no_vpn));
                }
            });
            return;
        }
        android.content.Intent intentPrepare = android.net.VpnService.prepare(contextC1);
        if (intentPrepare != null) {
            Z0().startActivityForResult(intentPrepare, 4);
        } else {
            Z0().runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.12
                @Override // java.lang.Runnable
                public void run() {
                    android.content.Context context = contextC1;
                    com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(context, context.getString(com.cndatacom.campus.R.string.has_vpn));
                }
            });
        }
    }

    public final void y1(final java.lang.String str, final com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        android.app.Activity activityZ0 = Z0();
        final android.content.Context contextC1 = c1();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activityZ0);
        android.view.View viewInflate = android.view.LayoutInflater.from(activityZ0).inflate(com.cndatacom.campus.R.layout.alert_privacy_layout, (android.view.ViewGroup) null);
        ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.message_tv)).setText(contextC1.getString(com.cndatacom.campus.R.string.dcloud_privacy_prompt_message).replaceAll("\\{appName\\}", contextC1.getString(com.cndatacom.campus.R.string.app_name)));
        final android.widget.CheckBox checkBox = (android.widget.CheckBox) viewInflate.findViewById(2131165263);
        com.cndatacom.campus.util.SpannableStringUtil.bindLinkText(contextC1, (android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.checkbox_tv), contextC1.getString(com.cndatacom.campus.R.string.select_agree), contextC1.getResources().getString(com.cndatacom.campus.R.string.privacy_link_text), false, new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.16
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                com.cndatacom.campus.PortalWebviewActivity.startActivity(com.cndatacom.campus.PortalMananger.this.Z0(), "file:///android_asset/" + contextC1.getString(com.cndatacom.campus.R.string.privacyFilePath), contextC1.getString(com.cndatacom.campus.R.string.dcloud_privacy_prompt_title));
            }
        });
        builder.setView(viewInflate);
        final android.app.AlertDialog alertDialogCreate = builder.create();
        ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.cancel_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.17
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                alertDialogCreate.dismiss();
                android.os.Process.killProcess(android.os.Process.myPid());
            }
        });
        ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.campus.R.id.confirm_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.18
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                if (!checkBox.isChecked()) {
                    android.content.Context context = contextC1;
                    com.cndatacom.sdk.portal.util.ToastUtil.showBottomText(context, context.getString(com.cndatacom.campus.R.string.select_toast));
                } else {
                    alertDialogCreate.dismiss();
                    com.cndatacom.sdk.portal.util.PreferencesUtil.putBoolean(contextC1, str, true);
                    com.cndatacom.campus.PortalMananger.this.n1(true, uniJSCallback);
                }
            }
        });
        ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.campus.R.id.visitor_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.PortalMananger.19
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                alertDialogCreate.dismiss();
                com.cndatacom.campus.PortalMananger.this.J1(uniJSCallback);
            }
        });
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        alertDialogCreate.show();
    }

    public final void y2() {
        Z0().startActivityForResult(new android.content.Intent("android.settings.WIFI_SETTINGS"), 3);
    }

    public final void z1(android.content.Context context, android.content.Intent intent, int i5) {
        if (i5 == 1) {
            com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().freeDaMod();
            w1(context, intent);
            return;
        }
        if (i5 == 2 || i5 == 3) {
            com.cndatacom.sdk.portal.entity.ConfigInfo.obtain().freeDaMod();
            C1(context, intent);
            return;
        }
        if (i5 == 7) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("PortalMananger releaseMemory->");
            x1(context);
            return;
        }
        if (i5 == 10) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("ACTION_ACTIVITY_RESUME :");
            this.f3371x.execute(new java.lang.Runnable() { // from class: com.cndatacom.campus.PortalMananger.38
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.campus.PortalMananger.this.B1();
                }
            });
            return;
        }
        if (i5 == 13) {
            L1(context, intent);
            return;
        }
        if (i5 != 15) {
            if (i5 != 1000) {
                return;
            }
            v1(context, intent);
        } else {
            com.cndatacom.campus.uni.UniJSCallback uniJSCallback = this.f3372y.get(java.lang.Integer.valueOf(this.f3351j));
            if (uniJSCallback != null) {
                uniJSCallback.invoke(true);
            }
        }
    }

    public final void z2(com.cndatacom.campus.uni.UniJSCallback uniJSCallback) {
        com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.JSON.parseObject(com.cndatacom.sdk.portal.http.CdcProtocol.onQueryClient(c1(), com.cndatacom.sdk.portal.entity.ConfigInfo.obtain()).toString());
        com.cndatacom.sdk.portal.util.ExLogUtil.i("onQueryClient -->" + object);
        uniJSCallback.invoke(object);
    }
}
