.class public final Lf2/a;
.super Ljava/lang/Object;
.source "InternalJSONUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILf2/f;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lf2/f;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lf2/f;->e()Ljava/util/Comparator;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lf2/f;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, La2/d;

    invoke-direct {p0, v0}, La2/d;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, La2/a;

    invoke-direct {p1, p0}, La2/a;-><init>(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    instance-of v0, p0, Lf2/o;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lf2/l;Ljava/lang/Object;Ljava/lang/Object;Lv1/i;)Lf2/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/l;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lf2/l;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ln1/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lb2/c;->D(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    aget-object v3, p1, v1

    .line 4
    invoke-interface {v2, v3}, Lf2/i;->f(Ljava/lang/Object;)Lf2/l;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Lf2/l;

    invoke-virtual {v2}, Lf2/l;->h()Lf2/f;

    move-result-object v5

    invoke-direct {v4, v5}, Lf2/l;-><init>(Lf2/f;)V

    .line 6
    invoke-virtual {v2}, Lf2/l;->h()Lf2/f;

    move-result-object v5

    invoke-virtual {v5}, Lf2/f;->f()Z

    move-result v5

    invoke-virtual {v2, v3, v4, p3, v5}, Lf2/l;->T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;

    :cond_0
    move-object v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    aget-object p1, p1, v0

    invoke-virtual {v2}, Lf2/l;->h()Lf2/f;

    move-result-object v0

    invoke-virtual {v0}, Lf2/f;->f()Z

    move-result v0

    invoke-virtual {v2, p1, p2, p3, v0}, Lf2/l;->T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "true"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_7

    :cond_4
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "."

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "e"

    aput-object v2, v1, v0

    .line 7
    invoke-static {p0, v1}, Lb2/c;->d(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_6

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 12
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-object p0

    .line 13
    :cond_8
    :goto_0
    sget-object p0, Lf2/j;->a:Lf2/j;

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/p;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lf2/h;

    const-string v0, "JSON does not allow non-finite numbers."

    invoke-direct {p0, v0}, Lf2/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lf2/f;)Li1/i;
    .locals 2

    .line 1
    invoke-static {}, Li1/i;->e()Li1/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lf2/f;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Li1/i;->u(Z)Li1/i;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lf2/f;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Li1/i;->x(Z)Li1/i;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lf2/f;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Li1/i;->y(Z)Li1/i;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lf2/f;->x()Z

    move-result p0

    invoke-virtual {v0, p0}, Li1/i;->D(Z)Li1/i;

    move-result-object p0

    return-object p0
.end method
