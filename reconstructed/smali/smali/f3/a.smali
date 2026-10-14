.class public abstract Lf3/a;
.super Ljava/lang/Object;
.source "ContinuationImpl.kt"

# interfaces
.implements Ld3/d;
.implements Lf3/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/d<",
        "Ljava/lang/Object;",
        ">;",
        "Lf3/e;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf3/a;->a:Ld3/d;

    return-void
.end method


# virtual methods
.method public D()Lf3/e;
    .locals 2

    iget-object v0, p0, Lf3/a;->a:Ld3/d;

    instance-of v1, v0, Lf3/e;

    if-eqz v1, :cond_0

    check-cast v0, Lf3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final F(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    invoke-static {v0}, Lf3/h;->b(Ld3/d;)V

    .line 2
    check-cast v0, Lf3/a;

    .line 3
    iget-object v1, v0, Lf3/a;->a:Ld3/d;

    invoke-static {v1}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Lf3/a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v2, La3/i;->a:La3/i$a;

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    sget-object v2, La3/i;->a:La3/i$a;

    invoke-static {p1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    :goto_1
    invoke-virtual {v0}, Lf3/a;->M()V

    .line 9
    instance-of v0, v1, Lf3/a;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public H()Ljava/lang/StackTraceElement;
    .locals 1

    invoke-static {p0}, Lf3/g;->d(Lf3/a;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract I(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ld3/d<",
            "*>;)",
            "Ld3/d<",
            "La3/o;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf3/a;->H()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ld3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf3/a;->a:Ld3/d;

    return-object v0
.end method
