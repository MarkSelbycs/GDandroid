.class public abstract Landroidx/work/multiprocess/a;
.super Ljava/lang/Object;
.source "ListenableCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

.field public final c:Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/a<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/multiprocess/IWorkManagerImplCallback;",
            "Lr2/a<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/a;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Landroidx/work/multiprocess/a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 4
    iput-object p3, p0, Landroidx/work/multiprocess/a;->c:Lr2/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Landroidx/work/multiprocess/a;->c:Lr2/a;

    new-instance v1, Landroidx/work/multiprocess/a$a;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/a$a;-><init>(Landroidx/work/multiprocess/a;)V

    iget-object v2, p0, Landroidx/work/multiprocess/a;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abstract b(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)[B"
        }
    .end annotation
.end method
