.class public Landroidx/lifecycle/m;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/m$b;,
        Landroidx/lifecycle/m$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/m$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/lifecycle/d$b;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/lifecycle/i;

    invoke-interface {p0}, Landroidx/lifecycle/i;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/h;->f(Landroidx/lifecycle/d$b;)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p0, Landroidx/lifecycle/g;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroidx/lifecycle/g;

    invoke-interface {p0}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/lifecycle/h;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Landroidx/lifecycle/h;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/h;->f(Landroidx/lifecycle/d$b;)V

    :cond_1
    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/m$b;->registerIn(Landroid/app/Activity;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/m;

    invoke-direct {v2}, Landroidx/lifecycle/m;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/d$b;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/m;->a(Landroid/app/Activity;Landroidx/lifecycle/d$b;)V

    :cond_0
    return-void
.end method

.method public final c(Landroidx/lifecycle/m$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/m$a;->onCreate()V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/lifecycle/m$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/m$a;->a()V

    :cond_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/m$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/m$a;->b()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/m;->a:Landroidx/lifecycle/m$a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m;->c(Landroidx/lifecycle/m$a;)V

    .line 3
    sget-object p1, Landroidx/lifecycle/d$b;->ON_CREATE:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m;->b(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Landroidx/lifecycle/d$b;->ON_DESTROY:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->b(Landroidx/lifecycle/d$b;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/lifecycle/m;->a:Landroidx/lifecycle/m$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Landroidx/lifecycle/d$b;->ON_PAUSE:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->b(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/m;->a:Landroidx/lifecycle/m$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->d(Landroidx/lifecycle/m$a;)V

    .line 3
    sget-object v0, Landroidx/lifecycle/d$b;->ON_RESUME:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->b(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/m;->a:Landroidx/lifecycle/m$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->e(Landroidx/lifecycle/m$a;)V

    .line 3
    sget-object v0, Landroidx/lifecycle/d$b;->ON_START:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->b(Landroidx/lifecycle/d$b;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Landroidx/lifecycle/d$b;->ON_STOP:Landroidx/lifecycle/d$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/m;->b(Landroidx/lifecycle/d$b;)V

    return-void
.end method
