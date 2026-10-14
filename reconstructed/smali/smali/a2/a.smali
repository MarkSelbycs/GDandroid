.class public La2/a;
.super La2/c;
.source "CaseInsensitiveLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La2/c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 1
    invoke-direct {p0, p1, v0}, La2/a;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-direct {p0, v0}, La2/c;-><init>(Ljava/util/Map;)V

    return-void
.end method
