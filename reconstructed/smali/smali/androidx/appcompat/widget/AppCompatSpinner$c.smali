.class public Landroidx/appcompat/widget/AppCompatSpinner$c;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public P:Ljava/lang/CharSequence;

.field public Q:Landroid/widget/ListAdapter;

.field public final R:Landroid/graphics/Rect;

.field public final synthetic S:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->R:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->s(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->A(Z)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->F(I)V

    .line 7
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$c$a;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroidx/appcompat/widget/AppCompatSpinner;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->C(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic J(Landroidx/appcompat/widget/AppCompatSpinner$c;)V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->b()V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/h0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 7
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 8
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v5, v4, Landroidx/appcompat/widget/AppCompatSpinner;->g:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 9
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->Q:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 12
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->v(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 15
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->v(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->v(I)V

    .line 17
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v4}, Landroidx/appcompat/widget/h0;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->n()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    add-int/2addr v1, v0

    .line 19
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->y(I)V

    return-void
.end method

.method public L()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->P:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public M(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Lw/q;->C(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->R:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public N(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->P:Ljava/lang/CharSequence;

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->f()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->K()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->z(I)V

    .line 4
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->b()V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->g()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->G(I)V

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->S:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$c$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$c$b;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$c$c;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$c$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ListPopupWindow;->B(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public r(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->r(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->Q:Landroid/widget/ListAdapter;

    return-void
.end method
