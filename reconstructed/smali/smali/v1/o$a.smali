.class public Lv1/o$a;
.super Ljava/lang/Object;
.source "PatternPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/o$a;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lv1/o$a;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lv1/o$a;

    .line 3
    iget v2, p0, Lv1/o$a;->b:I

    iget v3, p1, Lv1/o$a;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lv1/o$a;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 5
    iget-object p1, p1, Lv1/o$a;->a:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 6
    :cond_5
    iget-object p1, p1, Lv1/o$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lv1/o$a;->b:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lv1/o$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
