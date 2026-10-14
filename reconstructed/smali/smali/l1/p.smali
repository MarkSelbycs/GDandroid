.class public Ll1/p;
.super Ljava/lang/Object;
.source "TransSpliterator.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll1/p;->a:Ljava/util/Spliterator;

    .line 3
    iput-object p2, p0, Ll1/p;->b:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Ll1/p;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll1/p;->c(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ll1/p;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll1/p;->d(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/p;->b:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/p;->b:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget-object v0, p0, Ll1/p;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x106

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Ll1/p;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ll1/p;->a:Ljava/util/Spliterator;

    new-instance v1, Ll1/n;

    invoke-direct {v1, p0, p1}, Ll1/n;-><init>(Ll1/p;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ll1/p;->a:Ljava/util/Spliterator;

    new-instance v1, Ll1/o;

    invoke-direct {v1, p0, p1}, Ll1/o;-><init>(Ll1/p;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll1/p;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ll1/p;

    iget-object v2, p0, Ll1/p;->b:Ljava/util/function/Function;

    invoke-direct {v1, v0, v2}, Ll1/p;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
