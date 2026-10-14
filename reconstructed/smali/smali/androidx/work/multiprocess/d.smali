.class public final Landroidx/work/multiprocess/d;
.super Ljava/lang/Object;
.source "RemoteClientUtils.java"


# static fields
.field public static final a:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "[B",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/d$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/d$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/d;->a:Li/a;

    return-void
.end method

.method public static a(Lr2/a;Li/a;Ljava/util/concurrent/Executor;)Lr2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lr2/a<",
            "TI;>;",
            "Li/a<",
            "TI;TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr2/a<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/work/multiprocess/d$b;

    invoke-direct {v1, p0, p1, v0}, Landroidx/work/multiprocess/d$b;-><init>(Lr2/a;Li/a;Lb1/c;)V

    invoke-interface {p0, v1, p2}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
