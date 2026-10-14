.class public final Landroidx/room/MultiInstanceInvalidationClient$callback$1;
.super Landroidx/room/IMultiInstanceInvalidationCallback$Stub;
.source "MultiInstanceInvalidationClient.kt"


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
.field public final synthetic d:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->d:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->onInvalidation$lambda$0(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    return-void
.end method

.method private static final onInvalidation$lambda$0(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tables"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->e()Landroidx/room/m;

    move-result-object p0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/room/m;->j([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidation([Ljava/lang/String;)V
    .locals 3

    const-string v0, "tables"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->d:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationClient;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->d:Landroidx/room/MultiInstanceInvalidationClient;

    new-instance v2, Landroidx/room/p;

    invoke-direct {v2, v1, p1}, Landroidx/room/p;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
