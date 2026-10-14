.class public final Lq0/m$a;
.super Lm3/l;
.source "ListenableFuture.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq0/m;-><init>(Lt3/h1;Lb1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Ljava/lang/Throwable;",
        "La3/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/m<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/m<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq0/m$a;->b:Lq0/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lq0/m$a;->b:Lq0/m;

    invoke-static {p1}, Lq0/m;->b(Lq0/m;)Lb1/c;

    move-result-object p1

    invoke-virtual {p1}, Lb1/a;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lq0/m$a;->b:Lq0/m;

    invoke-static {p1}, Lq0/m;->b(Lq0/m;)Lb1/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb1/a;->cancel(Z)Z

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lq0/m$a;->b:Lq0/m;

    invoke-static {v0}, Lq0/m;->b(Lq0/m;)Lb1/c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq0/m$a;->b(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
