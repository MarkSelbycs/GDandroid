.class public final Lh0/a$a;
.super Ljava/lang/Object;
.source "ProcessLock.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Lh0/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lh0/a$a;Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    invoke-virtual {p0, p1}, Lh0/a$a;->b(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;
    .locals 3

    .line 1
    invoke-static {}, Lh0/a;->a()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lh0/a;->a()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    check-cast v2, Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
