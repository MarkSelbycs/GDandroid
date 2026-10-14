.class public final Lq0/t$a;
.super Lq0/b0$a;
.source "PeriodicWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq0/b0$a<",
        "Lq0/t$a;",
        "Lq0/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/c;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatIntervalTimeUnit"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lq0/b0$a;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Lq0/b0$a;->g()Lz0/u;

    move-result-object p1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lz0/u;->p(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lq0/b0;
    .locals 1

    invoke-virtual {p0}, Lq0/t$a;->j()Lq0/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lq0/b0$a;
    .locals 1

    invoke-virtual {p0}, Lq0/t$a;->k()Lq0/t$a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lq0/t;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq0/b0$a;->c()Z

    move-result v0

    const/4 v1, 0x1

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
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lq0/b0$a;->g()Lz0/u;

    move-result-object v0

    iget-boolean v0, v0, Lz0/u;->q:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lq0/t;

    invoke-direct {v0, p0}, Lq0/t;-><init>(Lq0/t$a;)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lq0/t$a;
    .locals 0

    return-object p0
.end method
