.class public interface abstract Ls1/b;
.super Ljava/lang/Object;
.source "OptNullBasicTypeGetter.java"

# interfaces
.implements Ls1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a<",
        "TK;>;"
    }
.end annotation


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ls1/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
