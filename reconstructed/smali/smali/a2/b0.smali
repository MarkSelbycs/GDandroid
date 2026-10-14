.class public La2/b0;
.super La2/t;
.source "WeakConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La2/t<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, La2/u;

    invoke-direct {v0}, La2/u;-><init>()V

    invoke-direct {p0, v0}, La2/b0;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/ref/Reference<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Le2/s;->b:Le2/s;

    invoke-direct {p0, p1, v0}, La2/t;-><init>(Ljava/util/concurrent/ConcurrentMap;Le2/s;)V

    return-void
.end method
