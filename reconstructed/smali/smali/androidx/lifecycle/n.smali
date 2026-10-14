.class public Landroidx/lifecycle/n;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/n$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/h;

.field public final b:Landroid/os/Handler;

.field public c:Landroidx/lifecycle/n$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/h;

    invoke-direct {v0, p1}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;)V

    iput-object v0, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/h;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/n;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/d;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/h;

    return-object v0
.end method

.method public b()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/d$b;->ON_START:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/d$b;->ON_CREATE:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/d$b;->ON_STOP:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/d$b;)V

    .line 2
    sget-object v0, Landroidx/lifecycle/d$b;->ON_DESTROY:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public e()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/d$b;->ON_START:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/d$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/n$a;->run()V

    .line 3
    :cond_0
    new-instance v0, Landroidx/lifecycle/n$a;

    iget-object v1, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/h;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/n$a;-><init>(Landroidx/lifecycle/h;Landroidx/lifecycle/d$b;)V

    iput-object v0, p0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n$a;

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/n;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
