.class public interface abstract Lz0/z;
.super Ljava/lang/Object;
.source "WorkTagDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/z$a;
    }
.end annotation


# direct methods
.method public static synthetic b(Lz0/z;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lz0/z;->d(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract c(Lz0/y;)V
.end method

.method public d(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lz0/y;

    invoke-direct {v1, v0, p1}, Lz0/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lz0/z;->c(Lz0/y;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract e(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
