.class public final Lq0/q$a;
.super Lq0/b0$a;
.source "OneTimeWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq0/b0$a<",
        "Lq0/q$a;",
        "Lq0/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lq0/b0$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lq0/b0;
    .locals 1

    invoke-virtual {p0}, Lq0/q$a;->j()Lq0/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lq0/b0$a;
    .locals 1

    invoke-virtual {p0}, Lq0/q$a;->k()Lq0/q$a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lq0/q;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq0/b0$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lq0/b0$a;->g()Lz0/u;

    move-result-object v0

    iget-object v0, v0, Lz0/u;->j:Lq0/d;

    invoke-virtual {v0}, Lq0/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lq0/q;

    invoke-direct {v0, p0}, Lq0/q;-><init>(Lq0/q$a;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lq0/q$a;
    .locals 0

    return-object p0
.end method
