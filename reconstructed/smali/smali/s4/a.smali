.class public abstract Ls4/a;
.super Ljava/lang/Object;
.source "AbstractTransportMapping.java"

# interfaces
.implements Lk4/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lr4/b;",
        ">",
        "Ljava/lang/Object;",
        "Lk4/s<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls4/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ls4/a;->a:Ljava/util/List;

    const v0, 0xffff

    .line 3
    iput v0, p0, Ls4/a;->b:I

    .line 4
    iput-boolean v1, p0, Ls4/a;->c:Z

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Ls4/a;->b:I

    return v0
.end method

.method public declared-synchronized e(Ls4/c;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls4/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ls4/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iput-object v0, p0, Ls4/a;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Lr4/b;Ljava/nio/ByteBuffer;Lk4/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls4/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/c;

    .line 3
    invoke-interface {v1, p0, p1, p2, p3}, Ls4/c;->a(Lk4/s;Lr4/b;Ljava/nio/ByteBuffer;Lk4/t;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Ls4/a;->c:Z

    return v0
.end method
