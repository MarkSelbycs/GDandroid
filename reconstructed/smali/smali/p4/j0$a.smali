.class public Lp4/j0$a;
.super Ljava/lang/Object;
.source "UsmUserTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lr4/k;

.field public b:Lr4/k;


# direct methods
.method public constructor <init>(Lp4/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lp4/i0;->e()Lr4/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp4/j0$a;->a(Lr4/k;)V

    .line 3
    invoke-virtual {p1}, Lp4/i0;->j()Lp4/h0;

    move-result-object p1

    invoke-virtual {p1}, Lp4/h0;->Z()Lr4/k;

    move-result-object p1

    iput-object p1, p0, Lp4/j0$a;->b:Lr4/k;

    return-void
.end method

.method public constructor <init>(Lr4/k;Lr4/k;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lp4/j0$a;->a(Lr4/k;)V

    .line 6
    iput-object p2, p0, Lp4/j0$a;->b:Lr4/k;

    return-void
.end method


# virtual methods
.method public final a(Lr4/k;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lr4/k;

    invoke-direct {p1}, Lr4/k;-><init>()V

    iput-object p1, p0, Lp4/j0$a;->a:Lr4/k;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lp4/j0$a;->a:Lr4/k;

    :goto_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lp4/i0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lp4/j0$a;

    check-cast p1, Lp4/i0;

    invoke-direct {v0, p1}, Lp4/j0$a;-><init>(Lp4/i0;)V

    invoke-virtual {p0, v0}, Lp4/j0$a;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    check-cast p1, Lp4/j0$a;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lp4/j0$a;->a:Lr4/k;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lp4/j0$a;->a:Lr4/k;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lr4/k;->u(Lr4/u;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p1, Lp4/j0$a;->a:Lr4/k;

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lp4/j0$a;->b:Lr4/k;

    iget-object p1, p1, Lp4/j0$a;->b:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->u(Lr4/u;)I

    move-result v0

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp4/i0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lp4/j0$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lp4/j0$a;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lp4/j0$a;->a:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->hashCode()I

    move-result v0

    iget-object v1, p0, Lp4/j0$a;->b:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    return v0
.end method
