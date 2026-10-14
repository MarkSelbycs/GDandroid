.class public Lo1/e;
.super Ln1/a;
.source "AtomicReferenceConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/e;->h(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Le2/d0;->n(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ln1/g;->y()Ln1/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ln1/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 4
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
