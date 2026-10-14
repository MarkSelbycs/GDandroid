.class public final Lp3/k;
.super Lp3/i;
.source "PrimitiveRanges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/i;"
    }
.end annotation


# static fields
.field public static final e:Lp3/k$a;

.field public static final f:Lp3/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lp3/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/k$a;-><init>(Lm3/g;)V

    sput-object v0, Lp3/k;->e:Lp3/k$a;

    new-instance v0, Lp3/k;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lp3/k;-><init>(JJ)V

    sput-object v0, Lp3/k;->f:Lp3/k;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lp3/i;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lp3/k;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lp3/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp3/k;

    invoke-virtual {v0}, Lp3/k;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp3/i;->a()J

    move-result-wide v0

    check-cast p1, Lp3/k;

    invoke-virtual {p1}, Lp3/i;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lp3/i;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lp3/i;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lp3/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    int-to-long v0, v0

    invoke-virtual {p0}, Lp3/i;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lp3/i;->a()J

    move-result-wide v4

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lp3/i;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lp3/i;->b()J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Lp3/i;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lp3/i;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lp3/i;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp3/i;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
