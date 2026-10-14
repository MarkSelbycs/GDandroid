.class public Lr3/e;
.super Lr3/d;
.source "Sequences.kt"


# direct methods
.method public static final a(Ljava/util/Iterator;)Lr3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lr3/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr3/e$a;

    invoke-direct {v0, p0}, Lr3/e$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lr3/e;->b(Lr3/b;)Lr3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lr3/b;)Lr3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr3/b<",
            "+TT;>;)",
            "Lr3/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lr3/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lr3/a;

    invoke-direct {v0, p0}, Lr3/a;-><init>(Lr3/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
