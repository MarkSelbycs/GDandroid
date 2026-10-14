.class public Lc3/d$d;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc3/d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lc3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc3/d<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc3/d$d;->a:Lc3/d;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lc3/d$d;->c:I

    .line 4
    invoke-virtual {p0}, Lc3/d$d;->d()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lc3/d$d;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lc3/d$d;->c:I

    return v0
.end method

.method public final c()Lc3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc3/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc3/d$d;->a:Lc3/d;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lc3/d$d;->b:I

    iget-object v1, p0, Lc3/d$d;->a:Lc3/d;

    invoke-static {v1}, Lc3/d;->e(Lc3/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lc3/d$d;->a:Lc3/d;

    invoke-static {v0}, Lc3/d;->f(Lc3/d;)[I

    move-result-object v0

    iget v1, p0, Lc3/d$d;->b:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lc3/d$d;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lc3/d$d;->b:I

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lc3/d$d;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lc3/d$d;->b:I

    iget-object v1, p0, Lc3/d$d;->a:Lc3/d;

    invoke-static {v1}, Lc3/d;->e(Lc3/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget v0, p0, Lc3/d$d;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc3/d$d;->a:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->D()V

    .line 3
    iget-object v0, p0, Lc3/d$d;->a:Lc3/d;

    iget v2, p0, Lc3/d$d;->c:I

    invoke-static {v0, v2}, Lc3/d;->q(Lc3/d;I)V

    .line 4
    iput v1, p0, Lc3/d$d;->c:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
