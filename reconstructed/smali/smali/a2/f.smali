.class public La2/f;
.super La2/e;
.source "FuncKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La2/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La2/e;-><init>(Ljava/util/Map;)V

    .line 2
    iput-object p2, p0, La2/f;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public H(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/f;->b:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
