.class public final Lz0/u$c;
.super Ljava/lang/Object;
.source "WorkSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/y$c;

.field public final c:Landroidx/work/b;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Lq0/d;

.field public final h:I

.field public i:Lq0/a;

.field public j:J

.field public k:J

.field public l:I

.field public final m:I

.field public final n:J

.field public final o:I

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/y$c;Landroidx/work/b;JJJLq0/d;ILq0/a;JJIIJILjava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq0/y$c;",
            "Landroidx/work/b;",
            "JJJ",
            "Lq0/d;",
            "I",
            "Lq0/a;",
            "JJIIJI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/b;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v6, p22

    move-object/from16 v7, p23

    const-string v8, "id"

    invoke-static {p1, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "state"

    invoke-static {p2, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "output"

    invoke-static {p3, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "constraints"

    invoke-static {v4, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "backoffPolicy"

    invoke-static {v5, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "tags"

    invoke-static {v6, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "progress"

    invoke-static {v7, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lz0/u$c;->a:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lz0/u$c;->b:Lq0/y$c;

    .line 4
    iput-object v3, v0, Lz0/u$c;->c:Landroidx/work/b;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lz0/u$c;->d:J

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lz0/u$c;->e:J

    move-wide/from16 v1, p8

    .line 7
    iput-wide v1, v0, Lz0/u$c;->f:J

    .line 8
    iput-object v4, v0, Lz0/u$c;->g:Lq0/d;

    move/from16 v1, p11

    .line 9
    iput v1, v0, Lz0/u$c;->h:I

    .line 10
    iput-object v5, v0, Lz0/u$c;->i:Lq0/a;

    move-wide/from16 v1, p13

    .line 11
    iput-wide v1, v0, Lz0/u$c;->j:J

    move-wide/from16 v1, p15

    .line 12
    iput-wide v1, v0, Lz0/u$c;->k:J

    move/from16 v1, p17

    .line 13
    iput v1, v0, Lz0/u$c;->l:I

    move/from16 v1, p18

    .line 14
    iput v1, v0, Lz0/u$c;->m:I

    move-wide/from16 v1, p19

    .line 15
    iput-wide v1, v0, Lz0/u$c;->n:J

    move/from16 v1, p21

    .line 16
    iput v1, v0, Lz0/u$c;->o:I

    .line 17
    iput-object v6, v0, Lz0/u$c;->p:Ljava/util/List;

    .line 18
    iput-object v7, v0, Lz0/u$c;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lz0/u$c;->b:Lq0/y$c;

    sget-object v2, Lq0/y$c;->a:Lq0/y$c;

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v3, Lz0/u;->x:Lz0/u$a;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lz0/u$c;->c()Z

    move-result v4

    .line 4
    iget v5, v0, Lz0/u$c;->h:I

    .line 5
    iget-object v6, v0, Lz0/u$c;->i:Lq0/a;

    .line 6
    iget-wide v7, v0, Lz0/u$c;->j:J

    .line 7
    iget-wide v9, v0, Lz0/u$c;->k:J

    .line 8
    iget v11, v0, Lz0/u$c;->l:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lz0/u$c;->d()Z

    move-result v12

    .line 10
    iget-wide v13, v0, Lz0/u$c;->d:J

    .line 11
    iget-wide v1, v0, Lz0/u$c;->f:J

    move-wide v15, v1

    .line 12
    iget-wide v1, v0, Lz0/u$c;->e:J

    move-wide/from16 v17, v1

    .line 13
    iget-wide v1, v0, Lz0/u$c;->n:J

    move-wide/from16 v19, v1

    .line 14
    invoke-virtual/range {v3 .. v20}, Lz0/u$a;->a(ZILq0/a;JJIZJJJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method

.method public final b()Lq0/y$b;
    .locals 5

    .line 1
    iget-wide v0, p0, Lz0/u$c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Lq0/y$b;

    .line 3
    iget-wide v3, p0, Lz0/u$c;->f:J

    .line 4
    invoke-direct {v2, v0, v1, v3, v4}, Lq0/y$b;-><init>(JJ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lz0/u$c;->b:Lq0/y$c;

    sget-object v1, Lq0/y$c;->a:Lq0/y$c;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lz0/u$c;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lz0/u$c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Lq0/y;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lz0/u$c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lz0/u$c;->q:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/b;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/work/b;->c:Landroidx/work/b;

    :goto_0
    move-object v7, v1

    .line 2
    new-instance v1, Lq0/y;

    .line 3
    iget-object v2, v0, Lz0/u$c;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    const-string v2, "fromString(id)"

    invoke-static {v3, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, v0, Lz0/u$c;->b:Lq0/y$c;

    .line 5
    new-instance v5, Ljava/util/HashSet;

    iget-object v2, v0, Lz0/u$c;->p:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v6, v0, Lz0/u$c;->c:Landroidx/work/b;

    const-string v2, "progress"

    .line 7
    invoke-static {v7, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v8, v0, Lz0/u$c;->h:I

    .line 9
    iget v9, v0, Lz0/u$c;->m:I

    .line 10
    iget-object v10, v0, Lz0/u$c;->g:Lq0/d;

    .line 11
    iget-wide v11, v0, Lz0/u$c;->d:J

    .line 12
    invoke-virtual/range {p0 .. p0}, Lz0/u$c;->b()Lq0/y$b;

    move-result-object v13

    .line 13
    invoke-virtual/range {p0 .. p0}, Lz0/u$c;->a()J

    move-result-wide v14

    .line 14
    iget v2, v0, Lz0/u$c;->o:I

    move/from16 v16, v2

    move-object v2, v1

    .line 15
    invoke-direct/range {v2 .. v16}, Lq0/y;-><init>(Ljava/util/UUID;Lq0/y$c;Ljava/util/Set;Landroidx/work/b;Landroidx/work/b;IILq0/d;JLq0/y$b;JI)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz0/u$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz0/u$c;

    iget-object v1, p0, Lz0/u$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lz0/u$c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lz0/u$c;->b:Lq0/y$c;

    iget-object v3, p1, Lz0/u$c;->b:Lq0/y$c;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lz0/u$c;->c:Landroidx/work/b;

    iget-object v3, p1, Lz0/u$c;->c:Landroidx/work/b;

    invoke-static {v1, v3}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lz0/u$c;->d:J

    iget-wide v5, p1, Lz0/u$c;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lz0/u$c;->e:J

    iget-wide v5, p1, Lz0/u$c;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lz0/u$c;->f:J

    iget-wide v5, p1, Lz0/u$c;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lz0/u$c;->g:Lq0/d;

    iget-object v3, p1, Lz0/u$c;->g:Lq0/d;

    invoke-static {v1, v3}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lz0/u$c;->h:I

    iget v3, p1, Lz0/u$c;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lz0/u$c;->i:Lq0/a;

    iget-object v3, p1, Lz0/u$c;->i:Lq0/a;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lz0/u$c;->j:J

    iget-wide v5, p1, Lz0/u$c;->j:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lz0/u$c;->k:J

    iget-wide v5, p1, Lz0/u$c;->k:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lz0/u$c;->l:I

    iget v3, p1, Lz0/u$c;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lz0/u$c;->m:I

    iget v3, p1, Lz0/u$c;->m:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lz0/u$c;->n:J

    iget-wide v5, p1, Lz0/u$c;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lz0/u$c;->o:I

    iget v3, p1, Lz0/u$c;->o:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lz0/u$c;->p:Ljava/util/List;

    iget-object v3, p1, Lz0/u$c;->p:Ljava/util/List;

    invoke-static {v1, v3}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lz0/u$c;->q:Ljava/util/List;

    iget-object p1, p1, Lz0/u$c;->q:Ljava/util/List;

    invoke-static {v1, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lz0/u$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/u$c;->b:Lq0/y$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/u$c;->c:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz0/u$c;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz0/u$c;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz0/u$c;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/u$c;->g:Lq0/d;

    invoke-virtual {v1}, Lq0/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz0/u$c;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/u$c;->i:Lq0/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz0/u$c;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz0/u$c;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz0/u$c;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz0/u$c;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz0/u$c;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz0/u$c;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/u$c;->p:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz0/u$c;->q:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfoPojo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->b:Lq0/y$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->c:Landroidx/work/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz0/u$c;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", intervalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz0/u$c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flexDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz0/u$c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->g:Lq0/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/u$c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backoffPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->i:Lq0/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backoffDelayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz0/u$c;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastEnqueueTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz0/u$c;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/u$c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/u$c;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz0/u$c;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/u$c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/u$c;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
