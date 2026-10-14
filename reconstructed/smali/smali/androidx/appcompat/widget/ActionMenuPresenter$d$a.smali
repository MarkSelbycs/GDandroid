.class public Landroidx/appcompat/widget/ActionMenuPresenter$d$a;
.super Landroidx/appcompat/widget/r;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public final synthetic p:Landroidx/appcompat/widget/ActionMenuPresenter$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$d;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->p:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iput-object p3, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/r;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->p:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->E:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->c()Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->p:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->K()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->p:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->B()Z

    const/4 v0, 0x1

    return v0
.end method
