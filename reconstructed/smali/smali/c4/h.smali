.class public final Lc4/h;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field public static final A:Lc4/h;

.field public static final A0:Lc4/h;

.field public static final B:Lc4/h;

.field public static final B0:Lc4/h;

.field public static final C:Lc4/h;

.field public static final C0:Lc4/h;

.field public static final D:Lc4/h;

.field public static final D0:Lc4/h;

.field public static final E:Lc4/h;

.field public static final E0:Lc4/h;

.field public static final F:Lc4/h;

.field public static final F0:Lc4/h;

.field public static final G:Lc4/h;

.field public static final G0:Lc4/h;

.field public static final H:Lc4/h;

.field public static final H0:Lc4/h;

.field public static final I:Lc4/h;

.field public static final I0:Lc4/h;

.field public static final J:Lc4/h;

.field public static final J0:Lc4/h;

.field public static final K:Lc4/h;

.field public static final K0:Lc4/h;

.field public static final L:Lc4/h;

.field public static final L0:Lc4/h;

.field public static final M:Lc4/h;

.field public static final M0:Lc4/h;

.field public static final N:Lc4/h;

.field public static final N0:Lc4/h;

.field public static final O:Lc4/h;

.field public static final O0:Lc4/h;

.field public static final P:Lc4/h;

.field public static final P0:Lc4/h;

.field public static final Q:Lc4/h;

.field public static final Q0:Lc4/h;

.field public static final R:Lc4/h;

.field public static final R0:Lc4/h;

.field public static final S:Lc4/h;

.field public static final S0:Lc4/h;

.field public static final T:Lc4/h;

.field public static final T0:Lc4/h;

.field public static final U:Lc4/h;

.field public static final V:Lc4/h;

.field public static final W:Lc4/h;

.field public static final X:Lc4/h;

.field public static final Y:Lc4/h;

.field public static final Z:Lc4/h;

.field public static final a0:Lc4/h;

.field public static final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lc4/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:Lc4/h;

.field public static final c:Lc4/h;

.field public static final c0:Lc4/h;

.field public static final d:Lc4/h;

.field public static final d0:Lc4/h;

.field public static final e:Lc4/h;

.field public static final e0:Lc4/h;

.field public static final f:Lc4/h;

.field public static final f0:Lc4/h;

.field public static final g:Lc4/h;

.field public static final g0:Lc4/h;

.field public static final h:Lc4/h;

.field public static final h0:Lc4/h;

.field public static final i:Lc4/h;

.field public static final i0:Lc4/h;

.field public static final j:Lc4/h;

.field public static final j0:Lc4/h;

.field public static final k:Lc4/h;

.field public static final k0:Lc4/h;

.field public static final l:Lc4/h;

.field public static final l0:Lc4/h;

.field public static final m:Lc4/h;

.field public static final m0:Lc4/h;

.field public static final n:Lc4/h;

.field public static final n0:Lc4/h;

.field public static final o:Lc4/h;

.field public static final o0:Lc4/h;

.field public static final p:Lc4/h;

.field public static final p0:Lc4/h;

.field public static final q:Lc4/h;

.field public static final q0:Lc4/h;

.field public static final r:Lc4/h;

.field public static final r0:Lc4/h;

.field public static final s:Lc4/h;

.field public static final s0:Lc4/h;

.field public static final t:Lc4/h;

.field public static final t0:Lc4/h;

.field public static final u:Lc4/h;

.field public static final u0:Lc4/h;

.field public static final v:Lc4/h;

.field public static final v0:Lc4/h;

.field public static final w:Lc4/h;

.field public static final w0:Lc4/h;

.field public static final x:Lc4/h;

.field public static final x0:Lc4/h;

.field public static final y:Lc4/h;

.field public static final y0:Lc4/h;

.field public static final z:Lc4/h;

