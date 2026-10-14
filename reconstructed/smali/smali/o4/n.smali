.class public Lo4/n;
.super Ljava/lang/Object;
.source "StateReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lr4/b;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Lr4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public transient b:Lk4/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk4/s<",
            "-TA;>;"
        }
    .end annotation
.end field

.field public c:[B

.field public d:[B

.field public e:Lp4/w;

.field public f:[B

.field public g:I

.field public h:Lp4/a0;

.field public i:Lo4/f;

.field public o:I

.field public p:I

.field public q:Lo4/i;

.field public r:[B

.field public s:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/f;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field public v:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo4/n;->s:I

    return-void
.end method

.method public constructor <init>(IIILo4/i;Lr4/b;Lk4/s;[BLp4/w;[BI[B[BLp4/a0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lo4/i;",
            "TA;",
            "Lk4/s<",
            "-TA;>;[B",
            "Lp4/w;",
            "[BI[B[B",
            "Lp4/a0;",
            "I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lo4/n;->s:I

    .line 6
    invoke-static {p1}, Lo4/n;->c(I)Lo4/f;

    move-result-object p1

    iput-object p1, p0, Lo4/n;->i:Lo4/f;

    .line 7
    iput p2, p0, Lo4/n;->p:I

    .line 8
    iput p3, p0, Lo4/n;->o:I

    .line 9
    iput-object p4, p0, Lo4/n;->q:Lo4/i;

    .line 10
    iput-object p5, p0, Lo4/n;->a:Lr4/b;

    .line 11
    iput-object p6, p0, Lo4/n;->b:Lk4/s;

    .line 12
    iput-object p7, p0, Lo4/n;->r:[B

    .line 13
    iput-object p8, p0, Lo4/n;->e:Lp4/w;

    .line 14
    iput-object p9, p0, Lo4/n;->f:[B

    .line 15
    iput p10, p0, Lo4/n;->g:I

    .line 16
    iput-object p11, p0, Lo4/n;->c:[B

    .line 17
    iput-object p12, p0, Lo4/n;->d:[B

    .line 18
    iput-object p13, p0, Lo4/n;->h:Lp4/a0;

    .line 19
    iput p14, p0, Lo4/n;->s:I

    return-void
.end method

.method public constructor <init>(Lo4/i;Lr4/b;Lk4/s;Lp4/w;[BI)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/i;",
            "TA;",
            "Lk4/s<",
            "-TA;>;",
            "Lp4/w;",
            "[BI)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0xffff

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v14, p6

    .line 3
    invoke-direct/range {v0 .. v14}, Lo4/n;-><init>(IIILo4/i;Lr4/b;Lk4/s;[BLp4/w;[BI[B[BLp4/a0;I)V

    return-void
.end method

.method public static c(I)Lo4/f;
    .locals 2

    .line 1
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object v0

    sget-object v1, Lk4/m$b;->c:Lk4/m$b;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lo4/p;

    invoke-direct {v0, p0}, Lo4/p;-><init>(I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lo4/l;

    invoke-direct {v0, p0}, Lo4/l;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public D()[B
    .locals 1

    iget-object v0, p0, Lo4/n;->f:[B

    return-object v0
.end method

.method public F()Lp4/a0;
    .locals 1

    iget-object v0, p0, Lo4/n;->h:Lp4/a0;

    return-object v0
.end method

.method public H()Lk4/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk4/s<",
            "-TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lo4/n;->b:Lk4/s;

    return-object v0
.end method

.method public I(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo4/n;->i:Lo4/f;

    invoke-interface {v0}, Lo4/f;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    iput p1, p0, Lo4/n;->u:I

    .line 3
    iget-object v0, p0, Lo4/n;->i:Lo4/f;

    instance-of v0, v0, Lo4/p;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lo4/n;->i:Lo4/f;

    check-cast v2, Lo4/p;

    invoke-virtual {v2}, Lo4/p;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo4/n;->v:J

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lo4/n;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo4/f;

    .line 7
    invoke-interface {v1}, Lo4/f;->a()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 8
    iput p1, p0, Lo4/n;->u:I

    .line 9
    iget-object v0, p0, Lo4/n;->i:Lo4/f;

    instance-of v0, v0, Lo4/p;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lo4/n;->i:Lo4/f;

    check-cast v2, Lo4/p;

    invoke-virtual {v2}, Lo4/p;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo4/n;->v:J

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lo4/n;->q:Lo4/i;

    invoke-virtual {p0, v0}, Lo4/n;->i0(Lo4/i;)V

    .line 12
    iget v0, p0, Lo4/n;->u:I

    if-ne v0, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public M(Lo4/f;)Z
    .locals 0

    invoke-interface {p1}, Lo4/f;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4/n;->I(I)Z

    move-result p1

    return p1
.end method

.method public P([B)V
    .locals 0

    iput-object p1, p0, Lo4/n;->c:[B

    return-void
.end method

.method public T([B)V
    .locals 0

    iput-object p1, p0, Lo4/n;->d:[B

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lo4/n;->o:I

    return-void
.end method

.method public V(I)V
    .locals 0

    iput p1, p0, Lo4/n;->p:I

    return-void
.end method

.method public W(I)V
    .locals 0

    invoke-static {p1}, Lo4/n;->c(I)Lo4/f;

    move-result-object p1

    iput-object p1, p0, Lo4/n;->i:Lo4/f;

    return-void
.end method

.method public X(Lo4/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/n;->q:Lo4/i;

    .line 2
    invoke-virtual {p0, p1}, Lo4/n;->i0(Lo4/i;)V

    return-void
.end method

.method public a0([B)V
    .locals 0

    iput-object p1, p0, Lo4/n;->r:[B

    return-void
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo4/f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo4/n;->t:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo4/n;->t:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lo4/n;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c0()Lr4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lo4/n;->a:Lr4/b;

    return-object v0
.end method

.method public d0(I)V
    .locals 0

    iput p1, p0, Lo4/n;->g:I

    return-void
.end method

.method public e(Lo4/n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/n<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo4/n;->q:Lo4/i;

    if-nez v0, :cond_0

    iget-object v1, p1, Lo4/n;->q:Lo4/i;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lo4/n;->u()Lo4/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo4/n;->r:[B

    iget-object v1, p1, Lo4/n;->r:[B

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo4/n;->e:Lp4/w;

    iget-object v1, p1, Lo4/n;->e:Lp4/w;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo4/n;->f:[B

    iget-object v1, p1, Lo4/n;->f:[B

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lo4/n;->g:I

    iget v1, p1, Lo4/n;->g:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo4/n;->c:[B

    iget-object v1, p1, Lo4/n;->c:[B

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo4/n;->d:[B

    iget-object p1, p1, Lo4/n;->d:[B

    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e0(Lp4/w;)V
    .locals 0

    iput-object p1, p0, Lo4/n;->e:Lp4/w;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lo4/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lo4/n;

    .line 3
    iget-object v0, p1, Lo4/n;->i:Lo4/f;

    invoke-virtual {p0, v0}, Lo4/n;->M(Lo4/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lo4/n;->t:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lo4/n;->i:Lo4/f;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lo4/n;->e(Lo4/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lo4/n;->c:[B

    return-object v0
.end method

.method public f0([B)V
    .locals 0

    iput-object p1, p0, Lo4/n;->f:[B

    return-void
.end method

.method public g0(Lp4/a0;)V
    .locals 0

    iput-object p1, p0, Lo4/n;->h:Lp4/a0;

    return-void
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lo4/n;->d:[B

    return-object v0
.end method

.method public h0(Lk4/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/s<",
            "-TA;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo4/n;->b:Lk4/s;

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lo4/n;->i:Lo4/f;

    invoke-interface {v0}, Lo4/f;->a()I

    move-result v0

    return v0
.end method

.method public i0(Lo4/i;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lo4/k;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lo4/k;

    .line 3
    iget-object v0, p0, Lo4/n;->t:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lo4/k;->c(I)V

    .line 4
    iget-wide v3, p0, Lo4/n;->v:J

    invoke-interface {p1, v3, v4}, Lo4/k;->b(J)V

    .line 5
    iget-object v0, p0, Lo4/n;->i:Lo4/f;

    invoke-interface {v0}, Lo4/f;->a()I

    move-result v0

    iget v3, p0, Lo4/n;->u:I

    if-ne v0, v3, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lo4/k;->a(I)V

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lo4/n;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo4/f;

    invoke-interface {v1}, Lo4/f;->a()I

    move-result v1

    iget v3, p0, Lo4/n;->u:I

    if-ne v1, v3, :cond_2

    .line 10
    invoke-interface {p1, v2}, Lo4/k;->a(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo4/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    iget-object v2, p0, Lo4/n;->t:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lo4/n;->i:Lo4/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lo4/n;->t:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lo4/n;->g:I

    return v0
.end method

.method public q()Lo4/f;
    .locals 1

    iget-object v0, p0, Lo4/n;->i:Lo4/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateReference[msgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->i:Lo4/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pduHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->q:Lo4/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",securityEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->r:[B

    .line 2
    invoke-static {v1}, Lr4/k;->P([B)Lr4/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",securityModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->e:Lp4/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",securityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->f:[B

    .line 3
    invoke-static {v1}, Lr4/k;->P([B)Lr4/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",securityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo4/n;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",contextEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->c:[B

    .line 4
    invoke-static {v1}, Lr4/k;->P([B)Lr4/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",contextName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->d:[B

    .line 5
    invoke-static {v1}, Lr4/k;->P([B)Lr4/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",retryMsgIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/n;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lo4/i;
    .locals 1

    iget-object v0, p0, Lo4/n;->q:Lo4/i;

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lo4/n;->r:[B

    return-object v0
.end method

.method public y()Lp4/w;
    .locals 1

    iget-object v0, p0, Lo4/n;->e:Lp4/w;

    return-object v0
.end method

.method public z(Lr4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    iput-object p1, p0, Lo4/n;->a:Lr4/b;

    return-void
.end method
