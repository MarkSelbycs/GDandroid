.class public final Lp3/c;
.super Lp3/a;
.source "PrimitiveRanges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a;"
    }
.end annotation


# static fields
.field public static final e:Lp3/c$a;

.field public static final f:Lp3/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lp3/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/c$a;-><init>(Lm3/g;)V

    sput-object v0, Lp3/c;->e:Lp3/c$a;

    new-instance v0, Lp3/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp3/c;-><init>(CC)V

    sput-object v0, Lp3/c;->f:Lp3/c;

    return-void
.end method

.method public constructor <init>(CC)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lp3/a;-><init>(CCI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp3/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lp3/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp3/c;

    invoke-virtual {v0}, Lp3/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp3/a;->a()C

    move-result v0

    check-cast p1, Lp3/c;

    invoke-virtual {p1}, Lp3/a;->a()C

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lp3/a;->b()C

    move-result v0

    invoke-virtual {p1}, Lp3/a;->b()C

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lp3/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp3/a;->a()C

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lp3/a;->b()C

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lp3/a;->a()C

    move-result v0

    invoke-virtual {p0}, Lp3/a;->b()C

    move-result v1

    invoke-static {v0, v1}, Lm3/k;->f(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lp3/a;->a()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp3/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
