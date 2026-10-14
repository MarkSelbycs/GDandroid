.class public Ly1/b;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ly1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ly1/b;",
        ">;",
        "Ly1/a<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 3
    iput p1, p0, Ly1/b;->a:I

    return-void
.end method


# virtual methods
.method public b(Ly1/b;)I
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    iget p1, p1, Ly1/b;->a:I

    invoke-static {v0, p1}, Le2/o;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ly1/b;

    invoke-virtual {p0, p1}, Ly1/b;->b(Ly1/b;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Ly1/b;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ly1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ly1/b;->a:I

    check-cast p1, Ly1/b;

    invoke-virtual {p1}, Ly1/b;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ly1/b;
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly1/b;->a:I

    return-object p0
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly1/b;->e()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Ly1/b;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ly1/b;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
