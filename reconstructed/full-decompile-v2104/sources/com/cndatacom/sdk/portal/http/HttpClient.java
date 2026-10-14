package com.cndatacom.sdk.portal.http;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class HttpClient {
    private static com.cndatacom.sdk.portal.proxy.HttpClientProxy mHttpClientProxy;
    private final int CONN_TIMEOUT = 1;
    private final int READ_TIMEOUT = 1;

    public class Result {
        private byte[] data;
        private int httpCode = 0;

        public Result() {
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
            } catch (java.io.UnsupportedEncodingException e5) {
                e5.printStackTrace();
                return "";
            }
        }

        public int getHttpCode() {
            return this.httpCode;
        }

        public boolean isRedirect() {
            int i5 = this.httpCode;
            return i5 >= 300 && i5 < 400;
        }

        public boolean isSuccessful() {
            int i5 = this.httpCode;
            return i5 >= 200 && i5 < 300;
        }

        public void setData(byte[] bArr) {
            this.data = bArr;
        }

        public void setHttpCode(int i5) {
            this.httpCode = i5;
        }
    }

    private static java.lang.String buildUrlByParams(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap) {
        c4.r.b bVarR = c4.r.t(str).r();
        if (arrayMap != null && !arrayMap.isEmpty()) {
            for (java.lang.String str2 : arrayMap.keySet()) {
                try {
                    bVarR.a(str2, java.net.URLEncoder.encode(arrayMap.get(str2) + "", "utf-8"));
                } catch (java.io.UnsupportedEncodingException e5) {
                    e5.printStackTrace();
                }
            }
        }
        return bVarR.b().toString();
    }

    private com.cndatacom.sdk.portal.http.HttpClient.Result doQuery(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap, byte[] bArr) {
        com.cndatacom.sdk.portal.http.HttpClient.Result resultDoQuery;
        if (mHttpClientProxy != null && (resultDoQuery = mHttpClientProxy.doQuery(new com.cndatacom.sdk.portal.http.HttpClient.Result(), str, arrayMap, bArr)) != null) {
            return resultDoQuery;
        }
        com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient.Result();
        c4.a0 a0VarA = null;
        boolean z4 = bArr == null;
        try {
            try {
                c4.v.b bVar = new c4.v.b();
                bVar.j(false);
                java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.SECONDS;
                bVar.d(1L, timeUnit);
                bVar.i(1L, timeUnit);
                bVar.l(1L, timeUnit);
                c4.y.b bVarO = new c4.y.b().o(str);
                bVarO.f("Connection", "close");
                bVarO.f("Charset", "UTF-8");
                bVarO.f("accept", "*/*");
                if (arrayMap != null && arrayMap.size() > 0) {
                    for (java.lang.String str2 : arrayMap.keySet()) {
                        bVarO.f(str2, arrayMap.get(str2));
                    }
                }
                if (z4) {
                    bVarO.h();
                } else {
                    bVarO.l(c4.z.d((arrayMap == null || !arrayMap.containsKey("Content-Type")) ? c4.t.b("application/json") : c4.t.b(arrayMap.get("Content-Type")), bArr));
                }
                com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient doQuery->" + str);
                a0VarA = bVar.a((c4.s) z2.a.a()).b().y(bVarO.g()).a();
                result.httpCode = a0VarA.y();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient doQuery httpCode->" + result.httpCode);
                result.data = a0VarA.u().e();
                if (!result.isSuccessful()) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient httpcode = " + result.httpCode + " error msg = " + result.getDataString());
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient Exception->" + e5.toString());
                if (a0VarA != null) {
                }
                return result;
            }
            a0VarA.close();
            return result;
        } catch (java.lang.Throwable th) {
            if (a0VarA != null) {
                a0VarA.close();
            }
            throw th;
        }
    }

    public static void setHttpClientProxy(com.cndatacom.sdk.portal.proxy.HttpClientProxy httpClientProxy) {
        mHttpClientProxy = httpClientProxy;
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result get(java.lang.String str) {
        return get(str, null, null);
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result post(java.lang.String str) {
        return post(str, null, null, null);
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result uploadFile(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap2, java.io.File file) {
        com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient.Result();
        try {
            java.lang.String strBuildUrlByParams = buildUrlByParams(str, arrayMap2);
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient doQuery->" + strBuildUrlByParams);
            c4.u uVarC = new c4.u.a().d(c4.u.f3231j).a("file", file.getName(), c4.z.c((arrayMap == null || !arrayMap.containsKey("Content-Type")) ? c4.t.b("application/zip") : c4.t.b(arrayMap.get("Content-Type")), file)).c();
            c4.y.b bVarO = new c4.y.b().o(strBuildUrlByParams);
            if (arrayMap != null && arrayMap.size() > 0) {
                for (java.lang.String str2 : arrayMap.keySet()) {
                    bVarO.f(str2, arrayMap.get(str2));
                }
            }
            c4.a0 a0VarA = new c4.v.b().a((c4.s) z2.a.a()).b().y(bVarO.l(uVarC).g()).a();
            result.httpCode = a0VarA.y();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient uploadFile httpCode->" + a0VarA.y());
            result.data = a0VarA.u().e();
            if (!result.isSuccessful()) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("HttpClient uploadFile httpcode = " + result.httpCode + " error msg = " + result.getDataString());
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return result;
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result get(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap) {
        return get(str, null, arrayMap);
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result post(java.lang.String str, byte[] bArr) {
        return post(str, null, null, bArr);
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result get(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap2) {
        return doQuery(buildUrlByParams(str, arrayMap2), arrayMap, null);
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result post(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap, byte[] bArr) {
        return post(str, arrayMap, null, bArr);
    }

    public com.cndatacom.sdk.portal.http.HttpClient.Result post(java.lang.String str, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap, android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap2, byte[] bArr) {
        java.lang.String strBuildUrlByParams = buildUrlByParams(str, arrayMap2);
        if (bArr == null) {
            bArr = new byte[0];
        }
        return doQuery(strBuildUrlByParams, arrayMap, bArr);
    }
}
