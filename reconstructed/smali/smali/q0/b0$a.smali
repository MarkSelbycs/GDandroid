.class public abstract Lq0/b0$a;
.super Ljava/lang/Object;
.source "WorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lq0/b0$a<",
        "TB;*>;W:",
        "Lq0/b0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/util/UUID;

.field public d:Lz0/u;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq0/b0$a;->a:Ljava/lang/Class;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lq0/b0$a;->c:Ljava/util/UUID;

    .line 4
    new-instance v0, Lz0/u;

    iget-object v1, p0, Lq0/b0$a;->c:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "workerClass.name"

    invoke-static {v2, v3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lz0/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lq0/b0$a;->d:Lz0/u;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lb3/j0;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lq0/b0$a;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lq0/b0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq0/b0$a;->b()Lq0/b0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lq0/b0$a;->d:Lz0/u;

    iget-object v1, v1, Lz0/u;->j:Lq0/d;

    .line 3
    invoke-virtual {v1}, Lq0/d;->e()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lq0/d;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lq0/d;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lq0/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 7
    :goto_1
    iget-object v2, p0, Lq0/b0$a;->d:Lz0/u;

    iget-boolean v5, v2, Lz0/u;->q:Z

    if-eqz v5, :cond_5

    xor-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 8
    iget-wide v1, v2, Lz0/u;->g:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lq0/b0$a;->h(Ljava/util/UUID;)Lq0/b0$a;

    return-object v0
.end method

.method public abstract b()Lq0/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lq0/b0$a;->b:Z

    return v0
.end method

.method public final d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lq0/b0$a;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/b0$a;->e:Ljava/util/Set;

    return-object v0
.end method

.method public abstract f()Lq0/b0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final g()Lz0/u;
    .locals 1

    iget-object v0, p0, Lq0/b0$a;->d:Lz0/u;

    return-object v0
.end method

.method public final h(Ljava/util/UUID;)Lq0/b0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")TB;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lq0/b0$a;->c:Ljava/util/UUID;

    .line 2
    new-instance v0, Lz0/u;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id.toString()"

    invoke-static {p1, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lq0/b0$a;->d:Lz0/u;

    invoke-direct {v0, p1, v1}, Lz0/u;-><init>(Ljava/lang/String;Lz0/u;)V

    iput-object v0, p0, Lq0/b0$a;->d:Lz0/u;

    .line 3
    invoke-virtual {p0}, Lq0/b0$a;->f()Lq0/b0$a;

    move-result-object p1

    return-object p1
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)Lq0/b0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq0/b0$a;->d:Lz0/u;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Lz0/u;->g:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p1

    iget-object p1, p0, Lq0/b0$a;->d:Lz0/u;

    iget-wide p1, p1, Lz0/u;->g:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lq0/b0$a;->f()Lq0/b0$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
