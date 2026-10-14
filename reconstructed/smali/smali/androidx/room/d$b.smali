.class public final Landroidx/room/d$b;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Lf0/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/room/c;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/room/c;)V
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/d$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/room/d$b;->b:Landroidx/room/c;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic c(Landroidx/room/d$b;Lf0/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/d$b;->f(Lf0/k;)V

    return-void
.end method

.method public static final synthetic e(Landroidx/room/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/d$b;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public E(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/room/d$b;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public G(IJ)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/room/d$b;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public Q()I
    .locals 1

    sget-object v0, Landroidx/room/d$b$c;->b:Landroidx/room/d$b$c;

    invoke-virtual {p0, v0}, Landroidx/room/d$b;->h(Ll3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a0(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/room/d$b;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public d0(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/room/d$b;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public final f(Lf0/k;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lb3/o;->k()V

    .line 3
    :cond_0
    iget-object v3, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {p1, v2}, Lf0/i;->d0(I)V

    goto :goto_1

    .line 5
    :cond_1
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 6
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lf0/i;->G(IJ)V

    goto :goto_1

    .line 7
    :cond_2
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 8
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lf0/i;->g0(ID)V

    goto :goto_1

    .line 9
    :cond_3
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 10
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lf0/i;->E(ILjava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    instance-of v3, v1, [B

    if-eqz v3, :cond_5

    .line 12
    check-cast v1, [B

    invoke-interface {p1, v2, v1}, Lf0/i;->a0(I[B)V

    :cond_5
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    return-void
.end method

.method public g0(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/room/d$b;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public final h(Ll3/l;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/l<",
            "-",
            "Lf0/k;",
            "+TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/d$b;->b:Landroidx/room/c;

    new-instance v1, Landroidx/room/d$b$b;

    invoke-direct {v1, p0, p1}, Landroidx/room/d$b$b;-><init>(Landroidx/room/d$b;Ll3/l;)V

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(ILjava/lang/Object;)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/room/d$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n0()J
    .locals 2

    sget-object v0, Landroidx/room/d$b$a;->b:Landroidx/room/d$b$a;

    invoke-virtual {p0, v0}, Landroidx/room/d$b;->h(Ll3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
