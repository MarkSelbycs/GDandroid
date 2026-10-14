package com.cndatacom.sdk.portal.http;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CdcHttpClient {
    private static com.cndatacom.sdk.portal.proxy.CdcHttpClientProxy mCdcHttpClientProxy;
    private int CONN_TIMEOUT;
    private final int HTTP_OK;
    private final int MAX_ALGO_ERROR;
    private final int MAX_JUMP;
    private final java.util.regex.Pattern META_REGEX;
    private final int META_URL_GROUP;
    private int READ_TIMEOUT;
    private final java.util.regex.Pattern SCRIPT_REGEX;
    private final int SCRIPT_URL_GROUP;
    private final java.lang.String ZERO_AID;
    private final byte[] ZERO_DATA;
    private com.cndatacom.sdk.portal.entity.ConfigInfo mConfigInfo;

    /* JADX INFO: renamed from: com.cndatacom.sdk.portal.http.CdcHttpClient$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
    }

    public class IndexResult extends com.cndatacom.sdk.portal.http.CdcHttpClient.Result {
        private java.lang.String finalUrl;
        private boolean hasIndexPage;
        private java.lang.String redirectUrl;

        public IndexResult() {
            super();
            this.hasIndexPage = false;
            this.finalUrl = "";
            this.redirectUrl = "";
        }

        public java.lang.String getFinalUrl() {
            return this.finalUrl;
        }

        public java.lang.String getRedirectUrl() {
            return this.redirectUrl;
        }

        public boolean isHasIndexPage() {
            return this.hasIndexPage;
        }

        public void setFinalUrl(java.lang.String str) {
            this.finalUrl = str;
        }

        public void setHasIndexPage(boolean z4) {
            this.hasIndexPage = z4;
        }

        public void setRedirectUrl(java.lang.String str) {
            this.redirectUrl = str;
        }
    }

    public class PriorityIPv4Dns implements c4.o {
        private PriorityIPv4Dns() {
        }

        @Override // c4.o
        public java.util.List<java.net.InetAddress> lookup(java.lang.String str) throws java.net.UnknownHostException {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            try {
                for (java.net.InetAddress inetAddress : java.net.InetAddress.getAllByName(str)) {
                    if (inetAddress instanceof java.net.Inet4Address) {
                        arrayList.add(0, inetAddress);
                    } else {
                        arrayList.add(inetAddress);
                    }
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
            return arrayList;
        }

        public /* synthetic */ PriorityIPv4Dns(com.cndatacom.sdk.portal.http.CdcHttpClient cdcHttpClient, com.cndatacom.sdk.portal.http.CdcHttpClient.AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class Result {
        private byte[] data;
        private int httpCode = 0;
        private java.lang.String cdcCode = "";
        private java.lang.String subCode = "";
        private java.lang.String extraCode = "";

        public Result() {
        }

        public java.lang.String getCdcCode() {
            return this.cdcCode;
        }

        public byte[] getData() {
            byte[] bArr = this.data;
            return (bArr == null || bArr.length <= 0) ? new byte[0] : bArr;
        }

        public java.lang.String getDataString() {
            byte[] bArr = this.data;
            if (bArr == null || bArr.length <= 0) {
                return "";
            }
            try {
                return new java.lang.String(bArr, "utf-8");
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                return "";
            }
        }

        public java.lang.String getExtraCode() {
            return this.extraCode;
        }

        public int getHttpCode() {
            return this.httpCode;
        }

        public java.lang.String getSubCode() {
            return this.subCode;
        }

        public boolean isHttpOk() {
            int i5 = this.httpCode;
            return i5 >= 200 && i5 < 300;
        }

        public boolean isRedirect() {
            int i5 = this.httpCode;
            return i5 >= 300 && i5 < 400;
        }

        public boolean isSuccessful() {
            return isHttpOk() && com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(getCdcCode());
        }

        public void setCdcCode(java.lang.String str) {
            this.cdcCode = str;
        }

        public void setData(byte[] bArr) {
            this.data = bArr;
        }

        public void setHttpCode(int i5) {
            this.httpCode = i5;
        }
    }

    public CdcHttpClient(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        this.HTTP_OK = 200;
        this.MAX_JUMP = 5;
        this.MAX_ALGO_ERROR = 3;
        this.CONN_TIMEOUT = 5000;
        this.READ_TIMEOUT = 5000;
        this.ZERO_AID = "00000000-0000-0000-0000-000000000000";
        this.ZERO_DATA = "00000000-0000-0000-0000-000000000000".getBytes();
        this.META_REGEX = java.util.regex.Pattern.compile("<meta(\\s+)http-equiv=(['\"])?refresh[^>]*url=([^\"^']+)(['\"])[^>]*>", 2);
        this.SCRIPT_REGEX = java.util.regex.Pattern.compile("<script type=[^>]+>location.href=(['\"])([^\"^']+)(['\"])[^<]*</script>", 2);
        this.META_URL_GROUP = 3;
        this.SCRIPT_URL_GROUP = 2;
        this.mConfigInfo = configInfo;
    }

    private void addInnerConnHead(c4.y.b bVar, java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        bVar.f(str, str2);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("  PROP ", str, " = ", str2);
    }

    private void addInnerConnHeadCheck(c4.y.b bVar, java.lang.String str, java.lang.String str2) {
        addInnerConnHead(bVar, str, this.mConfigInfo.getPrivateConfig(str2, ""));
    }

    private void addInnerWlanInfo(java.lang.String str) {
        if (hasAcAndUserIp(str)) {
            android.net.Uri uri = android.net.Uri.parse(str);
            this.mConfigInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_IP_NAME, uri.getQuery());
            java.lang.String queryParameter = uri.getQueryParameter(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_USER_IP);
            if (!android.text.TextUtils.isEmpty(queryParameter)) {
                this.mConfigInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_USER_IP, queryParameter);
            }
            java.lang.String queryParameter2 = uri.getQueryParameter("userip");
            if (!android.text.TextUtils.isEmpty(queryParameter2)) {
                this.mConfigInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_USER_IP, queryParameter2);
            }
            java.lang.String queryParameter3 = uri.getQueryParameter(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_AC_IP);
            if (!android.text.TextUtils.isEmpty(queryParameter3)) {
                this.mConfigInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_AC_IP, queryParameter3);
            }
            java.lang.String queryParameter4 = uri.getQueryParameter("wlanacname");
            if (!android.text.TextUtils.isEmpty(queryParameter4)) {
                this.mConfigInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_AC_IP, queryParameter4);
            }
            java.lang.String queryParameter5 = uri.getQueryParameter("mscgip");
            if (android.text.TextUtils.isEmpty(queryParameter5)) {
                return;
            }
            this.mConfigInfo.putPrivateConfig(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_AC_IP, queryParameter5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x0280  */
    /* JADX WARN: Code duplicated, block: B:130:0x0286  */
    /* JADX WARN: Code duplicated, block: B:133:0x0295  */
    /* JADX WARN: Code duplicated, block: B:134:0x0298  */
    /* JADX WARN: Code duplicated, block: B:142:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:145:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:146:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:181:0x01b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0194 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x014e A[Catch: Exception -> 0x0205, all -> 0x02a3, TRY_LEAVE, TryCatch #2 {all -> 0x02a3, blocks: (B:39:0x0127, B:41:0x012b, B:42:0x012d, B:45:0x0145, B:47:0x014e, B:51:0x017f, B:55:0x0194, B:56:0x019f, B:60:0x01b0, B:64:0x01c0, B:67:0x01c8, B:69:0x01cb, B:71:0x01d8, B:73:0x01df, B:74:0x01e7, B:125:0x025e), top: B:153:0x0127 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0190  */
    /* JADX WARN: Code duplicated, block: B:56:0x019f A[Catch: Exception -> 0x0205, all -> 0x02a3, TryCatch #2 {all -> 0x02a3, blocks: (B:39:0x0127, B:41:0x012b, B:42:0x012d, B:45:0x0145, B:47:0x014e, B:51:0x017f, B:55:0x0194, B:56:0x019f, B:60:0x01b0, B:64:0x01c0, B:67:0x01c8, B:69:0x01cb, B:71:0x01d8, B:73:0x01df, B:74:0x01e7, B:125:0x025e), top: B:153:0x0127 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x01ac A[LOOP:0: B:176:0x000a->B:59:0x01ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:74:0x01e7 A[Catch: Exception -> 0x0205, all -> 0x02a3, TRY_LEAVE, TryCatch #2 {all -> 0x02a3, blocks: (B:39:0x0127, B:41:0x012b, B:42:0x012d, B:45:0x0145, B:47:0x014e, B:51:0x017f, B:55:0x0194, B:56:0x019f, B:60:0x01b0, B:64:0x01c0, B:67:0x01c8, B:69:0x01cb, B:71:0x01d8, B:73:0x01df, B:74:0x01e7, B:125:0x025e), top: B:153:0x0127 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v2 */
    private com.cndatacom.sdk.portal.http.CdcHttpClient.Result doQuery(java.lang.String str, byte[] bArr, boolean z4) throws java.lang.Throwable {
        boolean z5;
        int i5;
        ?? r8;
        int i6;
        long jCurrentTimeMillis;
        android.content.Context context;
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result result;
        int i7;
        java.lang.String id;
        byte[] bArrEncode;
        boolean z6;
        c4.a0 a0VarA;
        byte[] bArrE;
        java.lang.String str2 = str;
        boolean z7 = false;
        long jCurrentTimeMillis2 = 0;
        com.cndatacom.sdk.portal.http.CdcHttpClient.Result result2 = null;
        int i8 = 0;
        while (!android.text.TextUtils.isEmpty(str)) {
            try {
                com.cndatacom.sdk.portal.http.CdcHttpClient.Result result3 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                try {
                    try {
                        c4.y.b bVar = new c4.y.b();
                        bVar.f("accept", "text/html,text/xml,application/xhtml+xml,application/x-javascript,*/*");
                        bVar.f("Connection", "close");
                        addInnerConnHeadCheck(bVar, "CDC-SchoolId", com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_SCHOOL_ID);
                        addInnerConnHeadCheck(bVar, "CDC-Domain", com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_DOMAIN);
                        addInnerConnHeadCheck(bVar, "CDC-Area", com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_AREA);
                        addInnerConnHead(bVar, "Client-ID", this.mConfigInfo.getClientId());
                        addInnerConnHead(bVar, "User-Agent", this.mConfigInfo.getUserAgent(z7));
                        com.cndatacom.campus.netcore.DaMod daMod = z4 ? null : this.mConfigInfo.getDaMod();
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            try {
                                                try {
                                                    try {
                                                        try {
                                                            try {
                                                                try {
                                                                    if (daMod != null) {
                                                                        try {
                                                                            if (daMod.isOk()) {
                                                                                id = daMod.getId();
                                                                                bArrEncode = daMod.Encode(bArr);
                                                                                if (bArrEncode != null && bArrEncode.length != 0) {
                                                                                    addInnerConnHead(bVar, "Algo-ID", id);
                                                                                    addInnerConnHead(bVar, "CDC-Checksum", com.cndatacom.sdk.portal.util.FileUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.FileUtil.md5(bArrEncode)));
                                                                                    addInnerConnHead(bVar, "Content-Length", java.lang.String.valueOf(bArrEncode.length));
                                                                                    bVar.l(c4.z.d(c4.t.b("text/plain; charset=utf-8"), bArrEncode));
                                                                                    jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                                                                                    bVar.o(str2);
                                                                                    c4.y yVarG = bVar.g();
                                                                                    c4.v.b bVar2 = new c4.v.b();
                                                                                    c4.v.b bVarJ = bVar2.h(z7).c(null).j(z7);
                                                                                    long j5 = this.CONN_TIMEOUT;
                                                                                    java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
                                                                                    bVarJ.d(j5, timeUnit).i(this.READ_TIMEOUT, timeUnit).l(this.READ_TIMEOUT, timeUnit).a((c4.s) z2.a.a());
                                                                                    i5 = 1;
                                                                                    java.lang.String[] strArr = new java.lang.String[1];
                                                                                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                                                                                    sb.append("CdcHttpClient doQuery->");
                                                                                    sb.append(str);
                                                                                    z6 = false;
                                                                                    strArr[0] = sb.toString();
                                                                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr);
                                                                                    a0VarA = bVar2.b().y(yVarG).a();
                                                                                    result2 = result3;
                                                                                    result2.httpCode = a0VarA.y();
                                                                                    java.lang.String[] strArr2 = new java.lang.String[1];
                                                                                    z6 = false;
                                                                                    strArr2[0] = "CdcHttpClient httpCode->" + result2.httpCode;
                                                                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr2);
                                                                                    if (result2.isHttpOk()) {
                                                                                        bArrE = a0VarA.u().e();
                                                                                        java.lang.String strC = a0VarA.C("Error-Code");
                                                                                        result2.cdcCode = strC;
                                                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i("  Error-Code: ", strC);
                                                                                        java.lang.String strC2 = a0VarA.C("Sub-Error");
                                                                                        result2.subCode = strC2;
                                                                                        java.lang.String[] strArr3 = new java.lang.String[2];
                                                                                        try {
                                                                                            strArr3[0] = "  Sub-Error: ";
                                                                                            try {
                                                                                                strArr3[1] = strC2;
                                                                                                com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr3);
                                                                                                if (com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED.equals(result2.cdcCode)) {
                                                                                                    i8++;
                                                                                                    if (i8 > 3) {
                                                                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i("algo count is surpass");
                                                                                                    } else {
                                                                                                        this.mConfigInfo.setDaMod(bArrE).getDaMod();
                                                                                                        if (z4) {
                                                                                                            str2 = str;
                                                                                                            z7 = false;
                                                                                                        }
                                                                                                    }
                                                                                                } else if (com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(result2.cdcCode)) {
                                                                                                    if (daMod != null || !daMod.isOk()) {
                                                                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i("daMod error");
                                                                                                        result2.subCode = "";
                                                                                                        result2.extraCode = com.cndatacom.sdk.portal.entity.CdcErrCode.DECODE_ERROR;
                                                                                                    } else if (bArrE != null && bArrE.length > 0) {
                                                                                                        result2.data = daMod.Decode(bArrE);
                                                                                                        if (result2.data == null || result2.data.length == 0) {
                                                                                                            result2.subCode = "";
                                                                                                            result2.extraCode = com.cndatacom.sdk.portal.entity.CdcErrCode.DECODE_ERROR;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            } catch (java.lang.Exception e5) {
                                                                                                e = e5;
                                                                                                i5 = 1;
                                                                                                java.lang.String[] strArr4 = new java.lang.String[i5];
                                                                                                z5 = false;
                                                                                                try {
                                                                                                    strArr4[0] = "CdcHttpClient Exception->" + e.toString();
                                                                                                    com.cndatacom.sdk.portal.util.ExLogUtil.e(strArr4);
                                                                                                    e.printStackTrace();
                                                                                                    if (result2 == null) {
                                                                                                        result = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                                                                    } else {
                                                                                                        result = result2;
                                                                                                    }
                                                                                                    long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
                                                                                                    context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                                                    if (result.isHttpOk()) {
                                                                                                        i7 = 0;
                                                                                                    } else {
                                                                                                        i7 = -1;
                                                                                                    }
                                                                                                    jCurrentTimeMillis = jCurrentTimeMillis3;
                                                                                                    i6 = i7;
                                                                                                } catch (java.lang.Throwable th) {
                                                                                                    th = th;
                                                                                                    if (result2 == null) {
                                                                                                        result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                                                                    }
                                                                                                    long jCurrentTimeMillis4 = java.lang.System.currentTimeMillis();
                                                                                                    android.content.Context context2 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                                                    if (result2.isHttpOk()) {
                                                                                                        r8 = z5;
                                                                                                    } else {
                                                                                                        r8 = -1;
                                                                                                    }
                                                                                                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context2, str, jCurrentTimeMillis2, jCurrentTimeMillis4, r8);
                                                                                                    throw th;
                                                                                                }
                                                                                            }
                                                                                        } catch (java.lang.Throwable th2) {
                                                                                            th = th2;
                                                                                            z5 = false;
                                                                                            if (result2 == null) {
                                                                                                result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                                                            }
                                                                                            long jCurrentTimeMillis5 = java.lang.System.currentTimeMillis();
                                                                                            android.content.Context context3 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                                            if (result2.isHttpOk()) {
                                                                                                r8 = z5;
                                                                                            } else {
                                                                                                r8 = -1;
                                                                                            }
                                                                                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context3, str, jCurrentTimeMillis2, jCurrentTimeMillis5, r8);
                                                                                            throw th;
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                }
                                                                                result3.cdcCode = "";
                                                                                result3.subCode = "";
                                                                                result3.extraCode = com.cndatacom.sdk.portal.entity.CdcErrCode.ENCODE_ERROR;
                                                                                result2 = result3;
                                                                                break;
                                                                            }
                                                                        } catch (java.lang.Throwable th3) {
                                                                            th = th3;
                                                                            z5 = z7;
                                                                            result2 = result3;
                                                                            if (result2 == null) {
                                                                                result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                                            }
                                                                            long jCurrentTimeMillis6 = java.lang.System.currentTimeMillis();
                                                                            android.content.Context context4 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                            if (result2.isHttpOk()) {
                                                                                r8 = z5;
                                                                            } else {
                                                                                r8 = -1;
                                                                            }
                                                                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context4, str, jCurrentTimeMillis2, jCurrentTimeMillis6, r8);
                                                                            throw th;
                                                                        }
                                                                    }
                                                                    strArr2[0] = "CdcHttpClient httpCode->" + result2.httpCode;
                                                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr2);
                                                                    if (result2.isHttpOk()) {
                                                                        bArrE = a0VarA.u().e();
                                                                        java.lang.String strC3 = a0VarA.C("Error-Code");
                                                                        result2.cdcCode = strC3;
                                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i("  Error-Code: ", strC3);
                                                                        java.lang.String strC4 = a0VarA.C("Sub-Error");
                                                                        result2.subCode = strC4;
                                                                        java.lang.String[] strArr5 = new java.lang.String[2];
                                                                        strArr5[0] = "  Sub-Error: ";
                                                                        strArr5[1] = strC4;
                                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr5);
                                                                        if (com.cndatacom.sdk.portal.entity.CdcErrCode.ALGO_EXPIRED.equals(result2.cdcCode)) {
                                                                            i8++;
                                                                            if (i8 > 3) {
                                                                                com.cndatacom.sdk.portal.util.ExLogUtil.i("algo count is surpass");
                                                                            } else {
                                                                                this.mConfigInfo.setDaMod(bArrE).getDaMod();
                                                                                if (z4) {
                                                                                    str2 = str;
                                                                                    z7 = false;
                                                                                }
                                                                            }
                                                                        } else if (com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(result2.cdcCode)) {
                                                                            if (daMod != null) {
                                                                                com.cndatacom.sdk.portal.util.ExLogUtil.i("daMod error");
                                                                                result2.subCode = "";
                                                                                result2.extraCode = com.cndatacom.sdk.portal.entity.CdcErrCode.DECODE_ERROR;
                                                                            } else {
                                                                                com.cndatacom.sdk.portal.util.ExLogUtil.i("daMod error");
                                                                                result2.subCode = "";
                                                                                result2.extraCode = com.cndatacom.sdk.portal.entity.CdcErrCode.DECODE_ERROR;
                                                                            }
                                                                        }
                                                                    }
                                                                    break;
                                                                    break;
                                                                } catch (java.lang.Throwable th4) {
                                                                    th = th4;
                                                                    z5 = z6;
                                                                    if (result2 == null) {
                                                                        result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                                    }
                                                                    long jCurrentTimeMillis7 = java.lang.System.currentTimeMillis();
                                                                    android.content.Context context5 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                    if (result2.isHttpOk()) {
                                                                        r8 = z5;
                                                                    } else {
                                                                        r8 = -1;
                                                                    }
                                                                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context5, str, jCurrentTimeMillis2, jCurrentTimeMillis7, r8);
                                                                    throw th;
                                                                }
                                                                java.lang.String[] strArr6 = new java.lang.String[1];
                                                                z6 = false;
                                                            } catch (java.lang.Exception e6) {
                                                                e = e6;
                                                                i5 = 1;
                                                            }
                                                            result2.httpCode = a0VarA.y();
                                                        } catch (java.lang.Throwable th5) {
                                                            th = th5;
                                                            z5 = false;
                                                            if (result2 == null) {
                                                                result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                            }
                                                            long jCurrentTimeMillis8 = java.lang.System.currentTimeMillis();
                                                            android.content.Context context6 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                            if (result2.isHttpOk()) {
                                                                r8 = z5;
                                                            } else {
                                                                r8 = -1;
                                                            }
                                                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context6, str, jCurrentTimeMillis2, jCurrentTimeMillis8, r8);
                                                            throw th;
                                                        }
                                                    } catch (java.lang.Exception e7) {
                                                        e = e7;
                                                        i5 = 1;
                                                        java.lang.String[] strArr7 = new java.lang.String[i5];
                                                        z5 = false;
                                                        strArr7[0] = "CdcHttpClient Exception->" + e.toString();
                                                        com.cndatacom.sdk.portal.util.ExLogUtil.e(strArr7);
                                                        e.printStackTrace();
                                                        if (result2 == null) {
                                                            result = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                        } else {
                                                            result = result2;
                                                        }
                                                        long jCurrentTimeMillis9 = java.lang.System.currentTimeMillis();
                                                        context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                        if (result.isHttpOk()) {
                                                            i7 = 0;
                                                        } else {
                                                            i7 = -1;
                                                        }
                                                        jCurrentTimeMillis = jCurrentTimeMillis9;
                                                        i6 = i7;
                                                        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context, str, jCurrentTimeMillis2, jCurrentTimeMillis, i6);
                                                        return result;
                                                    }
                                                    strArr[0] = sb.toString();
                                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr);
                                                    a0VarA = bVar2.b().y(yVarG).a();
                                                    result2 = result3;
                                                } catch (java.lang.Throwable th6) {
                                                    th = th6;
                                                    result2 = result3;
                                                }
                                                sb.append(str);
                                                z6 = false;
                                            } catch (java.lang.Exception e8) {
                                                e = e8;
                                                result2 = result3;
                                                i5 = 1;
                                                java.lang.String[] strArr8 = new java.lang.String[i5];
                                                z5 = false;
                                                strArr8[0] = "CdcHttpClient Exception->" + e.toString();
                                                com.cndatacom.sdk.portal.util.ExLogUtil.e(strArr8);
                                                e.printStackTrace();
                                                if (result2 == null) {
                                                    result = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                                } else {
                                                    result = result2;
                                                }
                                                long jCurrentTimeMillis10 = java.lang.System.currentTimeMillis();
                                                context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                if (result.isHttpOk()) {
                                                    i7 = 0;
                                                } else {
                                                    i7 = -1;
                                                }
                                                jCurrentTimeMillis = jCurrentTimeMillis10;
                                                i6 = i7;
                                                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context, str, jCurrentTimeMillis2, jCurrentTimeMillis, i6);
                                                return result;
                                            }
                                        } catch (java.lang.Throwable th7) {
                                            th = th7;
                                            result2 = result3;
                                            z5 = false;
                                            if (result2 == null) {
                                                result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                                            }
                                            long jCurrentTimeMillis11 = java.lang.System.currentTimeMillis();
                                            android.content.Context context7 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                            if (result2.isHttpOk()) {
                                                r8 = z5;
                                            } else {
                                                r8 = -1;
                                            }
                                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context7, str, jCurrentTimeMillis2, jCurrentTimeMillis11, r8);
                                            throw th;
                                        }
                                        java.lang.String[] strArr9 = new java.lang.String[1];
                                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                                        sb2.append("CdcHttpClient doQuery->");
                                    } catch (java.lang.Exception e9) {
                                        e = e9;
                                        result2 = result3;
                                    }
                                    bVarJ.d(j5, timeUnit).i(this.READ_TIMEOUT, timeUnit).l(this.READ_TIMEOUT, timeUnit).a((c4.s) z2.a.a());
                                    i5 = 1;
                                } catch (java.lang.Exception e10) {
                                    e = e10;
                                }
                            } catch (java.lang.Throwable th8) {
                                th = th8;
                            }
                            java.util.concurrent.TimeUnit timeUnit2 = java.util.concurrent.TimeUnit.MILLISECONDS;
                        } catch (java.lang.Exception e11) {
                            e = e11;
                            result2 = result3;
                            i5 = 1;
                            java.lang.String[] strArr10 = new java.lang.String[i5];
                            z5 = false;
                            strArr10[0] = "CdcHttpClient Exception->" + e.toString();
                            com.cndatacom.sdk.portal.util.ExLogUtil.e(strArr10);
                            e.printStackTrace();
                            if (result2 == null) {
                                result = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                            } else {
                                result = result2;
                            }
                            long jCurrentTimeMillis12 = java.lang.System.currentTimeMillis();
                            context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                            if (result.isHttpOk()) {
                                i7 = 0;
                            } else {
                                i7 = -1;
                            }
                            jCurrentTimeMillis = jCurrentTimeMillis12;
                            i6 = i7;
                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context, str, jCurrentTimeMillis2, jCurrentTimeMillis, i6);
                            return result;
                        } catch (java.lang.Throwable th9) {
                            th = th9;
                            result2 = result3;
                        }
                        id = "00000000-0000-0000-0000-000000000000";
                        bArrEncode = this.ZERO_DATA;
                        addInnerConnHead(bVar, "Algo-ID", id);
                        addInnerConnHead(bVar, "CDC-Checksum", com.cndatacom.sdk.portal.util.FileUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.FileUtil.md5(bArrEncode)));
                        addInnerConnHead(bVar, "Content-Length", java.lang.String.valueOf(bArrEncode.length));
                        bVar.l(c4.z.d(c4.t.b("text/plain; charset=utf-8"), bArrEncode));
                        jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                        bVar.o(str2);
                        c4.y yVarG2 = bVar.g();
                        c4.v.b bVar3 = new c4.v.b();
                        c4.v.b bVarJ2 = bVar3.h(z7).c(null).j(z7);
                        long j6 = this.CONN_TIMEOUT;
                    } catch (java.lang.Exception e12) {
                        e = e12;
                    }
                } catch (java.lang.Throwable th10) {
                    th = th10;
                    result2 = result3;
                    z5 = z7;
                    if (result2 == null) {
                        result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
                    }
                    long jCurrentTimeMillis13 = java.lang.System.currentTimeMillis();
                    android.content.Context context8 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                    if (result2.isHttpOk()) {
                        r8 = z5;
                    } else {
                        r8 = -1;
                    }
                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context8, str, jCurrentTimeMillis2, jCurrentTimeMillis13, r8);
                    throw th;
                }
            } catch (java.lang.Exception e13) {
                e = e13;
            } catch (java.lang.Throwable th11) {
                th = th11;
            }
        }
        if (result2 == null) {
            result2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.Result();
        }
        result = result2;
        jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
        i6 = result.isHttpOk() ? 0 : -1;
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context, str, jCurrentTimeMillis2, jCurrentTimeMillis, i6);
        return result;
    }

    private boolean hasAcAndUserIp(java.lang.String str) {
        return (str.contains(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_AC_IP) || str.contains("wlanacname")) || (str.contains("userip") || str.contains(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_WLAN_USER_IP) || str.contains("mscgip"));
    }

    private void readConnHeadAndSetInner(c4.a0 a0Var, java.lang.String str) {
        java.lang.String strC = a0Var.C(str);
        if (android.text.TextUtils.isEmpty(strC)) {
            return;
        }
        this.mConfigInfo.putPrivateConfig(str, strC);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Response Header ", str, " = ", strC);
    }

    public static void setCdcHttpClientProxy(com.cndatacom.sdk.portal.proxy.CdcHttpClientProxy cdcHttpClientProxy) {
        mCdcHttpClientProxy = cdcHttpClientProxy;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x028d A[Catch: all -> 0x0301, TryCatch #0 {all -> 0x0301, blocks: (B:123:0x0286, B:125:0x028d, B:127:0x0296, B:129:0x02a0, B:131:0x02b1), top: B:170:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0296 A[Catch: all -> 0x0301, TryCatch #0 {all -> 0x0301, blocks: (B:123:0x0286, B:125:0x028d, B:127:0x0296, B:129:0x02a0, B:131:0x02b1), top: B:170:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02b1 A[Catch: all -> 0x0301, TRY_LEAVE, TryCatch #0 {all -> 0x0301, blocks: (B:123:0x0286, B:125:0x028d, B:127:0x0296, B:129:0x02a0, B:131:0x02b1), top: B:170:0x0286 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:136:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:137:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:141:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:144:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:145:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:153:0x030a  */
    /* JADX WARN: Code duplicated, block: B:156:0x0323  */
    /* JADX WARN: Code duplicated, block: B:157:0x0325  */
    /* JADX WARN: Code duplicated, block: B:162:0x0334  */
    /* JADX WARN: Code duplicated, block: B:163:0x033a  */
    /* JADX WARN: Code duplicated, block: B:166:0x034f  */
    /* JADX WARN: Code duplicated, block: B:167:0x0351  */
    public com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult get(java.lang.String str, boolean z4, boolean z5) throws java.lang.Throwable {
        long j5;
        java.lang.String str2;
        int i5;
        java.lang.String str3;
        com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult;
        int i6;
        java.lang.String str4;
        int i7;
        long j6;
        int i8;
        int i9;
        int i10;
        java.lang.String strTrim;
        java.lang.String str5 = "";
        java.lang.String str6 = "";
        long j7 = 0;
        int i11 = 0;
        com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult2 = null;
        java.lang.String strReplaceDetectUrl = str;
        while (true) {
            if (i11 < 5) {
                try {
                    if (!android.text.TextUtils.isEmpty(strReplaceDetectUrl)) {
                        com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult3 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                        try {
                            c4.v.b bVar = new c4.v.b();
                            if (com.cndatacom.sdk.portal.manager.DetectManager.containsTag(strReplaceDetectUrl)) {
                                try {
                                    this.mConfigInfo.setIpType(java.lang.Boolean.valueOf(com.cndatacom.sdk.portal.manager.DetectManager.getIpType(strReplaceDetectUrl)));
                                    indexResult3.setHasIndexPage(true);
                                    if (z5 && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                        strReplaceDetectUrl = com.cndatacom.sdk.portal.manager.DetectManager.getInstance().replaceDetectUrl(com.cndatacom.sdk.portal.manager.DetectManager.getInstance().getDetectUrl(), strReplaceDetectUrl);
                                    }
                                } catch (java.lang.Exception e5) {
                                    e = e5;
                                    indexResult2 = indexResult3;
                                    j6 = j7;
                                    str2 = str6;
                                    try {
                                        e.printStackTrace();
                                        java.lang.String[] strArr = new java.lang.String[1];
                                        i7 = 0;
                                        try {
                                            strArr[0] = "CdcHttpClient get Exception:" + e.toString();
                                            com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr);
                                            if (z5) {
                                                com.cndatacom.sdk.portal.manager.DetectManager.getInstance();
                                                if (com.cndatacom.sdk.portal.manager.DetectManager.containsTag(strReplaceDetectUrl)) {
                                                    com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
                                                    if (com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                                        com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult4 = get(strReplaceDetectUrl, z4, z5);
                                                        if (indexResult2 == null) {
                                                            indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                                        }
                                                        indexResult2.setRedirectUrl(str2);
                                                        indexResult2.setFinalUrl(strReplaceDetectUrl);
                                                        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                                                        android.content.Context context = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                        if (indexResult2.isHttpOk()) {
                                                            i9 = 0;
                                                        } else {
                                                            i9 = -1;
                                                        }
                                                        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context, strReplaceDetectUrl, j6, jCurrentTimeMillis, i9);
                                                        return indexResult4;
                                                    }
                                                }
                                            }
                                            if (indexResult2 == null) {
                                                indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                            }
                                            indexResult2.setRedirectUrl(str2);
                                            indexResult2.setFinalUrl(strReplaceDetectUrl);
                                            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                                            android.content.Context context2 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                            if (indexResult2.isHttpOk()) {
                                                i8 = 0;
                                            } else {
                                                i8 = -1;
                                            }
                                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context2, strReplaceDetectUrl, j6, jCurrentTimeMillis2, i8);
                                            return indexResult2;
                                        } catch (java.lang.Throwable th) {
                                            th = th;
                                            str4 = strReplaceDetectUrl;
                                            j5 = j6;
                                            if (indexResult2 == null) {
                                                indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                            }
                                            indexResult2.setRedirectUrl(str2);
                                            indexResult2.setFinalUrl(str4);
                                            long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
                                            android.content.Context context3 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                            if (indexResult2.isHttpOk()) {
                                                i10 = i7;
                                            } else {
                                                i10 = -1;
                                            }
                                            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context3, str4, j5, jCurrentTimeMillis3, i10);
                                            throw th;
                                        }
                                    } catch (java.lang.Throwable th2) {
                                        th = th2;
                                        i7 = 0;
                                    }
                                } catch (java.lang.Throwable th3) {
                                    th = th3;
                                    indexResult2 = indexResult3;
                                    str4 = strReplaceDetectUrl;
                                    j5 = j7;
                                    str2 = str6;
                                    i7 = 0;
                                }
                            }
                            c4.y.b bVar2 = new c4.y.b();
                            java.lang.String str7 = str5;
                            bVar2.f("accept", "text/html,text/xml,application/xhtml+xml,application/x-javascript,*/*");
                            bVar2.f("Connection", "close");
                            addInnerConnHeadCheck(bVar2, "CDC-SchoolId", com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_SCHOOL_ID);
                            addInnerConnHeadCheck(bVar2, "CDC-Domain", com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_DOMAIN);
                            addInnerConnHeadCheck(bVar2, "CDC-Area", com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_AREA);
                            addInnerConnHead(bVar2, "Client-ID", this.mConfigInfo.getClientId());
                            j5 = j7;
                            try {
                                try {
                                    addInnerConnHead(bVar2, "User-Agent", this.mConfigInfo.getUserAgent(true));
                                    bVar2.o(strReplaceDetectUrl);
                                    c4.y yVarG = bVar2.g();
                                    try {
                                        c4.v.b bVarJ = bVar.h(false).c(null).j(false);
                                        str2 = str6;
                                        long j8 = this.CONN_TIMEOUT;
                                        try {
                                            try {
                                                java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
                                                bVarJ.d(j8, timeUnit).i(this.READ_TIMEOUT, timeUnit).l(this.READ_TIMEOUT, timeUnit).a((c4.s) z2.a.a());
                                                if (!com.cndatacom.sdk.portal.manager.DetectManager.containsTag(strReplaceDetectUrl)) {
                                                    bVar.g(new com.cndatacom.sdk.portal.http.CdcHttpClient.PriorityIPv4Dns(this, null));
                                                }
                                                long jCurrentTimeMillis4 = java.lang.System.currentTimeMillis();
                                                try {
                                                    java.lang.String[] strArr2 = new java.lang.String[1];
                                                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                                                    j5 = jCurrentTimeMillis4;
                                                    sb.append("CdcHttpClient get->");
                                                    sb.append(strReplaceDetectUrl);
                                                    try {
                                                        strArr2[0] = sb.toString();
                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr2);
                                                        c4.a0 a0VarA = bVar.b().y(yVarG).a();
                                                        addInnerWlanInfo(strReplaceDetectUrl);
                                                        readConnHeadAndSetInner(a0VarA, com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_SCHOOL_ID);
                                                        readConnHeadAndSetInner(a0VarA, com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_DOMAIN);
                                                        readConnHeadAndSetInner(a0VarA, com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_AREA);
                                                        indexResult3.setHttpCode(a0VarA.y());
                                                        java.lang.String[] strArr3 = new java.lang.String[1];
                                                        try {
                                                            strArr3[0] = "CdcHttpClient get httpCode->" + indexResult3.getHttpCode();
                                                            com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr3);
                                                            if (indexResult3.isRedirect()) {
                                                                strReplaceDetectUrl = a0VarA.C("Location");
                                                                java.lang.String[] strArr4 = new java.lang.String[1];
                                                                try {
                                                                    strArr4[0] = "CdcHttpClient get isRedirect:" + strReplaceDetectUrl;
                                                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr4);
                                                                    str6 = (z4 && i11 == 0) ? strReplaceDetectUrl : str2;
                                                                } catch (java.lang.Throwable th4) {
                                                                    th = th4;
                                                                    indexResult2 = indexResult3;
                                                                    str4 = strReplaceDetectUrl;
                                                                    i7 = 0;
                                                                }
                                                            } else {
                                                                if (indexResult3.isHttpOk()) {
                                                                    readConnHeadAndSetInner(a0VarA, "Server-Tag");
                                                                    java.lang.String strO = a0VarA.u().o();
                                                                    java.util.regex.Matcher matcher = this.META_REGEX.matcher(strO);
                                                                    if (matcher.find()) {
                                                                        strTrim = matcher.group(3).trim();
                                                                        java.lang.String[] strArr5 = new java.lang.String[2];
                                                                        strArr5[0] = "FIND META URL => ";
                                                                        strArr5[1] = strTrim;
                                                                        com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr5);
                                                                    } else {
                                                                        java.util.regex.Matcher matcher2 = this.SCRIPT_REGEX.matcher(strO);
                                                                        if (matcher2.find()) {
                                                                            strTrim = matcher2.group(2).trim();
                                                                            java.lang.String[] strArr6 = new java.lang.String[2];
                                                                            strArr6[0] = "FIND SCRIPT URL => ";
                                                                            strArr6[1] = strTrim;
                                                                            com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr6);
                                                                        } else {
                                                                            strTrim = str7;
                                                                        }
                                                                    }
                                                                    if (android.text.TextUtils.isEmpty(strTrim)) {
                                                                        indexResult3.setData(strO.getBytes());
                                                                    } else {
                                                                        str6 = (z4 && i11 == 0) ? strTrim : str2;
                                                                        strReplaceDetectUrl = strTrim;
                                                                    }
                                                                    indexResult2 = indexResult3;
                                                                    str4 = strReplaceDetectUrl;
                                                                    i7 = 0;
                                                                    if (indexResult2 == null) {
                                                                        indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                                                    }
                                                                    indexResult2.setRedirectUrl(str2);
                                                                    indexResult2.setFinalUrl(str4);
                                                                    long jCurrentTimeMillis5 = java.lang.System.currentTimeMillis();
                                                                    android.content.Context context4 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                    if (indexResult2.isHttpOk()) {
                                                                        i10 = i7;
                                                                    } else {
                                                                        i10 = -1;
                                                                    }
                                                                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context4, str4, j5, jCurrentTimeMillis5, i10);
                                                                    throw th;
                                                                }
                                                                if (z5) {
                                                                    com.cndatacom.sdk.portal.manager.DetectManager.getInstance();
                                                                    if (com.cndatacom.sdk.portal.manager.DetectManager.containsTag(strReplaceDetectUrl) && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                                                        com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
                                                                        if (!com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                                                        }
                                                                    }
                                                                }
                                                                indexResult2 = indexResult3;
                                                                str3 = strReplaceDetectUrl;
                                                                i5 = 0;
                                                            }
                                                            i11++;
                                                            indexResult2 = indexResult3;
                                                            str5 = str7;
                                                            j7 = j5;
                                                        } catch (java.lang.Throwable th5) {
                                                            th = th5;
                                                            str4 = strReplaceDetectUrl;
                                                            i7 = 0;
                                                            indexResult2 = indexResult3;
                                                        }
                                                    } catch (java.lang.Throwable th6) {
                                                        th = th6;
                                                        indexResult2 = indexResult3;
                                                        str4 = strReplaceDetectUrl;
                                                        i7 = 0;
                                                    }
                                                } catch (java.lang.Exception e6) {
                                                    e = e6;
                                                    j5 = jCurrentTimeMillis4;
                                                    indexResult2 = indexResult3;
                                                    j6 = j5;
                                                    e.printStackTrace();
                                                    java.lang.String[] strArr7 = new java.lang.String[1];
                                                    i7 = 0;
                                                    strArr7[0] = "CdcHttpClient get Exception:" + e.toString();
                                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr7);
                                                    if (z5) {
                                                        com.cndatacom.sdk.portal.manager.DetectManager.getInstance();
                                                        if (com.cndatacom.sdk.portal.manager.DetectManager.containsTag(strReplaceDetectUrl)) {
                                                            com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
                                                            if (com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                                                com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult5 = get(strReplaceDetectUrl, z4, z5);
                                                                if (indexResult2 == null) {
                                                                    indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                                                }
                                                                indexResult2.setRedirectUrl(str2);
                                                                indexResult2.setFinalUrl(strReplaceDetectUrl);
                                                                long jCurrentTimeMillis6 = java.lang.System.currentTimeMillis();
                                                                android.content.Context context5 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                                if (indexResult2.isHttpOk()) {
                                                                    i9 = 0;
                                                                } else {
                                                                    i9 = -1;
                                                                }
                                                                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context5, strReplaceDetectUrl, j6, jCurrentTimeMillis6, i9);
                                                                return indexResult5;
                                                            }
                                                        }
                                                    }
                                                    if (indexResult2 == null) {
                                                        indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                                    }
                                                    indexResult2.setRedirectUrl(str2);
                                                    indexResult2.setFinalUrl(strReplaceDetectUrl);
                                                    long jCurrentTimeMillis7 = java.lang.System.currentTimeMillis();
                                                    android.content.Context context6 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                    if (indexResult2.isHttpOk()) {
                                                        i8 = 0;
                                                    } else {
                                                        i8 = -1;
                                                    }
                                                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context6, strReplaceDetectUrl, j6, jCurrentTimeMillis7, i8);
                                                    return indexResult2;
                                                } catch (java.lang.Throwable th7) {
                                                    th = th7;
                                                    j5 = jCurrentTimeMillis4;
                                                    indexResult2 = indexResult3;
                                                    str4 = strReplaceDetectUrl;
                                                    i7 = 0;
                                                }
                                            } catch (java.lang.Throwable th8) {
                                                th = th8;
                                            }
                                        } catch (java.lang.Exception e7) {
                                            e = e7;
                                        }
                                    } catch (java.lang.Throwable th9) {
                                        th = th9;
                                        str2 = str6;
                                        indexResult2 = indexResult3;
                                        i7 = 0;
                                        str4 = strReplaceDetectUrl;
                                    }
                                } catch (java.lang.Exception e8) {
                                    e = e8;
                                    str2 = str6;
                                    indexResult2 = indexResult3;
                                    j6 = j5;
                                    e.printStackTrace();
                                    java.lang.String[] strArr8 = new java.lang.String[1];
                                    i7 = 0;
                                    strArr8[0] = "CdcHttpClient get Exception:" + e.toString();
                                    com.cndatacom.sdk.portal.util.ExLogUtil.i(strArr8);
                                    if (z5) {
                                        com.cndatacom.sdk.portal.manager.DetectManager.getInstance();
                                        if (com.cndatacom.sdk.portal.manager.DetectManager.containsTag(strReplaceDetectUrl) && com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                            com.cndatacom.sdk.portal.manager.DetectManager.getInstance().removeDetectUrl();
                                            if (com.cndatacom.sdk.portal.manager.DetectManager.getInstance().hasDetectUrl()) {
                                                com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult indexResult6 = get(strReplaceDetectUrl, z4, z5);
                                                if (indexResult2 == null) {
                                                    indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                                }
                                                indexResult2.setRedirectUrl(str2);
                                                indexResult2.setFinalUrl(strReplaceDetectUrl);
                                                long jCurrentTimeMillis8 = java.lang.System.currentTimeMillis();
                                                android.content.Context context7 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                                if (indexResult2.isHttpOk()) {
                                                    i9 = 0;
                                                } else {
                                                    i9 = -1;
                                                }
                                                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context7, strReplaceDetectUrl, j6, jCurrentTimeMillis8, i9);
                                                return indexResult6;
                                            }
                                        }
                                    }
                                    if (indexResult2 == null) {
                                        indexResult2 = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                                    }
                                    indexResult2.setRedirectUrl(str2);
                                    indexResult2.setFinalUrl(strReplaceDetectUrl);
                                    long jCurrentTimeMillis9 = java.lang.System.currentTimeMillis();
                                    android.content.Context context8 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                                    if (indexResult2.isHttpOk()) {
                                        i8 = 0;
                                    } else {
                                        i8 = -1;
                                    }
                                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context8, strReplaceDetectUrl, j6, jCurrentTimeMillis9, i8);
                                    return indexResult2;
                                }
                            } catch (java.lang.Throwable th10) {
                                th = th10;
                                str2 = str6;
                            }
                        } catch (java.lang.Exception e9) {
                            e = e9;
                            j5 = j7;
                        } catch (java.lang.Throwable th11) {
                            th = th11;
                            j5 = j7;
                        }
                    }
                    if (indexResult2 == null) {
                        indexResult = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
                    } else {
                        indexResult = indexResult2;
                    }
                    indexResult.setRedirectUrl(str2);
                    indexResult.setFinalUrl(str3);
                    long jCurrentTimeMillis10 = java.lang.System.currentTimeMillis();
                    android.content.Context context9 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
                    if (indexResult.isHttpOk()) {
                        i6 = i5;
                    } else {
                        i6 = -1;
                    }
                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context9, str3, j5, jCurrentTimeMillis10, i6);
                    return indexResult;
                } catch (java.lang.Exception e10) {
                    e = e10;
                    j5 = j7;
                    str2 = str6;
                } catch (java.lang.Throwable th12) {
                    th = th12;
                    j5 = j7;
                    str2 = str6;
                }
            }
            j5 = j7;
            str2 = str6;
            i5 = 0;
            str3 = strReplaceDetectUrl;
            if (indexResult2 == null) {
                indexResult = new com.cndatacom.sdk.portal.http.CdcHttpClient.IndexResult();
            } else {
                indexResult = indexResult2;
            }
            indexResult.setRedirectUrl(str2);
            indexResult.setFinalUrl(str3);
            long jCurrentTimeMillis11 = java.lang.System.currentTimeMillis();
            android.content.Context context10 = com.cndatacom.sdk.portal.util.ContextUtil.getContext();
            if (indexResult.isHttpOk()) {
                i6 = i5;
            } else {
                i6 = -1;
            }
            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendInterfaceInfoReceiver(context10, str3, j5, jCurrentTimeMillis11, i6);
            return indexResult;
        }
    }

    public com.cndatacom.sdk.portal.http.CdcHttpClient.Result getDaMod(java.lang.String str, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            bArr = new byte[0];
        }
        return doQuery(str, bArr, true);
    }

    public com.cndatacom.sdk.portal.http.CdcHttpClient.Result post(java.lang.String str, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            bArr = new byte[0];
        }
        return doQuery(str, bArr, false);
    }

    public CdcHttpClient(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, int i5, int i6) {
        this.HTTP_OK = 200;
        this.MAX_JUMP = 5;
        this.MAX_ALGO_ERROR = 3;
        this.CONN_TIMEOUT = 5000;
        this.READ_TIMEOUT = 5000;
        this.ZERO_AID = "00000000-0000-0000-0000-000000000000";
        this.ZERO_DATA = "00000000-0000-0000-0000-000000000000".getBytes();
        this.META_REGEX = java.util.regex.Pattern.compile("<meta(\\s+)http-equiv=(['\"])?refresh[^>]*url=([^\"^']+)(['\"])[^>]*>", 2);
        this.SCRIPT_REGEX = java.util.regex.Pattern.compile("<script type=[^>]+>location.href=(['\"])([^\"^']+)(['\"])[^<]*</script>", 2);
        this.META_URL_GROUP = 3;
        this.SCRIPT_URL_GROUP = 2;
        if (i5 > 0) {
            this.CONN_TIMEOUT = i5;
        }
        if (i6 > 0) {
            this.READ_TIMEOUT = i6;
        }
        this.mConfigInfo = configInfo;
    }
}
