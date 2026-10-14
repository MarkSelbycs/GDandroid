.class public final Lq0/d;
.super Ljava/lang/Object;
.source "Constraints.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/d$a;,
        Lq0/d$b;,
        Lq0/d$c;
    }
.end annotation


# static fields
.field public static final i:Lq0/d$b;

.field public static final j:Lq0/d;


# instance fields
.field public final a:Lq0/o;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq0/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lq0/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/d$b;-><init>(Lm3/g;)V

    sput-object v0, Lq0/d;->i:Lq0/d$b;

    new-instance v0, Lq0/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lq0/d;-><init>(Lq0/o;ZZZILm3/g;)V

    sput-object v0, Lq0/d;->j:Lq0/d;

    return-void
.end method

.method public constructor <init>(Lq0/d;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-boolean v0, p1, Lq0/d;->b:Z

    iput-boolean v0, p0, Lq0/d;->b:Z

    .line 19
    iget-boolean v0, p1, Lq0/d;->c:Z

    iput-boolean v0, p0, Lq0/d;->c:Z

    .line 20
    iget-object v0, p1, Lq0/d;->a:Lq0/o;

    iput-object v0, p0, Lq0/d;->a:Lq0/o;

    .line 21
    iget-boolean v0, p1, Lq0/d;->d:Z

    iput-boolean v0, p0, Lq0/d;->d:Z

    .line 22
    iget-boolean v0, p1, Lq0/d;->e:Z

    iput-boolean v0, p0, Lq0/d;->e:Z

    .line 23
    iget-object v0, p1, Lq0/d;->h:Ljava/util/Set;

    iput-object v0, p0, Lq0/d;->h:Ljava/util/Set;

    .line 24
    iget-wide v0, p1, Lq0/d;->f:J

    iput-wide v0, p0, Lq0/d;->f:J

    .line 25
    iget-wide v0, p1, Lq0/d;->g:J

    iput-wide v0, p0, Lq0/d;->g:J

    return-void
.end method

.method public constructor <init>(Lq0/o;ZZZ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Lq0/d;-><init>(Lq0/o;ZZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lq0/o;ZZZILm3/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1
    sget-object p1, Lq0/o;->a:Lq0/o;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 2
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lq0/d;-><init>(Lq0/o;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lq0/o;ZZZZ)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "requiredNetworkType"

    move-object v2, p1

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc0

    const/4 v13, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 4
    invoke-direct/range {v1 .. v13}, Lq0/d;-><init>(Lq0/o;ZZZZJJLjava/util/Set;ILm3/g;)V

    return-void
.end method

.method public constructor <init>(Lq0/o;ZZZZJJLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/o;",
            "ZZZZJJ",
            "Ljava/util/Set<",
            "Lq0/d$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p10, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lq0/d;->a:Lq0/o;

    .line 10
    iput-boolean p2, p0, Lq0/d;->b:Z

    .line 11
    iput-boolean p3, p0, Lq0/d;->c:Z

    .line 12
    iput-boolean p4, p0, Lq0/d;->d:Z

    .line 13
    iput-boolean p5, p0, Lq0/d;->e:Z

    .line 14
    iput-wide p6, p0, Lq0/d;->f:J

    .line 15
    iput-wide p8, p0, Lq0/d;->g:J

    .line 16
    iput-object p10, p0, Lq0/d;->h:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lq0/o;ZZZZJJLjava/util/Set;ILm3/g;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lq0/o;->a:Lq0/o;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v3, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_5

    move-wide v9, v7

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p6

    :goto_5
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v7, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 6
    invoke-static {}, Lb3/j0;->d()Ljava/util/Set;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object/from16 v0, p10

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move p3, v2

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v3

    move-wide/from16 p7, v9

    move-wide/from16 p9, v7

    move-object/from16 p11, v0

    .line 7
    invoke-direct/range {p1 .. p11}, Lq0/d;-><init>(Lq0/o;ZZZZJJLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lq0/d;->g:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lq0/d;->f:J

    return-wide v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lq0/d$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/d;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Lq0/o;
    .locals 1

    iget-object v0, p0, Lq0/d;->a:Lq0/o;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lq0/d;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1
    const-class v1, Lq0/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lq0/d;

    .line 3
    iget-boolean v1, p0, Lq0/d;->b:Z

    iget-boolean v2, p1, Lq0/d;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Lq0/d;->c:Z

    iget-boolean v2, p1, Lq0/d;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-boolean v1, p0, Lq0/d;->d:Z

    iget-boolean v2, p1, Lq0/d;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    iget-boolean v1, p0, Lq0/d;->e:Z

    iget-boolean v2, p1, Lq0/d;->e:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 7
    :cond_5
    iget-wide v1, p0, Lq0/d;->f:J

    iget-wide v3, p1, Lq0/d;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 8
    :cond_6
    iget-wide v1, p0, Lq0/d;->g:J

    iget-wide v3, p1, Lq0/d;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    return v0

    .line 9
    :cond_7
    iget-object v1, p0, Lq0/d;->a:Lq0/o;

    iget-object v2, p1, Lq0/d;->a:Lq0/o;

    if-eq v1, v2, :cond_8

    goto :goto_0

    .line 10
    :cond_8
    iget-object v0, p0, Lq0/d;->h:Ljava/util/Set;

    iget-object p1, p1, Lq0/d;->h:Ljava/util/Set;

    invoke-static {v0, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_9
    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lq0/d;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lq0/d;->b:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lq0/d;->c:Z

    return v0
.end method

.method public hashCode()I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq0/d;->a:Lq0/o;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lq0/d;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lq0/d;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lq0/d;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lq0/d;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Lq0/d;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Lq0/d;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lq0/d;->h:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lq0/d;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constraints{requiredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lq0/d;->a:Lq0/o;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requiresCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lq0/d;->b:Z

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean v1, p0, Lq0/d;->c:Z

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresBatteryNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-boolean v1, p0, Lq0/d;->d:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresStorageNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-boolean v1, p0, Lq0/d;->e:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerUpdateDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-wide v1, p0, Lq0/d;->f:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerMaxDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-wide v1, p0, Lq0/d;->g:J

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentUriTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lq0/d;->h:Ljava/util/Set;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
