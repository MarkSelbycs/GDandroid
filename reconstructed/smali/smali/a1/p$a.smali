.class public La1/p$a;
.super Ljava/lang/Object;
.source "SerialExecutorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:La1/p;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(La1/p;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La1/p$a;->a:La1/p;

    .line 3
    iput-object p2, p0, La1/p$a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, La1/p$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    iget-object v0, p0, La1/p$a;->a:La1/p;

    iget-object v0, v0, La1/p;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_1
    iget-object v1, p0, La1/p$a;->a:La1/p;

    invoke-virtual {v1}, La1/p;->a()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 5
    iget-object v1, p0, La1/p$a;->a:La1/p;

    iget-object v1, v1, La1/p;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_2
    iget-object v2, p0, La1/p$a;->a:La1/p;

    invoke-virtual {v2}, La1/p;->a()V

    .line 7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    throw v0

    :catchall_2
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
