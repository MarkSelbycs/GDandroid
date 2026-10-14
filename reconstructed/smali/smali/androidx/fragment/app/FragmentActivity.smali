.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$b;,
        Landroidx/fragment/app/FragmentActivity$c;
    }
.end annotation


# instance fields
.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/c;

.field public e:Landroidx/lifecycle/q;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Lj/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentActivity$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroidx/fragment/app/FragmentActivity$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Landroidx/fragment/app/c;->b(Landroidx/fragment/app/d;)Landroidx/fragment/app/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->h:Z

    return-void
.end method

.method public static b(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroidx/fragment/app/e;Landroidx/lifecycle/d$c;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->e()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/d;->a()Landroidx/lifecycle/d$c;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/d$c;->d:Landroidx/lifecycle/d$c;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/d$c;->b(Landroidx/lifecycle/d$c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->X:Landroidx/lifecycle/h;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/h;->h(Landroidx/lifecycle/d$c;)V

    const/4 v0, 0x1

    .line 5
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->r0()Landroidx/fragment/app/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, p1}, Landroidx/fragment/app/FragmentActivity;->e(Landroidx/fragment/app/e;Landroidx/lifecycle/d$c;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v0}, Lj/h;->t()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    iget v2, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    invoke-virtual {v0, v2}, Lj/h;->j(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Lj/h;->m(ILjava/lang/Object;)V

    .line 6
    iget p1, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    return v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/c;->w(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/e;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/d$c;->c:Landroidx/lifecycle/d$c;

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->e(Landroidx/fragment/app/e;Landroidx/lifecycle/d$c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->h:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lb0/a;->b(Landroidx/lifecycle/g;)Lb0/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lb0/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->u()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/e;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->p()V

    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$c;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/d;
    .locals 1

    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/e;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->u()Landroidx/fragment/app/e;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Lb0/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lb0/a;->b(Landroidx/lifecycle/g;)Lb0/a;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/q;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$c;->b:Landroidx/lifecycle/q;

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->v()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v1, v0}, Lj/h;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v2, v0}, Lj/h;->p(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/c;->t(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 7
    invoke-virtual {v2, p1, p2, p3}, Landroidx/fragment/app/Fragment;->M(IILandroid/content/Intent;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    invoke-static {}, Landroidx/core/app/a;->j()Landroidx/core/app/a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/core/app/a$c;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->u()Landroidx/fragment/app/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/e;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->v()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->d(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, v0, Landroidx/fragment/app/FragmentActivity$c;->b:Landroidx/lifecycle/q;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    if-nez v3, :cond_0

    .line 5
    iput-object v2, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "android:support:fragments"

    .line 6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 7
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity$c;->c:Landroidx/fragment/app/g;

    :cond_1
    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/c;->x(Landroid/os/Parcelable;Landroidx/fragment/app/g;)V

    const-string v0, "android:support:next_request_index"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    const-string v0, "android:support:request_indicies"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 12
    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Lj/h;

    array-length v3, v0

    invoke-direct {v1, v3}, Lj/h;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    move v1, v2

    .line 14
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 15
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Lj/h;->m(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    if-nez p1, :cond_5

    .line 18
    new-instance p1, Lj/h;

    invoke-direct {p1}, Lj/h;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    .line 19
    iput v2, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    .line 20
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->f()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/c;->g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    invoke-virtual {v0}, Landroidx/lifecycle/q;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->h()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->i()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/c;->e(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/c;->k(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->j(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->v()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/c;->l(Landroid/view/Menu;)V

    .line 2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->g:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->g()V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->m()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->n(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->g()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->s()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->f(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/c;->o(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->v()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v2, v0}, Lj/h;->g(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v3, v0}, Lj/h;->p(I)V

    const-string v0, "FragmentActivity"

    if-nez v2, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/c;->t(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    and-int/2addr p1, v1

    .line 7
    invoke-virtual {v3, p1, p2, p3}, Landroidx/fragment/app/Fragment;->k0(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->g:Z

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->s()Z

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->y()Landroidx/fragment/app/g;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Landroidx/fragment/app/FragmentActivity$c;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentActivity$c;-><init>()V

    .line 5
    iput-object v0, v2, Landroidx/fragment/app/FragmentActivity$c;->a:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Landroidx/lifecycle/q;

    iput-object v0, v2, Landroidx/fragment/app/FragmentActivity$c;->b:Landroidx/lifecycle/q;

    .line 7
    iput-object v1, v2, Landroidx/fragment/app/FragmentActivity$c;->c:Landroidx/fragment/app/g;

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->d()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->z()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v0}, Lj/h;->t()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->q:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v0}, Lj/h;->t()I

    move-result v0

    new-array v0, v0, [I

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v1}, Lj/h;->t()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v3}, Lj/h;->t()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 10
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v3, v2}, Lj/h;->k(I)I

    move-result v3

    aput v3, v0, v2

    .line 11
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->r:Lj/h;

    invoke-virtual {v3, v2}, Lj/h;->u(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "android:support:request_indicies"

    .line 12
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->h:Z

    .line 3
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->c()V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->v()V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->s()Z

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->q()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->v()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->h:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->d()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->r()V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/k;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/a;->l(Landroid/app/Activity;Landroidx/core/app/k;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/k;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/a;->m(Landroid/app/Activity;Landroidx/core/app/k;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->p:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->p:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->p:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0, p2, v1, p4}, Landroidx/core/app/a;->n(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->p:Z

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->a(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    .line 7
    invoke-static {p0, p2, p1, p4}, Landroidx/core/app/a;->n(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->p:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->p:Z

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->o:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    .line 3
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->o:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    .line 6
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v9, p0

    move v0, p3

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v9, Landroidx/fragment/app/FragmentActivity;->o:Z

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    :try_start_0
    invoke-static/range {v1 .. v8}, Landroidx/core/app/a;->o(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v10, v9, Landroidx/fragment/app/FragmentActivity;->o:Z

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->a(Landroidx/fragment/app/Fragment;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 6
    invoke-static/range {v1 .. v8}, Landroidx/core/app/a;->o(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iput-boolean v10, v9, Landroidx/fragment/app/FragmentActivity;->o:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Landroidx/fragment/app/FragmentActivity;->o:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a;->i(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a;->k(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a;->p(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/FragmentActivity;->b(I)V

    :cond_0
    return-void
.end method
