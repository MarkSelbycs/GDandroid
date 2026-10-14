.class public final Lz0/c;
.super Ljava/lang/Object;
.source "DependencyDao_Impl.java"

# interfaces
.implements Lz0/b;


# instance fields
.field public final a:Landroidx/room/i0;

.field public final b:Landroidx/room/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/i<",
            "Lz0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    .line 3
    new-instance v0, Lz0/c$a;

    invoke-direct {v0, p0, p1}, Lz0/c$a;-><init>(Lz0/c;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/c;->b:Landroidx/room/i;

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 1
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
.method public a(Lz0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lz0/c;->b:Landroidx/room/i;

    invoke-virtual {v0, p1}, Landroidx/room/i;->j(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 6
    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

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
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->d()V

    .line 5
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Le0/b;->b(Landroidx/room/i0;Lf0/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    move v3, v1

    .line 8
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    return v3

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    .line 12
    throw v1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

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
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->d()V

    .line 5
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

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

.method public d(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

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
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->d()V

    .line 5
    iget-object p1, p0, Lz0/c;->a:Landroidx/room/i0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Le0/b;->b(Landroidx/room/i0;Lf0/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    move v3, v1

    .line 8
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    return v3

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    .line 12
    throw v1
.end method
