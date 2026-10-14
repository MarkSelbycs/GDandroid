.class public Lo4/i;
.super Ljava/lang/Object;
.source "PduHandle.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lo4/i;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 4
    iput v0, p0, Lo4/i;->a:I

    .line 5
    invoke-virtual {p0, p1}, Lo4/i;->e(I)V

    return-void
.end method


# virtual methods
.method public b(Lo4/i;)V
    .locals 0

    iget p1, p1, Lo4/i;->a:I

    invoke-virtual {p0, p1}, Lo4/i;->e(I)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lo4/i;->a:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lo4/i;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lo4/i;

    if-eqz v0, :cond_0

    iget v0, p0, Lo4/i;->a:I

    check-cast p1, Lo4/i;

    iget p1, p1, Lo4/i;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lo4/i;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PduHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo4/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
