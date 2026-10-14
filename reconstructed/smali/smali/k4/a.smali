.class public abstract Lk4/a;
.super Ljava/lang/Object;
.source "AbstractTarget.java"

# interfaces
.implements Lk4/q;


# instance fields
.field public a:Lr4/b;

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk4/s<",
            "+",
            "Lr4/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Lr4/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lk4/a;->b:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lk4/a;->c:I

    const-wide/16 v1, 0x3e8

    .line 4
    iput-wide v1, p0, Lk4/a;->d:J

    const v1, 0xffff

    .line 5
    iput v1, p0, Lk4/a;->e:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lk4/a;->g:I

    .line 7
    iput v0, p0, Lk4/a;->h:I

    .line 8
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/a;->i:Lr4/k;

    return-void
.end method

.method public constructor <init>(Lr4/b;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lk4/a;->b:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lk4/a;->c:I

    const-wide/16 v1, 0x3e8

    .line 12
    iput-wide v1, p0, Lk4/a;->d:J

    const v1, 0xffff

    .line 13
    iput v1, p0, Lk4/a;->e:I

    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lk4/a;->g:I

    .line 15
    iput v0, p0, Lk4/a;->h:I

    .line 16
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/a;->i:Lr4/k;

    .line 17
    iput-object p1, p0, Lk4/a;->a:Lr4/b;

    return-void
.end method

.method public constructor <init>(Lr4/b;Lr4/k;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lk4/a;-><init>(Lr4/b;)V

    .line 19
    iput-object p2, p0, Lk4/a;->i:Lr4/k;

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 0

    iput p1, p0, Lk4/a;->b:I

    return-void
.end method

.method public R(J)V
    .locals 0

    iput-wide p1, p0, Lk4/a;->d:J

    return-void
.end method

.method public final Z()Lr4/k;
    .locals 1

    iget-object v0, p0, Lk4/a;->i:Lr4/k;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk4/a;->e:I

    return v0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, Lk4/a;->b:I

    return v0
.end method

.method public c0()Lr4/b;
    .locals 1

    iget-object v0, p0, Lk4/a;->a:Lr4/b;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x1e4

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lk4/a;->e:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The minimum PDU length is: 484"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lk4/a;

    .line 3
    iget v2, p0, Lk4/a;->b:I

    iget v3, p1, Lk4/a;->b:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lk4/a;->c:I

    iget v3, p1, Lk4/a;->c:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Lk4/a;->d:J

    iget-wide v4, p1, Lk4/a;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lk4/a;->e:I

    iget v3, p1, Lk4/a;->e:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lk4/a;->g:I

    iget v3, p1, Lk4/a;->g:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lk4/a;->h:I

    iget v3, p1, Lk4/a;->h:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget-object v2, p0, Lk4/a;->a:Lr4/b;

    iget-object v3, p1, Lk4/a;->a:Lr4/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 10
    :cond_8
    iget-object v2, p0, Lk4/a;->f:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lk4/a;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lk4/a;->f:Ljava/util/List;

    if-eqz v2, :cond_a

    :goto_0
    return v1

    .line 11
    :cond_a
    iget-object v2, p0, Lk4/a;->i:Lr4/k;

    iget-object p1, p1, Lk4/a;->i:Lr4/k;

    invoke-virtual {v2, p1}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_1
    return v1
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk4/s<",
            "+",
            "Lr4/b;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lk4/a;->f:Ljava/util/List;

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lk4/a;->g:I

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/a;->a:Lr4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lk4/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lk4/a;->i:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk4/s<",
            "+",
            "Lr4/b;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lk4/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lk4/a;->h:I

    return-void
.end method

.method public l(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lk4/a;->c:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of retries < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lk4/a;->d:J

    return-wide v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lk4/a;->g:I

    return v0
.end method

.method public r0()I
    .locals 1

    iget v0, p0, Lk4/a;->h:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lk4/a;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk4/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lr4/k;)V
    .locals 0

    iput-object p1, p0, Lk4/a;->i:Lr4/k;

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk4/a;->c0()Lr4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk4/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",retries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",securityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",securityModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",securityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/a;->i:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",preferredTransports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/a;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Lr4/b;)V
    .locals 0

    iput-object p1, p0, Lk4/a;->a:Lr4/b;

    return-void
.end method
