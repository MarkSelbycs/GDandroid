.class public Lo1/l;
.super Ljava/lang/Object;
.source "CollectionConverter.java"

# interfaces
.implements Ln1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/e<",
        "Ljava/util/Collection<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    invoke-static {p1}, Le2/d0;->n(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo1/l;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lo1/l;->a:Ljava/lang/reflect/Type;

    .line 4
    iput-object p2, p0, Lo1/l;->b:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lo1/l;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lo1/l;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/l;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lo1/l;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ll1/c;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo1/l;->b:Ljava/lang/reflect/Type;

    invoke-static {v0, p1, v1}, Ll1/c;->b(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
