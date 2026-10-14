.class public Landroidx/work/multiprocess/a$a;
.super Ljava/lang/Object;
.source "ListenableCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/multiprocess/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/multiprocess/a<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ListenableCallbackRbl"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/multiprocess/a<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/a$a;->a:Landroidx/work/multiprocess/a;

    return-void
.end method

.method public static a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/a$a;->b:Ljava/lang/String;

    const-string v1, "Unable to notify failures in operation"

    invoke-virtual {p1, v0, v1, p0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static b(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback;->onSuccess([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/a$a;->b:Ljava/lang/String;

    const-string v1, "Unable to notify successful operation"

    invoke-virtual {p1, v0, v1, p0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/a$a;->a:Landroidx/work/multiprocess/a;

    iget-object v0, v0, Landroidx/work/multiprocess/a;->c:Lr2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/a$a;->a:Landroidx/work/multiprocess/a;

    iget-object v2, v1, Landroidx/work/multiprocess/a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-virtual {v1, v0}, Landroidx/work/multiprocess/a;->b(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/work/multiprocess/a$a;->b(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/a$a;->a:Landroidx/work/multiprocess/a;

    iget-object v1, v1, Landroidx/work/multiprocess/a;->b:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-static {v1, v0}, Landroidx/work/multiprocess/a$a;->a(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
