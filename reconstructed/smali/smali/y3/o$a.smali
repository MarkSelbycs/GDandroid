.class public final Ly3/o$a;
.super Ljava/lang/Object;
.source "LimitedDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final synthetic b:Ly3/o;


# direct methods
.method public constructor <init>(Ly3/o;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ly3/o$a;->b:Ly3/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly3/o$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Ly3/o$a;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    sget-object v2, Ld3/h;->a:Ld3/h;

    invoke-static {v2, v1}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    iget-object v1, p0, Ly3/o$a;->b:Ly3/o;

    invoke-static {v1}, Ly3/o;->s(Ly3/o;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Ly3/o$a;->a:Ljava/lang/Runnable;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Ly3/o$a;->b:Ly3/o;

    invoke-static {v1}, Ly3/o;->r(Ly3/o;)Lt3/b0;

    move-result-object v1

    iget-object v2, p0, Ly3/o$a;->b:Ly3/o;

    invoke-virtual {v1, v2}, Lt3/b0;->n(Ld3/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Ly3/o$a;->b:Ly3/o;

    invoke-static {v0}, Ly3/o;->r(Ly3/o;)Lt3/b0;

    move-result-object v0

    iget-object v1, p0, Ly3/o$a;->b:Ly3/o;

    invoke-virtual {v0, v1, p0}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method