.field public static final z0:Lc4/h;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc4/h;->b:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    const/16 v2, 0x147e

    const/4 v3, 0x6

    const/16 v4, 0xa

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->c:Lc4/h;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->d:Lc4/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    const/16 v5, 0x10fa

    .line 4
    invoke-static {v0, v1, v5, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->e:Lc4/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->f:Lc4/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->g:Lc4/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    .line 7
    invoke-static {v0, v1, v5, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->h:Lc4/h;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v6, 0x9

    const/16 v7, 0x155d

    .line 8
    invoke-static {v0, v6, v7, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->i:Lc4/h;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 9
    invoke-static {v0, v4, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->j:Lc4/h;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v6, 0x11

    .line 10
    invoke-static {v0, v6, v5, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->k:Lc4/h;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v6, 0x12

    .line 11
    invoke-static {v0, v6, v7, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->l:Lc4/h;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v6, 0x13

    .line 12
    invoke-static {v0, v6, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->m:Lc4/h;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v6, 0x14

    .line 13
    invoke-static {v0, v6, v5, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->n:Lc4/h;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v6, 0x15

    .line 14
    invoke-static {v0, v6, v7, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->o:Lc4/h;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v8, 0x16

    .line 15
    invoke-static {v0, v8, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->p:Lc4/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v8, 0x17

    .line 16
    invoke-static {v0, v8, v5, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->q:Lc4/h;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v8, 0x18

    .line 17
    invoke-static {v0, v8, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->r:Lc4/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v8, 0x19

    .line 18
    invoke-static {v0, v8, v5, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->s:Lc4/h;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v5, 0x1a

    .line 19
    invoke-static {v0, v5, v7, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->t:Lc4/h;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v5, 0x1b

    .line 20
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->u:Lc4/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v5, 0x1e

    const/16 v7, 0xa98

    const v8, 0x7fffffff

    .line 21
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->v:Lc4/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v5, 0x1f

    .line 22
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->w:Lc4/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v5, 0x20

    .line 23
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->x:Lc4/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v5, 0x22

    .line 24
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->y:Lc4/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v5, 0x23

    .line 25
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->z:Lc4/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v5, 0x24

    .line 26
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->A:Lc4/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v5, 0x26

    .line 27
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->B:Lc4/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v5, 0x28

    .line 28
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->C:Lc4/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v5, 0x29

    .line 29
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->D:Lc4/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v5, 0x2b

    .line 30
    invoke-static {v0, v5, v7, v3, v8}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->E:Lc4/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x2f

    .line 31
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->F:Lc4/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x32

    .line 32
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->G:Lc4/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x33

    .line 33
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->H:Lc4/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v5, 0x34

    .line 34
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->I:Lc4/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x35

    .line 35
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->J:Lc4/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x38

    .line 36
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->K:Lc4/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x39

    .line 37
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->L:Lc4/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v5, 0x3a

    .line 38
    invoke-static {v0, v5, v2, v3, v4}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->M:Lc4/h;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v4, 0x3b

    const/4 v5, 0x7

    .line 39
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->N:Lc4/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3c

    .line 40
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->O:Lc4/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x3d

    .line 41
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->P:Lc4/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x40

    .line 42
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->Q:Lc4/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x67

    .line 43
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->R:Lc4/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6a

    .line 44
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->S:Lc4/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6b

    .line 45
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->T:Lc4/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x6c

    .line 46
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->U:Lc4/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6d

    .line 47
    invoke-static {v0, v4, v2, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->V:Lc4/h;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9c

    const/16 v4, 0x14a8

    .line 48
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->W:Lc4/h;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9d

    .line 49
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->X:Lc4/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9e

    .line 50
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->Y:Lc4/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9f

    .line 51
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->Z:Lc4/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa2

    .line 52
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->a0:Lc4/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa3

    .line 53
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->b0:Lc4/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa6

    .line 54
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->c0:Lc4/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa7

    .line 55
    invoke-static {v0, v2, v4, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->d0:Lc4/h;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v2, 0xff

    const/16 v4, 0x1672

    const/16 v7, 0xe

    .line 56
    invoke-static {v0, v2, v4, v3, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->e0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v2, 0xc001

    const/16 v3, 0x118c

    .line 57
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->f0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v2, 0xc002

    .line 58
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->g0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc003

    .line 59
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->h0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc004

    .line 60
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->i0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc005

    .line 61
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->j0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v2, 0xc006

    .line 62
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->k0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v2, 0xc007

    .line 63
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->l0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc008

    .line 64
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->m0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc009

    .line 65
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->n0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc00a

    .line 66
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->o0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v2, 0xc00b

    .line 67
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->p0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v2, 0xc00c

    .line 68
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->q0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc00d

    .line 69
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->r0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc00e

    .line 70
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->s0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc00f

    .line 71
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->t0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v2, 0xc010

    .line 72
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->u0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v2, 0xc011

    .line 73
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->v0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc012

    .line 74
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->w0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc013

    .line 75
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->x0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc014

    .line 76
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->y0:Lc4/h;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v2, 0xc015

    .line 77
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->z0:Lc4/h;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v2, 0xc016

    .line 78
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->A0:Lc4/h;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc017

    .line 79
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->B0:Lc4/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v2, 0xc018

    .line 80
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->C0:Lc4/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v2, 0xc019

    .line 81
    invoke-static {v0, v2, v3, v5, v7}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->D0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc023

    const/16 v3, 0x14a9

    .line 82
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->E0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc024

    .line 83
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->F0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc025

    .line 84
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->G0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc026

    .line 85
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->H0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc027

    .line 86
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->I0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc028

    .line 87
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->J0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v2, 0xc029

    .line 88
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->K0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v2, 0xc02a

    .line 89
    invoke-static {v0, v2, v3, v5, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->L0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02b

    .line 90
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->M0:Lc4/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02c

    .line 91
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->N0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02d

    .line 92
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->O0:Lc4/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02e

    .line 93
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->P0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02f

    .line 94
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->Q0:Lc4/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc030

    .line 95
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->R0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc031

    .line 96
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->S0:Lc4/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc032

    .line 97
    invoke-static {v0, v2, v3, v1, v6}, Lc4/h;->b(Ljava/lang/String;IIII)Lc4/h;

    move-result-object v0

    sput-object v0, Lc4/h;->T0:Lc4/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc4/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc4/h;
    .locals 2

    .line 1
    sget-object v0, Lc4/h;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc4/h;

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lc4/h;

    invoke-direct {v1, p0}, Lc4/h;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc4/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;IIII)Lc4/h;
    .locals 0

    invoke-static {p0}, Lc4/h;->a(Ljava/lang/String;)Lc4/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc4/h;->a:Ljava/lang/String;

    return-object v0
.end method
