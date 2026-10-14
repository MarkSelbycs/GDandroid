.class public final Lv2/f;
.super Ly2/c;
.source "JsonTreeWriter.java"


# static fields
.field public static final t:Ljava/io/Writer;

.field public static final u:Ls2/o;


# instance fields
.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls2/i;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/String;

.field public s:Ls2/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv2/f$a;

    invoke-direct {v0}, Lv2/f$a;-><init>()V

    sput-object v0, Lv2/f;->t:Ljava/io/Writer;

    .line 2
    new-instance v0, Ls2/o;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ls2/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv2/f;->u:Ls2/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lv2/f;->t:Ljava/io/Writer;

    invoke-direct {p0, v0}, Ly2/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv2/f;->q:Ljava/util/List;

    .line 3
    sget-object v0, Ls2/k;->a:Ls2/k;

    iput-object v0, p0, Lv2/f;->s:Ls2/i;

    return-void
.end method


# virtual methods
.method public R(J)Ly2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ls2/o;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    return-object p0
.end method

.method public V(Ljava/lang/Number;)Ly2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lv2/f;->u()Ly2/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ly2/c;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Ls2/o;

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    return-object p0
.end method

.method public X(Ljava/lang/String;)Ly2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lv2/f;->u()Ly2/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ls2/o;

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    return-object p0
.end method

.method public Y(Z)Ly2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ls2/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    return-object p0
.end method

.method public b0()Ls2/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv2/f;->s:Ls2/i;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv2/f;->q:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c0()Ls2/i;
    .locals 2

    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/i;

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    sget-object v1, Lv2/f;->u:Ls2/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ly2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    .line 3
    iget-object v1, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public h()Ly2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ls2/l;

    invoke-direct {v0}, Ls2/l;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    .line 3
    iget-object v1, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final h0(Ls2/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/f;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ls2/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly2/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lv2/f;->c0()Ls2/i;

    move-result-object v0

    check-cast v0, Ls2/l;

    .line 4
    iget-object v1, p0, Lv2/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lv2/f;->r:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-object p1, p0, Lv2/f;->s:Ls2/i;

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lv2/f;->c0()Ls2/i;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ls2/g;

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Ls2/g;

    invoke-virtual {v0, p1}, Ls2/g;->k(Ls2/i;)V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public j()Ly2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv2/f;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv2/f;->c0()Ls2/i;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ls2/g;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public l()Ly2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv2/f;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv2/f;->c0()Ls2/i;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ls2/l;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public r(Ljava/lang/String;)Ly2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv2/f;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv2/f;->c0()Ls2/i;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ls2/l;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lv2/f;->r:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public u()Ly2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ls2/k;->a:Ls2/k;

    invoke-virtual {p0, v0}, Lv2/f;->h0(Ls2/i;)V

    return-object p0
.end method
