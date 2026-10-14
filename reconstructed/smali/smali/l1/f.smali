.class public Ll1/f;
.super Ljava/lang/Object;
.source "IterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Ll1/f;->b(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Iterator;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Ll1/h;->d(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/Iterator;Ljava/util/function/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll1/m;

    invoke-direct {v0, p0, p1}, Ll1/m;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v0
.end method
