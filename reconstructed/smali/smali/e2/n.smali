.class public Le2/n;
.super Ljava/lang/Object;
.source "ModifierUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/reflect/Field;[Le2/n$a;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p1}, Le2/n;->g([Le2/n$a;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static varargs b(Ljava/lang/reflect/Method;[Le2/n$a;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p1}, Le2/n;->g([Le2/n$a;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Le2/n$a;

    sget-object v1, Le2/n$a;->p:Le2/n$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Le2/n;->b(Ljava/lang/reflect/Method;[Le2/n$a;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/reflect/Field;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Le2/n$a;

    sget-object v1, Le2/n$a;->b:Le2/n$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Le2/n;->a(Ljava/lang/reflect/Field;[Le2/n$a;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/reflect/Field;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Le2/n$a;

    sget-object v1, Le2/n$a;->e:Le2/n$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Le2/n;->a(Ljava/lang/reflect/Field;[Le2/n$a;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Le2/n$a;

    sget-object v1, Le2/n$a;->e:Le2/n$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Le2/n;->b(Ljava/lang/reflect/Method;[Le2/n$a;)Z

    move-result p0

    return p0
.end method

.method public static varargs g([Le2/n$a;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-object v0, p0, v0

    invoke-virtual {v0}, Le2/n$a;->b()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p0, v1

    invoke-virtual {v2}, Le2/n$a;->b()I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
