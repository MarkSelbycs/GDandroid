.class public Landroidx/fragment/app/f$b;
.super Landroidx/fragment/app/f$f;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/f;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Landroidx/fragment/app/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f$b;->d:Landroidx/fragment/app/f;

    iput-object p3, p0, Landroidx/fragment/app/f$b;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroidx/fragment/app/f$b;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p2}, Landroidx/fragment/app/f$f;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/f$f;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/f$b;->b:Landroid/view/ViewGroup;

    new-instance v0, Landroidx/fragment/app/f$b$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/f$b$a;-><init>(Landroidx/fragment/app/f$b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
