.class public final Lb1/a$h;
.super Lb1/a$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb1/a$b;-><init>(Lb1/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lb1/a;Lb1/a$e;Lb1/a$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "*>;",
            "Lb1/a$e;",
            "Lb1/a$e;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lb1/a;->b:Lb1/a$e;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lb1/a;->b:Lb1/a$e;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b(Lb1/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lb1/a;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lb1/a;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(Lb1/a;Lb1/a$i;Lb1/a$i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "*>;",
            "Lb1/a$i;",
            "Lb1/a$i;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lb1/a;->c:Lb1/a$i;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lb1/a;->c:Lb1/a$i;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public d(Lb1/a$i;Lb1/a$i;)V
    .locals 0

    iput-object p2, p1, Lb1/a$i;->b:Lb1/a$i;

    return-void
.end method

.method public e(Lb1/a$i;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lb1/a$i;->a:Ljava/lang/Thread;

    return-void
.end method
