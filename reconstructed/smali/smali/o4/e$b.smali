.class public Lo4/e$b;
.super Ljava/lang/Object;
.source "MPv3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo4/i;",
            "Lo4/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo4/f;",
            "Ljava/lang/ref/WeakReference<",
            "Lo4/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lo4/e$b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lo4/e$b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lo4/n;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/n<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding cache entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lo4/e$b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lo4/n;->u()Lo4/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo4/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p1}, Lo4/n;->u()Lo4/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo4/n;->X(Lo4/i;)V

    .line 5
    invoke-virtual {v0, p1}, Lo4/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v2

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Doubled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lo4/n;->X(Lo4/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, -0x57c

    .line 9
    monitor-exit p0

    return p1

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lo4/n;->e(Lo4/n;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v2

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding previous message IDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo4/n;->j()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to new entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 13
    :cond_3
    invoke-virtual {v0}, Lo4/n;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo4/n;->b(Ljava/util/List;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v2

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New entry does not match existing, although request ID is the same "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {v0, v1}, Lo4/n;->X(Lo4/i;)V

    .line 17
    :cond_6
    invoke-virtual {p1}, Lo4/n;->u()Lo4/i;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v1}, Lo4/n;->X(Lo4/i;)V

    .line 19
    iget-object v1, p0, Lo4/e$b;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lo4/e$b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lo4/n;->q()Lo4/f;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Lo4/n;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {p1}, Lo4/n;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo4/f;

    .line 24
    iget-object v2, p0, Lo4/e$b;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 25
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lo4/i;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo4/e$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/n;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lo4/e$b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lo4/n;->q()Lo4/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lo4/n;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lo4/n;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo4/f;

    .line 5
    iget-object v2, p0, Lo4/e$b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed cache entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 8
    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lo4/f;)Lo4/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/f;",
            ")",
            "Lo4/n<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo4/e$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo4/i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lo4/e$b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo4/n;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lo4/n;->M(Lo4/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lo4/e$b;->b(Lo4/i;)Z

    .line 6
    iget-object p1, p0, Lo4/e$b;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v0}, Lo4/n;->X(Lo4/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    .line 9
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
