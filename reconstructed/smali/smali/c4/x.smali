.class public final Lc4/x;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lc4/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/x$a;
    }
.end annotation


# instance fields
.field public final a:Lh4/l;

.field public b:Z

.field private final client:Lc4/v;

.field public originalRequest:Lc4/y;


# direct methods
.method public constructor <init>(Lc4/v;Lc4/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/x;->client:Lc4/v;

    .line 3
    iput-object p2, p0, Lc4/x;->originalRequest:Lc4/y;

    .line 4
    new-instance p2, Lh4/l;

    invoke-direct {p2, p1}, Lh4/l;-><init>(Lc4/v;)V

    iput-object p2, p0, Lc4/x;->a:Lh4/l;

    return-void
.end method

.method public static synthetic b(Lc4/x;)Lc4/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc4/x;->f()Lc4/a0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lc4/x;)Lh4/l;
    .locals 0

    iget-object p0, p0, Lc4/x;->a:Lh4/l;

    return-object p0
.end method

.method public static synthetic d(Lc4/x;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc4/x;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lc4/x;)Lc4/v;
    .locals 0

    iget-object p0, p0, Lc4/x;->client:Lc4/v;

    return-object p0
.end method


# virtual methods
.method public a()Lc4/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lc4/x;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc4/x;->b:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->k()Lc4/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc4/n;->a(Lc4/x;)V

    .line 6
    invoke-virtual {p0}, Lc4/x;->f()Lc4/a0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v1}, Lc4/v;->k()Lc4/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc4/n;->d(Lc4/x;)V

    return-object v0

    .line 8
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v1}, Lc4/v;->k()Lc4/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc4/n;->d(Lc4/x;)V

    throw v0

    .line 10
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final f()Lc4/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lc4/x;->a:Lh4/l;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lh4/a;

    iget-object v2, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->j()Lc4/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lh4/a;-><init>(Lc4/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Le4/a;

    iget-object v2, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->w()Le4/d;

    move-result-object v2

    invoke-direct {v0, v2}, Le4/a;-><init>(Le4/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lf4/a;

    iget-object v2, p0, Lc4/x;->client:Lc4/v;

    invoke-direct {v0, v2}, Lf4/a;-><init>(Lc4/v;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lc4/x;->a:Lh4/l;

    invoke-virtual {v0}, Lh4/l;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lc4/x;->client:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    new-instance v0, Lh4/b;

    iget-object v2, p0, Lc4/x;->a:Lh4/l;

    .line 10
    invoke-virtual {v2}, Lh4/l;->e()Z

    move-result v2

    invoke-direct {v0, v2}, Lh4/b;-><init>(Z)V

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v7, Lh4/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lc4/x;->originalRequest:Lc4/y;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lh4/i;-><init>(Ljava/util/List;Lf4/g;Lh4/h;Lc4/i;ILc4/y;)V

    .line 13
    iget-object v0, p0, Lc4/x;->originalRequest:Lc4/y;

    invoke-interface {v7, v0}, Lc4/s$a;->a(Lc4/y;)Lc4/a0;

    move-result-object v0

    return-object v0
.end method

.method public g()Lc4/r;
    .locals 2

    iget-object v0, p0, Lc4/x;->originalRequest:Lc4/y;

    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v0

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lc4/r;->D(Ljava/lang/String;)Lc4/r;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/x;->a:Lh4/l;

    invoke-virtual {v0}, Lh4/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    goto :goto_0

    :cond_0
    const-string v0, "call"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc4/x;->g()Lc4/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
