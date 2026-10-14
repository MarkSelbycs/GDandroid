.class public final Lz0/f;
.super Ljava/lang/Object;
.source "PreferenceDao_Impl.java"

# interfaces
.implements Lz0/e;


# instance fields
.field public final a:Landroidx/room/i0;

.field public final b:Landroidx/room/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/i<",
            "Lz0/d;",
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
    iput-object p1, p0, Lz0/f;->a:Landroidx/room/i0;

    .line 3
    new-instance v0, Lz0/f$a;

    invoke-direct {v0, p0, p1}, Lz0/f$a;-><init>(Lz0/f;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/f;->b:Landroidx/room/i;

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 2
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
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

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
    iget-object p1, p0, Lz0/f;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->d()V

    .line 5
    iget-object p1, p0, Lz0/f;->a:Landroidx/room/i0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Le0/b;->b(Landroidx/room/i0;Lf0/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Landroidx/room/l0;->j()V

    .line 13
    throw v1
.end method

.method public b(Lz0/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/f;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/f;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lz0/f;->b:Landroidx/room/i;

    invoke-virtual {v0, p1}, Landroidx/room/i;->j(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lz0/f;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lz0/f;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lz0/f;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 6
    throw p1
.end method
