.class public interface abstract Lf2/i;
.super Ljava/lang/Object;
.source "JSONGetter.java"

# interfaces
.implements Ls1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/b;"
    }
.end annotation


# virtual methods
.method public f(Ljava/lang/Object;)Lf2/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lf2/l;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ls1/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lf2/p;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lf2/b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lf2/l;

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Lf2/l;

    invoke-interface {p0}, Lf2/i;->h()Lf2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lf2/l;-><init>(Ljava/lang/Object;Lf2/f;)V

    return-object v0
.end method

.method public abstract h()Lf2/f;
.end method
