package c4;

/* JADX INFO: compiled from: CipherSuite.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.ConcurrentMap<java.lang.String, c4.h> f3098b = new java.util.concurrent.ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c4.h f3100c = b("SSL_RSA_WITH_NULL_MD5", 1, 5246, 6, 10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c4.h f3102d = b("SSL_RSA_WITH_NULL_SHA", 2, 5246, 6, 10);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c4.h f3104e = b("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3, 4346, 6, 10);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c4.h f3106f = b("SSL_RSA_WITH_RC4_128_MD5", 4, 5246, 6, 10);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c4.h f3108g = b("SSL_RSA_WITH_RC4_128_SHA", 5, 5246, 6, 10);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c4.h f3110h = b("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8, 4346, 6, 10);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c4.h f3112i = b("SSL_RSA_WITH_DES_CBC_SHA", 9, 5469, 6, 10);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c4.h f3114j = b("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10, 5246, 6, 10);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final c4.h f3116k = b("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17, 4346, 6, 10);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final c4.h f3118l = b("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18, 5469, 6, 10);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final c4.h f3120m = b("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19, 5246, 6, 10);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final c4.h f3122n = b("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20, 4346, 6, 10);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final c4.h f3124o = b("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21, 5469, 6, 10);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final c4.h f3126p = b("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22, 5246, 6, 10);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final c4.h f3128q = b("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23, 4346, 6, 10);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final c4.h f3130r = b("SSL_DH_anon_WITH_RC4_128_MD5", 24, 5246, 6, 10);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final c4.h f3132s = b("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25, 4346, 6, 10);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final c4.h f3134t = b("SSL_DH_anon_WITH_DES_CBC_SHA", 26, 5469, 6, 10);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final c4.h f3136u = b("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27, 5246, 6, 10);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final c4.h f3138v = b("TLS_KRB5_WITH_DES_CBC_SHA", 30, 2712, 6, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final c4.h f3140w = b("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31, 2712, 6, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final c4.h f3142x = b("TLS_KRB5_WITH_RC4_128_SHA", 32, 2712, 6, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final c4.h f3144y = b("TLS_KRB5_WITH_DES_CBC_MD5", 34, 2712, 6, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final c4.h f3146z = b("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35, 2712, 6, Integer.MAX_VALUE);
    public static final c4.h A = b("TLS_KRB5_WITH_RC4_128_MD5", 36, 2712, 6, Integer.MAX_VALUE);
    public static final c4.h B = b("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38, 2712, 6, Integer.MAX_VALUE);
    public static final c4.h C = b("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40, 2712, 6, Integer.MAX_VALUE);
    public static final c4.h D = b("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41, 2712, 6, Integer.MAX_VALUE);
    public static final c4.h E = b("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43, 2712, 6, Integer.MAX_VALUE);
    public static final c4.h F = b("TLS_RSA_WITH_AES_128_CBC_SHA", 47, 5246, 6, 10);
    public static final c4.h G = b("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50, 5246, 6, 10);
    public static final c4.h H = b("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51, 5246, 6, 10);
    public static final c4.h I = b("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52, 5246, 6, 10);
    public static final c4.h J = b("TLS_RSA_WITH_AES_256_CBC_SHA", 53, 5246, 6, 10);
    public static final c4.h K = b("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56, 5246, 6, 10);
    public static final c4.h L = b("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57, 5246, 6, 10);
    public static final c4.h M = b("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58, 5246, 6, 10);
    public static final c4.h N = b("TLS_RSA_WITH_NULL_SHA256", 59, 5246, 7, 21);
    public static final c4.h O = b("TLS_RSA_WITH_AES_128_CBC_SHA256", 60, 5246, 7, 21);
    public static final c4.h P = b("TLS_RSA_WITH_AES_256_CBC_SHA256", 61, 5246, 7, 21);
    public static final c4.h Q = b("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64, 5246, 7, 21);
    public static final c4.h R = b("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103, 5246, 7, 21);
    public static final c4.h S = b("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106, 5246, 7, 21);
    public static final c4.h T = b("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107, 5246, 7, 21);
    public static final c4.h U = b("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108, 5246, 7, 21);
    public static final c4.h V = b("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109, 5246, 7, 21);
    public static final c4.h W = b("TLS_RSA_WITH_AES_128_GCM_SHA256", 156, 5288, 8, 21);
    public static final c4.h X = b("TLS_RSA_WITH_AES_256_GCM_SHA384", 157, 5288, 8, 21);
    public static final c4.h Y = b("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", com.alibaba.fastjson.asm.Opcodes.IFLE, 5288, 8, 21);
    public static final c4.h Z = b("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ, 5288, 8, 21);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final c4.h f3097a0 = b("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", com.alibaba.fastjson.asm.Opcodes.IF_ICMPGE, 5288, 8, 21);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final c4.h f3099b0 = b("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", com.alibaba.fastjson.asm.Opcodes.IF_ICMPGT, 5288, 8, 21);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final c4.h f3101c0 = b("TLS_DH_anon_WITH_AES_128_GCM_SHA256", com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE, 5288, 8, 21);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final c4.h f3103d0 = b("TLS_DH_anon_WITH_AES_256_GCM_SHA384", com.alibaba.fastjson.asm.Opcodes.GOTO, 5288, 8, 21);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final c4.h f3105e0 = b("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255, 5746, 6, 14);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final c4.h f3107f0 = b("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153, 4492, 7, 14);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final c4.h f3109g0 = b("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154, 4492, 7, 14);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final c4.h f3111h0 = b("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155, 4492, 7, 14);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final c4.h f3113i0 = b("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156, 4492, 7, 14);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final c4.h f3115j0 = b("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157, 4492, 7, 14);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final c4.h f3117k0 = b("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158, 4492, 7, 14);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final c4.h f3119l0 = b("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159, 4492, 7, 14);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final c4.h f3121m0 = b("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160, 4492, 7, 14);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final c4.h f3123n0 = b("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161, 4492, 7, 14);

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final c4.h f3125o0 = b("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162, 4492, 7, 14);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final c4.h f3127p0 = b("TLS_ECDH_RSA_WITH_NULL_SHA", 49163, 4492, 7, 14);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final c4.h f3129q0 = b("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164, 4492, 7, 14);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final c4.h f3131r0 = b("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165, 4492, 7, 14);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final c4.h f3133s0 = b("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166, 4492, 7, 14);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final c4.h f3135t0 = b("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167, 4492, 7, 14);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final c4.h f3137u0 = b("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168, 4492, 7, 14);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final c4.h f3139v0 = b("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169, 4492, 7, 14);

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final c4.h f3141w0 = b("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170, 4492, 7, 14);

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final c4.h f3143x0 = b("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171, 4492, 7, 14);

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final c4.h f3145y0 = b("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172, 4492, 7, 14);

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final c4.h f3147z0 = b("TLS_ECDH_anon_WITH_NULL_SHA", 49173, 4492, 7, 14);
    public static final c4.h A0 = b("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174, 4492, 7, 14);
    public static final c4.h B0 = b("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175, 4492, 7, 14);
    public static final c4.h C0 = b("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176, 4492, 7, 14);
    public static final c4.h D0 = b("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177, 4492, 7, 14);
    public static final c4.h E0 = b("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187, 5289, 7, 21);
    public static final c4.h F0 = b("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188, 5289, 7, 21);
    public static final c4.h G0 = b("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189, 5289, 7, 21);
    public static final c4.h H0 = b("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190, 5289, 7, 21);
    public static final c4.h I0 = b("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191, 5289, 7, 21);
    public static final c4.h J0 = b("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192, 5289, 7, 21);
    public static final c4.h K0 = b("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193, 5289, 7, 21);
    public static final c4.h L0 = b("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194, 5289, 7, 21);
    public static final c4.h M0 = b("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195, 5289, 8, 21);
    public static final c4.h N0 = b("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196, 5289, 8, 21);
    public static final c4.h O0 = b("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197, 5289, 8, 21);
    public static final c4.h P0 = b("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198, 5289, 8, 21);
    public static final c4.h Q0 = b("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199, 5289, 8, 21);
    public static final c4.h R0 = b("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200, 5289, 8, 21);
    public static final c4.h S0 = b("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201, 5289, 8, 21);
    public static final c4.h T0 = b("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202, 5289, 8, 21);

    public h(java.lang.String str) {
        java.util.Objects.requireNonNull(str);
        this.f3148a = str;
    }

    public static c4.h a(java.lang.String str) {
        java.util.concurrent.ConcurrentMap<java.lang.String, c4.h> concurrentMap = f3098b;
        c4.h hVar = concurrentMap.get(str);
        if (hVar != null) {
            return hVar;
        }
        c4.h hVar2 = new c4.h(str);
        c4.h hVarPutIfAbsent = concurrentMap.putIfAbsent(str, hVar2);
        return hVarPutIfAbsent == null ? hVar2 : hVarPutIfAbsent;
    }

    public static c4.h b(java.lang.String str, int i5, int i6, int i7, int i8) {
        return a(str);
    }

    public java.lang.String toString() {
        return this.f3148a;
    }
}
