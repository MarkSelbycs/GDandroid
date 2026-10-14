.class public final Lc4/q$b;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc4/q$b;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lc4/q$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lc4/q$b;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc4/q$b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lc4/q$b;->d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lc4/q$b;
    .locals 4

    const-string v0, ":"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc4/q$b;->d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lc4/q$b;->d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, v2, p1}, Lc4/q$b;->d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/q$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lc4/q$b;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Lc4/q;
    .locals 2

    new-instance v0, Lc4/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/q;-><init>(Lc4/q$b;Lc4/q$a;)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "name == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x7f

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x1f

    const/4 v7, 0x1

    if-ge v2, v0, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v8, v6, :cond_0

    if-ge v8, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v0, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    aput-object p1, v0, v4

    const-string p1, "Unexpected char %#04x at %d in header name: %s"

    .line 7
    invoke-static {p1, v0}, Ld4/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "value == null"

    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 10
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v8, v6, :cond_2

    if-ge v8, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    const-string p1, "Unexpected char %#04x at %d in %s value: %s"

    .line 13
    invoke-static {p1, v3}, Ld4/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/String;)Lc4/q$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lc4/q$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lc4/q$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lc4/q$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lc4/q$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc4/q$b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lc4/q$b;->g(Ljava/lang/String;)Lc4/q$b;

    .line 3
    invoke-virtual {p0, p1, p2}, Lc4/q$b;->d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    return-object p0
.end method
