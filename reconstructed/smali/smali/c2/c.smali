.class public Lc2/c;
.super Lc2/d;
.source "StrFinder.java"


# instance fields
.field public final d:Ljava/lang/CharSequence;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc2/d;-><init>()V

    .line 2
    invoke-static {p1}, Lv1/e;->m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3
    iput-object p1, p0, Lc2/c;->d:Ljava/lang/CharSequence;

    .line 4
    iput-boolean p2, p0, Lc2/c;->e:Z

    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lc2/c;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public c(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Text to find must be not null!"

    invoke-static {v0, v3, v2}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc2/c;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p1, :cond_0

    move p1, v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc2/d;->e()I

    move-result v1

    .line 4
    iget-boolean v2, p0, Lc2/d;->c:Z

    if-eqz v2, :cond_2

    :goto_0
    if-le p1, v1, :cond_4

    .line 5
    iget-object v2, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Lc2/c;->d:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-boolean v7, p0, Lc2/c;->e:Z

    move v3, p1

    move v6, v0

    invoke-static/range {v2 .. v7}, Lb2/c;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge p1, v1, :cond_4

    .line 6
    iget-object v2, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Lc2/c;->d:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-boolean v7, p0, Lc2/c;->e:Z

    move v3, p1

    move v6, v0

    invoke-static/range {v2 .. v7}, Lb2/c;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method
