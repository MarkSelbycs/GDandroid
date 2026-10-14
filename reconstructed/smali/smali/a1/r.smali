.class public abstract La1/r;
.super Ljava/lang/Object;
.source "StatusRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, La1/r;->a:Lb1/c;

    return-void
.end method

.method public static a(Lr0/p0;Lq0/a0;)La1/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/p0;",
            "Lq0/a0;",
            ")",
            "La1/r<",
            "Ljava/util/List<",
            "Lq0/y;",
            ">;>;"
        }
    .end annotation

    new-instance v0, La1/r$a;

    invoke-direct {v0, p0, p1}, La1/r$a;-><init>(Lr0/p0;Lq0/a0;)V

    return-object v0
.end method


# virtual methods
.method public b()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, La1/r;->a:Lb1/c;

    return-object v0
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, La1/r;->c()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, La1/r;->a:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->p(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, La1/r;->a:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
