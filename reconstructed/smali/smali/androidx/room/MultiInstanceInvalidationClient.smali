.class public final Landroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/room/m;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroid/content/Context;

.field public e:I

.field public f:Landroidx/room/m$c;

.field public g:Landroidx/room/IMultiInstanceInvalidationService;

.field public final h:Landroidx/room/IMultiInstanceInvalidationCallback;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroid/content/ServiceConnection;

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/m;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceIntent"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidationTracker"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/m;

    .line 4
    iput-object p5, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->d:Landroid/content/Context;

    .line 6
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$callback$1;

    invoke-direct {p2, p0}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$b;

    invoke-direct {p2, p0}, Landroidx/room/MultiInstanceInvalidationClient$b;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroid/content/ServiceConnection;

    .line 9
    new-instance v0, Landroidx/room/n;

    invoke-direct {v0, p0}, Landroidx/room/n;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Landroidx/room/o;

    invoke-direct {v0, p0}, Landroidx/room/o;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->l:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p4}, Landroidx/room/m;->h()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    new-array p5, p5, [Ljava/lang/String;

    .line 12
    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p4, p5}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p4, [Ljava/lang/String;

    new-instance p5, Landroidx/room/MultiInstanceInvalidationClient$a;

    invoke-direct {p5, p0, p4}, Landroidx/room/MultiInstanceInvalidationClient$a;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Landroidx/room/MultiInstanceInvalidationClient;->l(Landroidx/room/m$c;)V

    const/4 p4, 0x1

    .line 14
    invoke-virtual {p1, p3, p2, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static synthetic a(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/MultiInstanceInvalidationClient;->n(Landroidx/room/MultiInstanceInvalidationClient;)V

    return-void
.end method

.method public static synthetic b(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/MultiInstanceInvalidationClient;->k(Landroidx/room/MultiInstanceInvalidationClient;)V

    return-void
.end method

.method public static final k(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/m;

    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->f()Landroidx/room/m$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/room/m;->m(Landroidx/room/m$c;)V

    return-void
.end method

.method public static final n(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Landroidx/room/IMultiInstanceInvalidationCallback;

    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/room/IMultiInstanceInvalidationService;->registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:I

    .line 3
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/m;

    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->f()Landroidx/room/m$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/room/m;->b(Landroidx/room/m$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ROOM"

    const-string v1, "Cannot register multi-instance invalidation callback"

    .line 4
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:I

    return v0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final e()Landroidx/room/m;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/m;

    return-object v0
.end method

.method public final f()Landroidx/room/m$c;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:Landroidx/room/m$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "observer"

    invoke-static {v0}, Lm3/k;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final h()Landroidx/room/IMultiInstanceInvalidationService;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/IMultiInstanceInvalidationService;

    return-object v0
.end method

.method public final i()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final j()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final l(Landroidx/room/m$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:Landroidx/room/m$c;

    return-void
.end method

.method public final m(Landroidx/room/IMultiInstanceInvalidationService;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method
