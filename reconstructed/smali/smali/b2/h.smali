.class public Lb2/h;
.super Ljava/lang/Object;
.source "StrSplitter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lb2/h;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lb2/c;->W(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static c(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lb2/h;->e(Ljava/lang/CharSequence;CIZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;CIZZLjava/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "CIZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ld2/a;

    new-instance v1, Lc2/a;

    invoke-direct {v1, p1, p4}, Lc2/a;-><init>(CZ)V

    invoke-direct {v0, p0, v1, p2, p3}, Ld2/a;-><init>(Ljava/lang/CharSequence;Lc2/d;IZ)V

    .line 3
    invoke-virtual {v0, p5}, Ld2/a;->e(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/CharSequence;CIZZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Lb2/h;->h(Z)Ljava/util/function/Function;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lb2/h;->d(Ljava/lang/CharSequence;CIZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/CharSequence;CIZZ)[Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lb2/h;->c(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lb2/h;->g(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static h(Z)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb2/g;

    invoke-direct {v0, p0}, Lb2/g;-><init>(Z)V

    return-object v0
.end method
