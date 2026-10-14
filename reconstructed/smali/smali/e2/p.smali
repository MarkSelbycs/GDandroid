.class public Le2/p;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clone"

    .line 3
    invoke-static {p0, v1, v0}, Le2/x;->t(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Le2/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Le2/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Le2/p;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/p;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static e([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    invoke-static {p0}, Le2/y;->b([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Le2/o;->c(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Le2/p;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Le2/k;->k(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Le2/o;->e(Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static k(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    invoke-static {p0}, Le2/y;->c(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
