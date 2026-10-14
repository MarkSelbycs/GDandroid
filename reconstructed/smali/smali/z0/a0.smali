.class public final Lz0/a0;
.super Ljava/lang/Object;
.source "WorkTagDao_Impl.java"

# interfaces
.implements Lz0/z;


# instance fields
.field public final a:Landroidx/room/i0;

.field public final b:Landroidx/room/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/i<",
            "Lz0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/o0;


# direct methods
.method public constructor <init>(Landroidx/room/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    .line 3
    new-instance v0, Lz0/a0$a;

    invoke-direct {v0, p0, p1}, Lz0/a0$a;-><init>(Lz0/a0;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/a0;->b:Landroidx/room/i;

    .line 4
    new-instance v0, Lz0/a0$b;

    invoke-direct {v0, p0, p1}, Lz0/a0$b;-><init>(Lz0/a0;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/a0;->c:Landroidx/room/o0;

    return-void
.end method

.method public static f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/a0;->c:Landroidx/room/o0;

    invoke-virtual {v0}, Landroidx/room/o0;->b()Lf0/k;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lf0/i;->d0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lf0/i;->E(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->e()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lf0/k;->Q()I

    .line 7
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    .line 9
    iget-object p1, p0, Lz0/a0;->c:Landroidx/room/o0;

    invoke-virtual {p1, v0}, Landroidx/room/o0;->h(Lf0/k;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 11
    iget-object v1, p0, Lz0/a0;->c:Landroidx/room/o0;

    invoke-virtual {v1, v0}, Landroidx/room/o0;->h(Lf0/k;)V

    .line 12
    throw p1
.end method

.method public c(Lz0/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lz0/a0;->b:Landroidx/room/i;

    invoke-virtual {v0, p1}, Landroidx/room/i;->j(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 6
    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz0/z$a;->a(Lz0/z;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/l0;->f(Ljava/lang/String;I)Landroidx/room/l0;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/l0;->d0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/l0;->E(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->d()V

    .line 5
    iget-object p1, p0, Lz0/a0;->a:Landroidx/room/i0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Le0/b;->b(Landroidx/room/i0;Lf0/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_2

    .line 9
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    .line 15
    throw v1
.end method
