.class public final Lz2/a;
.super Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x6dt
        0x73t
        0x65t
        0x63t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 2

    :try_start_0
    const-class v0, Lcom/msec/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    invoke-static {p0}, Lcom/msec/i;->a(I)V

    return-void
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/msec/i;->c()V

    return-void
.end method

.method public static declared-synchronized d()V
    .locals 3

    const-class v0, Lz2/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/msec/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
