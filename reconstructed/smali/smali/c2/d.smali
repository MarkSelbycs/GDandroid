.class public abstract Lc2/d;
.super Ljava/lang/Object;
.source "TextFinder.java"

# interfaces
.implements Lc2/b;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc2/d;->b:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc2/d;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc2/d;->b:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lc2/d;->b:I

    if-gez v0, :cond_1

    .line 3
    iget-object v1, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public f(I)Lc2/d;
    .locals 0

    iput p1, p0, Lc2/d;->b:I

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Lc2/d;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Text must be not null!"

    invoke-static {p1, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method
