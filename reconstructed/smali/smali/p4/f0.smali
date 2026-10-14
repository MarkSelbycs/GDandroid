.class public Lp4/f0;
.super Ljava/lang/Object;
.source "UsmTimeEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lr4/k;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lr4/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/f0;->a:Lr4/k;

    .line 3
    iput p2, p0, Lp4/f0;->b:I

    .line 4
    invoke-virtual {p0, p3}, Lp4/f0;->j(I)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lp4/f0;->b:I

    return v0
.end method

.method public c()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/f0;->a:Lr4/k;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lp4/f0;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lp4/f0;->c:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lp4/f0;->b:I

    return-void
.end method

.method public j(I)V
    .locals 4

    .line 1
    iput p1, p0, Lp4/f0;->d:I

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lp4/f0;->c:I

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lp4/f0;->d:I

    return-void
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lp4/f0;->c:I

    return-void
.end method
