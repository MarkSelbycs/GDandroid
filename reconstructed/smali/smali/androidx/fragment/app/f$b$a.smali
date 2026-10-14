.class public Landroidx/fragment/app/f$b$a;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/f$b;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/f$b;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f$b$a;->a:Landroidx/fragment/app/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f$b$a;->a:Landroidx/fragment/app/f$b;

    iget-object v0, v0, Landroidx/fragment/app/f$b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/f$b$a;->a:Landroidx/fragment/app/f$b;

    iget-object v0, v0, Landroidx/fragment/app/f$b;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/f$b$a;->a:Landroidx/fragment/app/f$b;

    iget-object v1, v0, Landroidx/fragment/app/f$b;->d:Landroidx/fragment/app/f;

    iget-object v2, v0, Landroidx/fragment/app/f$b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->z()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
