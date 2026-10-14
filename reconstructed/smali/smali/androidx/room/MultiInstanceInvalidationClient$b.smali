.class public final Landroidx/room/MultiInstanceInvalidationClient$b;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/m;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic a:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    .line 2
    invoke-static {p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/room/IMultiInstanceInvalidationService;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroidx/room/MultiInstanceInvalidationClient;->m(Landroidx/room/IMultiInstanceInvalidationService;)V

    .line 4
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-virtual {p1}, Landroidx/room/MultiInstanceInvalidationClient;->d()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-virtual {p2}, Landroidx/room/MultiInstanceInvalidationClient;->i()Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-virtual {p1}, Landroidx/room/MultiInstanceInvalidationClient;->d()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationClient;->g()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$b;->a:Landroidx/room/MultiInstanceInvalidationClient;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/room/MultiInstanceInvalidationClient;->m(Landroidx/room/IMultiInstanceInvalidationService;)V

    return-void
.end method
