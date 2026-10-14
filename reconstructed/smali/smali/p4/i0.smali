.class public Lp4/i0;
.super Ljava/lang/Object;
.source "UsmUserEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Lr4/k;

.field public b:Lr4/k;

.field public c:Lp4/h0;

.field public d:[B

.field public e:[B

.field public f:Lo4/m$a;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lo4/m$a;->d:Lo4/m$a;

    iput-object v0, p0, Lp4/i0;->f:Lo4/m$a;

    .line 3
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lp4/i0;->a:Lr4/k;

    .line 4
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lp4/i0;->b:Lr4/k;

    .line 5
    new-instance v0, Lp4/h0;

    new-instance v2, Lr4/k;

    invoke-direct {v2}, Lr4/k;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lp4/h0;-><init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;)V

    iput-object v0, p0, Lp4/i0;->c:Lp4/h0;

    return-void
.end method

.method public constructor <init>([BLr4/k;Lr4/j;[BLr4/j;[B)V
    .locals 9

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lo4/m$a;->d:Lo4/m$a;

    iput-object v0, p0, Lp4/i0;->f:Lo4/m$a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lr4/k;

    invoke-direct {v1, p1}, Lr4/k;-><init>([B)V

    :goto_0
    iput-object v1, p0, Lp4/i0;->a:Lr4/k;

    .line 9
    iput-object p2, p0, Lp4/i0;->b:Lr4/k;

    .line 10
    iput-object p4, p0, Lp4/i0;->d:[B

    .line 11
    iput-object p6, p0, Lp4/i0;->e:[B

    .line 12
    new-instance p1, Lp4/h0;

    if-eqz p4, :cond_1

    new-instance p4, Lr4/k;

    iget-object p6, p0, Lp4/i0;->d:[B

    invoke-direct {p4, p6}, Lr4/k;-><init>([B)V

    move-object v5, p4

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    iget-object p4, p0, Lp4/i0;->e:[B

    if-eqz p4, :cond_2

    new-instance v0, Lr4/k;

    iget-object p4, p0, Lp4/i0;->e:[B

    invoke-direct {v0, p4}, Lr4/k;-><init>([B)V

    :cond_2
    move-object v7, v0

    iget-object v8, p0, Lp4/i0;->a:Lr4/k;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v2 .. v8}, Lp4/h0;-><init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;Lr4/k;)V

    iput-object p1, p0, Lp4/i0;->c:Lp4/h0;

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, Lp4/i0;->d:[B

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lp4/i0;

    .line 2
    iget-object v0, p0, Lp4/i0;->a:Lr4/k;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lp4/i0;->a:Lr4/k;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lr4/k;->u(Lr4/u;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p1, Lp4/i0;->a:Lr4/k;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p1, Lp4/i0;->a:Lr4/k;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lp4/i0;->b:Lr4/k;

    iget-object v1, p1, Lp4/i0;->b:Lr4/k;

    invoke-virtual {v0, v1}, Lr4/k;->u(Lr4/u;)I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lp4/i0;->c:Lp4/h0;

    iget-object p1, p1, Lp4/i0;->c:Lp4/h0;

    invoke-virtual {v0, p1}, Lp4/h0;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :cond_3
    return v0
.end method

.method public e()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/i0;->a:Lr4/k;

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lp4/i0;->e:[B

    return-object v0
.end method

.method public h()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/i0;->b:Lr4/k;

    return-object v0
.end method

.method public j()Lp4/h0;
    .locals 1

    iget-object v0, p0, Lp4/i0;->c:Lp4/h0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsmUserEntry[userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/i0;->b:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",usmUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/i0;->c:Lp4/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",storageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/i0;->f:Lo4/m$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/k;)V
    .locals 0

    iput-object p1, p0, Lp4/i0;->b:Lr4/k;

    return-void
.end method

.method public x(Lp4/h0;)V
    .locals 0

    iput-object p1, p0, Lp4/i0;->c:Lp4/h0;

    return-void
.end method
