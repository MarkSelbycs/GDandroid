.class public Lc2/a;
.super Lc2/d;
.source "CharFinder.java"


# instance fields
.field public final d:C

.field public final e:Z


# direct methods
.method public constructor <init>(C)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc2/a;-><init>(CZ)V

    return-void
.end method

.method public constructor <init>(CZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc2/d;-><init>()V

    .line 3
    iput-char p1, p0, Lc2/a;->d:C

    .line 4
    iput-boolean p2, p0, Lc2/a;->e:Z

    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public c(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Text to find must be not null!"

    invoke-static {v0, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lc2/d;->e()I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lc2/d;->c:Z

    if-eqz v1, :cond_1

    :goto_0
    if-le p1, v0, :cond_3

    .line 4
    iget-char v1, p0, Lc2/a;->d:C

    iget-object v2, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-boolean v3, p0, Lc2/a;->e:Z

    invoke-static {v1, v2, v3}, Le2/o;->b(CCZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p1, v0, :cond_3

    .line 5
    iget-char v1, p0, Lc2/a;->d:C

    iget-object v2, p0, Lc2/d;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-boolean v3, p0, Lc2/a;->e:Z

    invoke-static {v1, v2, v3}, Le2/o;->b(CCZ)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
