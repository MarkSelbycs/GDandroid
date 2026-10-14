.class public Lf/e$a;
.super Lf/d$a;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public f:Lw/b$b;

.field public final synthetic g:Lf/e;


# direct methods
.method public constructor <init>(Lf/e;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e$a;->g:Lf/e;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lf/d$a;-><init>(Lf/d;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lf/d$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lf/d$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lf/d$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public j(Lw/b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/e$a;->f:Lw/b$b;

    .line 2
    iget-object v0, p0, Lf/d$a;->d:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e$a;->f:Lw/b$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lw/b$b;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
