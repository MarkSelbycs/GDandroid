.class public La2/c;
.super La2/f;
.source "CaseInsensitiveMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La2/f<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, La2/c;-><init>(IF)V

    .line 3
    invoke-virtual {p0, p2}, La2/a0;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-static {v0}, La2/g;->c(Ljava/util/Map;)La2/g;

    move-result-object p1

    invoke-direct {p0, p1}, La2/c;-><init>(La2/g;)V

    return-void
.end method

.method public constructor <init>(La2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/g<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, La2/g;->b()Ljava/util/Map;

    move-result-object p1

    sget-object v0, La2/b;->a:La2/b;

    invoke-direct {p0, p1, v0}, La2/f;-><init>(Ljava/util/Map;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/high16 v0, 0x3f400000    # 0.75f

    .line 1
    invoke-direct {p0, v0, p1}, La2/c;-><init>(FLjava/util/Map;)V

    return-void
.end method

.method public static synthetic U(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, La2/c;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
