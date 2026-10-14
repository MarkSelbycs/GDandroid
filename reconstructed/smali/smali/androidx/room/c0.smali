.class public final Landroidx/room/c0;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelperFactory.kt"

# interfaces
.implements Lf0/h$c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lf0/h$c;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/room/i0$g;


# direct methods
.method public constructor <init>(Lf0/h$c;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallbackExecutor"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallback"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/c0;->a:Lf0/h$c;

    .line 3
    iput-object p2, p0, Landroidx/room/c0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Landroidx/room/c0;->c:Landroidx/room/i0$g;

    return-void
.end method


# virtual methods
.method public a(Lf0/h$b;)Lf0/h;
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/room/b0;

    .line 2
    iget-object v1, p0, Landroidx/room/c0;->a:Lf0/h$c;

    invoke-interface {v1, p1}, Lf0/h$c;->a(Lf0/h$b;)Lf0/h;

    move-result-object p1

    .line 3
    iget-object v1, p0, Landroidx/room/c0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v2, p0, Landroidx/room/c0;->c:Landroidx/room/i0$g;

    .line 5
    invoke-direct {v0, p1, v1, v2}, Landroidx/room/b0;-><init>(Lf0/h;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V

    return-object v0
.end method
