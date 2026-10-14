.class public Le2/f;
.super Ljava/lang/Object;
.source "CharUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static b(C)Z
    .locals 0

    invoke-static {p0}, Le2/f;->c(I)Z

    move-result p0

    return p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xfeff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202a

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/16 v0, 0x3164

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x180e

    if-ne p0, v0, :cond_0

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

.method public static d(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

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

.method public static e(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(C)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lb2/a;->a(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
