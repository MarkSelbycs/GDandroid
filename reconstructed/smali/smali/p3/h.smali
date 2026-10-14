.class public final Lp3/h;
.super Lp3/f;
.source "PrimitiveRanges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/f;"
    }
.end annotation


# static fields
.field public static final e:Lp3/h$a;

.field public static final f:Lp3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lp3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/h$a;-><init>(Lm3/g;)V

    sput-object v0, Lp3/h;->e:Lp3/h$a;

    new-instance v0, Lp3/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp3/h;-><init>(II)V

    sput-object v0, Lp3/h;->f:Lp3/h;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lp3/f;-><init>(III)V

    return-void
.end method

.method public static final synthetic e()Lp3/h;
    .locals 2

    sget-object v0, Lp3/h;->f:Lp3/h;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp3/h;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lp3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp3/h;

    invoke-virtual {v0}, Lp3/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp3/f;->a()I

    move-result v0

    check-cast p1, Lp3/h;

    invoke-virtual {p1}, Lp3/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lp3/f;->b()I

    move-result v0

    invoke-virtual {p1}, Lp3/f;->b()I

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

.method public f(I)Z
    .locals 1

    invoke-virtual {p0}, Lp3/f;->a()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lp3/f;->b()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lp3/f;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lp3/f;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lp3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp3/f;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lp3/f;->b()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lp3/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lp3/f;->b()I

    move-result v1

    if-le v0, v1, :cond_0

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

    invoke-virtual {p0}, Lp3/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp3/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
