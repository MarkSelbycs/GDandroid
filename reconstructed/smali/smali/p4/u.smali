.class public Lp4/u;
.super Ljava/lang/Object;
.source "Salt.java"


# static fields
.field public static b:Lp4/u;

.field public static final c:Ln4/a;


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lp4/u;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/u;->c:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    :try_start_0
    const-string v1, "SHA1PRNG"

    .line 2
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v1, Lp4/u;->c:Ln4/a;

    const-string v2, "Could not use SecureRandom. Using Random instead."

    invoke-interface {v1, v2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 5
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    :goto_0
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    int-to-long v2, v2

    .line 7
    iput-wide v2, p0, Lp4/u;->a:J

    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 8
    iget-wide v2, p0, Lp4/u;->a:J

    const-wide/16 v4, 0x100

    mul-long/2addr v2, v4

    aget-byte v4, v0, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    iput-wide v2, p0, Lp4/u;->a:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_0
    sget-object v0, Lp4/u;->c:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized Salt to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lp4/u;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method

.method public static a()Lp4/u;
    .locals 2

    .line 1
    sget-object v0, Lp4/u;->b:Lp4/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lp4/u;

    invoke-direct {v0}, Lp4/u;-><init>()V

    sput-object v0, Lp4/u;->b:Lp4/u;

    .line 3
    :cond_0
    sget-object v0, Lp4/u;->b:Lp4/u;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lp4/u;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lp4/u;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
