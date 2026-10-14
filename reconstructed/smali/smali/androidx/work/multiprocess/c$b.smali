.class public Landroidx/work/multiprocess/c$b;
.super Ljava/lang/Object;
.source "ListenableWorkerImplClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Landroidx/work/multiprocess/IListenableWorkerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ListenableWorkerImplSession"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/c$b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/c$b;->b:Ljava/lang/String;

    const-string v1, "Binding died"

    invoke-virtual {p1, v0, v1}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/c$b;->b:Ljava/lang/String;

    const-string v2, "Unable to bind to service"

    invoke-virtual {v0, v1, v2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/c$b;->b:Ljava/lang/String;

    const-string v1, "Service connected"

    invoke-virtual {p1, v0, v1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IListenableWorkerImpl;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    invoke-virtual {p2, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/c$b;->b:Ljava/lang/String;

    const-string v1, "Service disconnected"

    invoke-virtual {p1, v0, v1}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/work/multiprocess/c$b;->a:Lb1/c;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    return-void
.end method
