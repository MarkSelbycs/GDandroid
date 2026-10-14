.class public final Lq0/m;
.super Ljava/lang/Object;
.source "ListenableFuture.kt"

# interfaces
.implements Lr2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lt3/h1;

.field public final b:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/h1;Lb1/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/h1;",
            "Lb1/c<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underlying"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq0/m;->a:Lt3/h1;

    .line 3
    iput-object p2, p0, Lq0/m;->b:Lb1/c;

    .line 4
    new-instance p2, Lq0/m$a;

    invoke-direct {p2, p0}, Lq0/m$a;-><init>(Lq0/m;)V

    invoke-interface {p1, p2}, Lt3/h1;->X(Ll3/l;)Lt3/r0;

    return-void
.end method

.method public synthetic constructor <init>(Lt3/h1;Lb1/c;ILm3/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object p2

    const-string p3, "create()"

    invoke-static {p2, p3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lq0/m;-><init>(Lt3/h1;Lb1/c;)V

    return-void
.end method

.method public static final synthetic b(Lq0/m;)Lb1/c;
    .locals 0

    iget-object p0, p0, Lq0/m;->b:Lb1/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0, p1, p2}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0, p1}, Lb1/a;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0, p1, p2, p3}, Lb1/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lq0/m;->b:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isDone()Z

    move-result v0

    return v0
.end method
