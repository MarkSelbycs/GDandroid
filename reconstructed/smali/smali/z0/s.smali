.class public final Lz0/s;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Lz0/r;


# instance fields
.field public final a:Landroidx/room/i0;

.field public final b:Landroidx/room/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/i<",
            "Lz0/q;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/o0;

.field public final d:Landroidx/room/o0;


# direct methods
.method public constructor <init>(Landroidx/room/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz0/s;->a:Landroidx/room/i0;

    .line 3
    new-instance v0, Lz0/s$a;

    invoke-direct {v0, p0, p1}, Lz0/s$a;-><init>(Lz0/s;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/s;->b:Landroidx/room/i;

    .line 4
    new-instance v0, Lz0/s$b;

    invoke-direct {v0, p0, p1}, Lz0/s$b;-><init>(Lz0/s;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/s;->c:Landroidx/room/o0;

    .line 5
    new-instance v0, Lz0/s$c;

    invoke-direct {v0, p0, p1}, Lz0/s$c;-><init>(Lz0/s;Landroidx/room/i0;)V

    iput-object v0, p0, Lz0/s;->d:Landroidx/room/o0;

    return-void
.end method

.method public static d()Ljava/util/List;
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
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/s;->c:Landroidx/room/o0;

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
    iget-object p1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->e()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lf0/k;->Q()I

    .line 7
    iget-object p1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    .line 9
    iget-object p1, p0, Lz0/s;->c:Landroidx/room/o0;

    invoke-virtual {p1, v0}, Landroidx/room/o0;->h(Lf0/k;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 11
    iget-object v1, p0, Lz0/s;->c:Landroidx/room/o0;

    invoke-virtual {v1, v0}, Landroidx/room/o0;->h(Lf0/k;)V

    .line 12
    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/s;->d:Landroidx/room/o0;

    invoke-virtual {v0}, Landroidx/room/o0;->b()Lf0/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v1}, Landroidx/room/i0;->e()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lf0/k;->Q()I

    .line 5
    iget-object v1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 7
    iget-object v1, p0, Lz0/s;->d:Landroidx/room/o0;

    invoke-virtual {v1, v0}, Landroidx/room/o0;->h(Lf0/k;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v2}, Landroidx/room/i0;->i()V

    .line 9
    iget-object v2, p0, Lz0/s;->d:Landroidx/room/o0;

    invoke-virtual {v2, v0}, Landroidx/room/o0;->h(Lf0/k;)V

    .line 10
    throw v1
.end method

.method public c(Lz0/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->d()V

    .line 2
    iget-object v0, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lz0/s;->b:Landroidx/room/i;

    invoke-virtual {v0, p1}, Landroidx/room/i;->j(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {p1}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lz0/s;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 6
    throw p1
.end method
