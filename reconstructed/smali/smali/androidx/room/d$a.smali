.class public final Landroidx/room/d$a;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Lf0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Landroidx/room/c;


# direct methods
.method public constructor <init>(Landroidx/room/c;)V
    .locals 1

    const-string v0, "autoCloser"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 2

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    sget-object v1, Landroidx/room/d$a$e;->b:Landroidx/room/d$a$e;

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    new-instance v1, Landroidx/room/d$a$b;

    invoke-direct {v1, p1}, Landroidx/room/d$a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    return-void
.end method

.method public F(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->j()Lf0/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lf0/g;->F(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance p2, Landroidx/room/d$c;

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-direct {p2, p1, v0}, Landroidx/room/d$c;-><init>(Landroid/database/Cursor;Landroidx/room/c;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {p2}, Landroidx/room/c;->e()V

    .line 4
    throw p1
.end method

.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->h()Lf0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf0/g;->J()V

    sget-object v0, La3/o;->a:La3/o;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTransactionSuccessful called but delegateDb is null"

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    new-instance v1, Landroidx/room/d$a$c;

    invoke-direct {v1, p1, p2}, Landroidx/room/d$a$c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    return-void
.end method

.method public S(Ljava/lang/String;)Lf0/k;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/d$b;

    iget-object v1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-direct {v0, p1, v1}, Landroidx/room/d$b;-><init>(Ljava/lang/String;Landroidx/room/c;)V

    return-object v0
.end method

.method public T()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->j()Lf0/g;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lf0/g;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v1}, Landroidx/room/c;->e()V

    .line 4
    throw v0
.end method

.method public U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8

    const-string v0, "table"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    new-instance v7, Landroidx/room/d$a$h;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/room/d$a$h;-><init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    sget-object v1, Landroidx/room/d$a$g;->b:Landroidx/room/d$a$g;

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->d()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->h()Lf0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->h()Lf0/g;

    move-result-object v0

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lf0/g;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->e()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v1}, Landroidx/room/c;->e()V

    throw v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End transaction called but delegateDb is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->j()Lf0/g;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lf0/g;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v1}, Landroidx/room/c;->e()V

    .line 4
    throw v0
.end method

.method public o0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->j()Lf0/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lf0/g;->o0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Landroidx/room/d$c;

    iget-object v1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-direct {v0, p1, v1}, Landroidx/room/d$c;-><init>(Landroid/database/Cursor;Landroidx/room/c;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->e()V

    .line 4
    throw p1
.end method

.method public q0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    sget-object v1, Landroidx/room/d$a$f;->b:Landroidx/room/d$a$f;

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->h()Lf0/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    sget-object v1, Landroidx/room/d$a$d;->o:Landroidx/room/d$a$d;

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public t(Lf0/j;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->j()Lf0/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lf0/g;->t(Lf0/j;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Landroidx/room/d$c;

    iget-object v1, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-direct {v0, p1, v1}, Landroidx/room/d$c;-><init>(Landroid/database/Cursor;Landroidx/room/c;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->e()V

    .line 4
    throw p1
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->h()Lf0/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lf0/g;->v()Z

    move-result v0

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/d$a;->a:Landroidx/room/c;

    sget-object v1, Landroidx/room/d$a$a;->b:Landroidx/room/d$a$a;

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
