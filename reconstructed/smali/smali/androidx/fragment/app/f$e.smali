.class public Landroidx/fragment/app/f$e;
.super Landroidx/fragment/app/f$f;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/fragment/app/f$f;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/f$e;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f$e;->b:Landroid/view/View;

    invoke-static {v0}, Lw/q;->C(Landroid/view/View;)Z

    move-result v0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/f$e;->b:Landroid/view/View;

    new-instance v1, Landroidx/fragment/app/f$e$a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/f$e$a;-><init>(Landroidx/fragment/app/f$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/f$f;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method
