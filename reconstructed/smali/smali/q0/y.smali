.class public final Lq0/y;
.super Ljava/lang/Object;
.source "WorkInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/y$a;,
        Lq0/y$b;,
        Lq0/y$c;
    }
.end annotation


# static fields
.field public static final m:Lq0/y$a;


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Lq0/y$c;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/work/b;

.field public final e:Landroidx/work/b;

.field public final f:I

.field public final g:I

.field public final h:Lq0/d;

.field public final i:J

.field public final j:Lq0/y$b;

.field public final k:J

.field public final l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq0/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/y$a;-><init>(Lm3/g;)V

    sput-object v0, Lq0/y;->m:Lq0/y$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lq0/y$c;Ljava/util/Set;Landroidx/work/b;Landroidx/work/b;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lq0/y$c;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/b;",
            "Landroidx/work/b;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const-string v8, "id"

    move-object/from16 v9, p1

    invoke-static {v9, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "state"

    move-object/from16 v9, p2

    invoke-static {v9, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "tags"

    move-object/from16 v9, p3

    invoke-static {v9, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "outputData"

    move-object/from16 v9, p4

    invoke-static {v9, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "progress"

    move-object/from16 v9, p5

    invoke-static {v9, v8}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf80

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lq0/y;-><init>(Ljava/util/UUID;Lq0/y$c;Ljava/util/Set;Landroidx/work/b;Landroidx/work/b;IILq0/d;JLq0/y$b;JIILm3/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lq0/y$c;Ljava/util/Set;Landroidx/work/b;Landroidx/work/b;IILq0/d;JLq0/y$b;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lq0/y$c;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/b;",
            "Landroidx/work/b;",
            "II",
            "Lq0/d;",
            "J",
            "Lq0/y$b;",
            "JI)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputData"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p5, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {p8, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq0/y;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Lq0/y;->b:Lq0/y$c;

    .line 4
    iput-object p3, p0, Lq0/y;->c:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lq0/y;->d:Landroidx/work/b;

    .line 6
    iput-object p5, p0, Lq0/y;->e:Landroidx/work/b;

    .line 7
    iput p6, p0, Lq0/y;->f:I

    .line 8
    iput p7, p0, Lq0/y;->g:I

    .line 9
    iput-object p8, p0, Lq0/y;->h:Lq0/d;

    .line 10
    iput-wide p9, p0, Lq0/y;->i:J

    .line 11
    iput-object p11, p0, Lq0/y;->j:Lq0/y$b;

    .line 12
    iput-wide p12, p0, Lq0/y;->k:J

    .line 13
    iput p14, p0, Lq0/y;->l:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Lq0/y$c;Ljava/util/Set;Landroidx/work/b;Landroidx/work/b;IILq0/d;JLq0/y$b;JIILm3/g;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x8

    const-string v2, "EMPTY"

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Landroidx/work/b;->c:Landroidx/work/b;

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 15
    sget-object v1, Landroidx/work/b;->c:Landroidx/work/b;

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 16
    sget-object v1, Lq0/d;->j:Lq0/d;

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    move-wide v12, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move-object v14, v1

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    const-wide v1, 0x7fffffffffffffffL

    move-wide v15, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p12

    :goto_7
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/16 v0, -0x100

    move/from16 v17, v0

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 17
    invoke-direct/range {v3 .. v17}, Lq0/y;-><init>(Ljava/util/UUID;Lq0/y$c;Ljava/util/Set;Landroidx/work/b;Landroidx/work/b;IILq0/d;JLq0/y$b;JI)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lq0/y;->g:I

    return v0
.end method

.method public final b()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lq0/y;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public final c()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Lq0/y;->d:Landroidx/work/b;

    return-object v0
.end method

.method public final d()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Lq0/y;->e:Landroidx/work/b;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lq0/y;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1
    const-class v1, Lq0/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lq0/y;

    .line 3
    iget v1, p0, Lq0/y;->f:I

    iget v2, p1, Lq0/y;->f:I

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget v1, p0, Lq0/y;->g:I

    iget v2, p1, Lq0/y;->g:I

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v1, p0, Lq0/y;->a:Ljava/util/UUID;

    iget-object v2, p1, Lq0/y;->a:Ljava/util/UUID;

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v1, p0, Lq0/y;->b:Lq0/y$c;

    iget-object v2, p1, Lq0/y;->b:Lq0/y$c;

    if-eq v1, v2, :cond_5

    return v0

    .line 7
    :cond_5
    iget-object v1, p0, Lq0/y;->d:Landroidx/work/b;

    iget-object v2, p1, Lq0/y;->d:Landroidx/work/b;

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 8
    :cond_6
    iget-object v1, p0, Lq0/y;->h:Lq0/d;

    iget-object v2, p1, Lq0/y;->h:Lq0/d;

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 9
    :cond_7
    iget-wide v1, p0, Lq0/y;->i:J

    iget-wide v3, p1, Lq0/y;->i:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    return v0

    .line 10
    :cond_8
    iget-object v1, p0, Lq0/y;->j:Lq0/y$b;

    iget-object v2, p1, Lq0/y;->j:Lq0/y$b;

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 11
    :cond_9
    iget-wide v1, p0, Lq0/y;->k:J

    iget-wide v3, p1, Lq0/y;->k:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    return v0

    .line 12
    :cond_a
    iget v1, p0, Lq0/y;->l:I

    iget v2, p1, Lq0/y;->l:I

    if-eq v1, v2, :cond_b

    return v0

    .line 13
    :cond_b
    iget-object v1, p0, Lq0/y;->c:Ljava/util/Set;

    iget-object v2, p1, Lq0/y;->c:Ljava/util/Set;

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lq0/y;->e:Landroidx/work/b;

    iget-object p1, p1, Lq0/y;->e:Landroidx/work/b;

    invoke-static {v0, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_d
    :goto_0
    return v0
.end method

.method public final f()Lq0/y$c;
    .locals 1

    iget-object v0, p0, Lq0/y;->b:Lq0/y$c;

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/y;->c:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/y;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lq0/y;->b:Lq0/y$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lq0/y;->d:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lq0/y;->c:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lq0/y;->e:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lq0/y;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lq0/y;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lq0/y;->h:Lq0/d;

    invoke-virtual {v1}, Lq0/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lq0/y;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lq0/y;->j:Lq0/y$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-wide v1, p0, Lq0/y;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lq0/y;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq0/y;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq0/y;->b:Lq0/y$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lq0/y;->d:Landroidx/work/b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lq0/y;->c:Ljava/util/Set;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lq0/y;->e:Landroidx/work/b;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lq0/y;->f:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lq0/y;->g:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lq0/y;->h:Lq0/d;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-wide v1, p0, Lq0/y;->i:J

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodicityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lq0/y;->j:Lq0/y$b;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-wide v1, p0, Lq0/y;->k:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}, stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lq0/y;->l:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
