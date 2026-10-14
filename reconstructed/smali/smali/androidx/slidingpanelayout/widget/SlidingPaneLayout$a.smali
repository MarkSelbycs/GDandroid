.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;
.super Lw/a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final synthetic e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lw/a;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lw/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Landroid/view/View;Lx/c;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lx/c;->G(Lx/c;)Lx/c;

    move-result-object v0

    .line 2
    invoke-super {p0, p1, v0}, Lw/a;->g(Landroid/view/View;Lx/c;)V

    .line 3
    invoke-virtual {p0, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->n(Lx/c;Lx/c;)V

    .line 4
    invoke-virtual {v0}, Lx/c;->I()V

    .line 5
    const-class v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lx/c;->O(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2, p1}, Lx/c;->f0(Landroid/view/View;)V

    .line 7
    invoke-static {p1}, Lw/q;->s(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    .line 8
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lx/c;->b0(Landroid/view/View;)V

    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 11
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->o(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Lw/q;->V(Landroid/view/View;I)V

    .line 14
    invoke-virtual {p2, v1}, Lx/c;->c(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->o(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lw/a;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Lx/c;Lx/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->d:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p2, v0}, Lx/c;->i(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1, v0}, Lx/c;->L(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p2, v0}, Lx/c;->j(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v0}, Lx/c;->M(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p2}, Lx/c;->F()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->h0(Z)V

    .line 7
    invoke-virtual {p2}, Lx/c;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/c;->Z(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p2}, Lx/c;->k()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/c;->O(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p2}, Lx/c;->m()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/c;->S(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lx/c;->y()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->T(Z)V

    .line 11
    invoke-virtual {p2}, Lx/c;->x()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->P(Z)V

    .line 12
    invoke-virtual {p2}, Lx/c;->z()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->U(Z)V

    .line 13
    invoke-virtual {p2}, Lx/c;->A()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->V(Z)V

    .line 14
    invoke-virtual {p2}, Lx/c;->u()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->K(Z)V

    .line 15
    invoke-virtual {p2}, Lx/c;->E()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->e0(Z)V

    .line 16
    invoke-virtual {p2}, Lx/c;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->X(Z)V

    .line 17
    invoke-virtual {p2}, Lx/c;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lx/c;->a(I)V

    .line 18
    invoke-virtual {p2}, Lx/c;->o()I

    move-result p2

    invoke-virtual {p1, p2}, Lx/c;->Y(I)V

    return-void
.end method

.method public o(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->e:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
