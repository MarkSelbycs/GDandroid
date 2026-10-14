.class public Le2/d;
.super Ljava/lang/Object;
.source "BooleanUtil.java"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "t"

    const-string v4, "ok"

    const-string v5, "1"

    const-string v6, "on"

    const-string v7, "\u662f"

    const-string v8, "\u5bf9"

    const-string v9, "\u771f"

    const-string v10, "\u5c0d"

    const-string v11, "\u221a"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll1/c;->k([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Le2/d;->a:Ljava/util/Set;

    const-string v1, "false"

    const-string v2, "no"

    const-string v3, "n"

    const-string v4, "f"

    const-string v5, "0"

    const-string v6, "off"

    const-string v7, "\u5426"

    const-string v8, "\u9519"

    const-string v9, "\u5047"

    const-string v10, "\u932f"

    const-string v11, "\u00d7"

    .line 2
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll1/c;->k([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Le2/d;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

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

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->s(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Le2/d;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Z)B
    .locals 0

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static d(Z)Ljava/lang/Byte;
    .locals 0

    invoke-static {p0}, Le2/d;->c(Z)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static e(Z)C
    .locals 0

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static f(Z)Ljava/lang/Character;
    .locals 0

    invoke-static {p0}, Le2/d;->e(Z)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static g(Z)D
    .locals 2

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public static h(Z)Ljava/lang/Double;
    .locals 2

    invoke-static {p0}, Le2/d;->g(Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static i(Z)F
    .locals 0

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static j(Z)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Le2/d;->i(Z)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static k(Z)I
    .locals 0

    return p0
.end method

.method public static l(Z)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static m(Z)J
    .locals 2

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static n(Z)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Le2/d;->m(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static o(Z)S
    .locals 0

    invoke-static {p0}, Le2/d;->k(Z)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static p(Z)Ljava/lang/Short;
    .locals 0

    invoke-static {p0}, Le2/d;->o(Z)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method
