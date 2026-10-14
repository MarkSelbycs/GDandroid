.class public Lw/w$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw/w;->i(Landroid/view/View;Lw/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw/x;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lw/w;


# direct methods
.method public constructor <init>(Lw/w;Lw/x;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lw/w$a;->c:Lw/w;

    iput-object p2, p0, Lw/w$a;->a:Lw/x;

    iput-object p3, p0, Lw/w$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lw/w$a;->a:Lw/x;

    iget-object v0, p0, Lw/w$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lw/x;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lw/w$a;->a:Lw/x;

    iget-object v0, p0, Lw/w$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lw/x;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lw/w$a;->a:Lw/x;

    iget-object v0, p0, Lw/w$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lw/x;->b(Landroid/view/View;)V

    return-void
.end method
