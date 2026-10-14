.class public Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/b0;

.field public c:Landroidx/appcompat/widget/b0;

.field public d:Landroidx/appcompat/widget/b0;

.field public e:Landroidx/appcompat/widget/b0;

.field public f:Landroidx/appcompat/widget/b0;

.field public g:Landroidx/appcompat/widget/b0;

.field public final h:Landroidx/appcompat/widget/l;

.field public i:I

.field public j:Landroid/graphics/Typeface;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/k;->i:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    .line 4
    new-instance v0, Landroidx/appcompat/widget/l;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/l;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    return-void
.end method

.method public static d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/f;->r(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/widget/b0;

    invoke-direct {p1}, Landroidx/appcompat/widget/b0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Landroidx/appcompat/widget/b0;->d:Z

    .line 4
    iput-object p0, p1, Landroidx/appcompat/widget/b0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/f;->B(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;[I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/b0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/b0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/b0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/b0;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/b0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/b0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/b0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/b0;

    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/b0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/b0;

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/b0;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V

    .line 10
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/b0;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/b0;)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->f()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->g()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->h()I

    move-result v0

    return v0
.end method

.method public h()[I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->i()[I

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->j()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->m()Z

    move-result v0

    return v0
.end method

.method public k(Landroid/util/AttributeSet;I)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/f;->m()Landroidx/appcompat/widget/f;

    move-result-object v1

    .line 3
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, p2, v3}, Landroidx/appcompat/widget/d0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/d0;

    move-result-object v2

    .line 4
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v4

    .line 5
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v6

    .line 7
    invoke-static {v0, v1, v6}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/b0;

    .line 8
    :cond_0
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v6

    .line 10
    invoke-static {v0, v1, v6}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/b0;

    .line 11
    :cond_1
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v6

    .line 13
    invoke-static {v0, v1, v6}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/b0;

    .line 14
    :cond_2
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v6

    .line 16
    invoke-static {v0, v1, v6}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/b0;

    .line 17
    :cond_3
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 18
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v6

    .line 19
    invoke-static {v0, v1, v6}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/b0;

    .line 20
    :cond_4
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 21
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/d0;->m(II)I

    move-result v6

    .line 22
    invoke-static {v0, v1, v6}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/b0;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/b0;

    .line 23
    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/widget/d0;->u()V

    .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/4 v2, 0x1

    if-eq v4, v5, :cond_7

    .line 26
    sget-object v6, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, v4, v6}, Landroidx/appcompat/widget/d0;->r(Landroid/content/Context;I[I)Landroidx/appcompat/widget/d0;

    move-result-object v4

    if-nez v1, :cond_6

    .line 27
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 28
    invoke-virtual {v4, v6, v3}, Landroidx/appcompat/widget/d0;->a(IZ)Z

    move-result v6

    move v7, v2

    goto :goto_0

    :cond_6
    move v6, v3

    move v7, v6

    .line 29
    :goto_0
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/k;->u(Landroid/content/Context;Landroidx/appcompat/widget/d0;)V

    .line 30
    invoke-virtual {v4}, Landroidx/appcompat/widget/d0;->u()V

    goto :goto_1

    :cond_7
    move v6, v3

    move v7, v6

    .line 31
    :goto_1
    sget-object v4, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, p1, v4, p2, v3}, Landroidx/appcompat/widget/d0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/d0;

    move-result-object v4

    if-nez v1, :cond_8

    .line 32
    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 33
    invoke-virtual {v4, v8, v3}, Landroidx/appcompat/widget/d0;->a(IZ)Z

    move-result v6

    goto :goto_2

    :cond_8
    move v2, v7

    .line 34
    :goto_2
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 35
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 36
    invoke-virtual {v4, v7, v5}, Landroidx/appcompat/widget/d0;->e(II)I

    move-result v7

    if-nez v7, :cond_9

    .line 37
    iget-object v7, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    :cond_9
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/k;->u(Landroid/content/Context;Landroidx/appcompat/widget/d0;)V

    .line 39
    invoke-virtual {v4}, Landroidx/appcompat/widget/d0;->u()V

    if-nez v1, :cond_a

    if-eqz v2, :cond_a

    .line 40
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/k;->o(Z)V

    .line 41
    :cond_a
    iget-object v1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    if-eqz v1, :cond_b

    .line 42
    iget-object v2, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    iget v4, p0, Landroidx/appcompat/widget/k;->i:I

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 43
    :cond_b
    iget-object v1, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/widget/l;->n(Landroid/util/AttributeSet;I)V

    .line 44
    sget-boolean p2, Landroidx/core/widget/b;->j:Z

    if-eqz p2, :cond_d

    .line 45
    iget-object p2, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {p2}, Landroidx/appcompat/widget/l;->j()I

    move-result p2

    if-eqz p2, :cond_d

    .line 46
    iget-object p2, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    .line 47
    invoke-virtual {p2}, Landroidx/appcompat/widget/l;->i()[I

    move-result-object p2

    .line 48
    array-length v1, p2

    if-lez v1, :cond_d

    .line 49
    iget-object v1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    .line 50
    iget-object p2, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    .line 51
    invoke-virtual {v1}, Landroidx/appcompat/widget/l;->g()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    .line 52
    invoke-virtual {v2}, Landroidx/appcompat/widget/l;->f()I

    move-result v2

    iget-object v4, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    .line 53
    invoke-virtual {v4}, Landroidx/appcompat/widget/l;->h()I

    move-result v4

    .line 54
    invoke-virtual {p2, v1, v2, v4, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_3

    .line 55
    :cond_c
    iget-object v1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p2, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 56
    :cond_d
    :goto_3
    sget-object p2, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/d0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/d0;

    move-result-object p1

    .line 57
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {p1, p2, v5}, Landroidx/appcompat/widget/d0;->e(II)I

    move-result p2

    .line 58
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {p1, v0, v5}, Landroidx/appcompat/widget/d0;->e(II)I

    move-result v0

    .line 59
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {p1, v1, v5}, Landroidx/appcompat/widget/d0;->e(II)I

    move-result v1

    .line 60
    invoke-virtual {p1}, Landroidx/appcompat/widget/d0;->u()V

    if-eq p2, v5, :cond_e

    .line 61
    iget-object p1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroidx/core/widget/k;->e(Landroid/widget/TextView;I)V

    :cond_e
    if-eq v0, v5, :cond_f

    .line 62
    iget-object p1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroidx/core/widget/k;->f(Landroid/widget/TextView;I)V

    :cond_f
    if-eq v1, v5, :cond_10

    .line 63
    iget-object p1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {p1, v1}, Landroidx/core/widget/k;->g(Landroid/widget/TextView;I)V

    :cond_10
    return-void
.end method

.method public l(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/k;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/k;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public m(ZIIII)V
    .locals 0

    .line 1
    sget-boolean p1, Landroidx/core/widget/b;->j:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/k;->c()V

    :cond_0
    return-void
.end method

.method public n(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/d0;->r(Landroid/content/Context;I[I)Landroidx/appcompat/widget/d0;

    move-result-object p2

    .line 2
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/d0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/k;->o(Z)V

    .line 4
    :cond_0
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/d0;->e(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/k;->u(Landroid/content/Context;Landroidx/appcompat/widget/d0;)V

    .line 8
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->u()V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/k;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public p(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/l;->o(IIII)V

    return-void
.end method

.method public q([II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/l;->p([II)V

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/l;->q(I)V

    return-void
.end method

.method public s(IF)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/core/widget/b;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/k;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/k;->t(IF)V

    :cond_0
    return-void
.end method

.method public final t(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/l;->s(IF)V

    return-void
.end method

.method public final u(Landroid/content/Context;Landroidx/appcompat/widget/d0;)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/k;->i:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/d0;->j(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/k;->i:I

    .line 2
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 3
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iput-boolean v2, p0, Landroidx/appcompat/widget/k;->k:Z

    .line 6
    invoke-virtual {p2, p1, v3}, Landroidx/appcompat/widget/d0;->j(II)I

    move-result p1

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    .line 11
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/d0;->q(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    .line 12
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v1, Landroidx/appcompat/widget/k$a;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/k$a;-><init>(Landroidx/appcompat/widget/k;Ljava/lang/ref/WeakReference;)V

    .line 15
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/k;->i:I

    invoke-virtual {p2, v0, p1, v1}, Landroidx/appcompat/widget/d0;->i(IILn/d$a;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_7

    move v2, v3

    .line 16
    :cond_7
    iput-boolean v2, p0, Landroidx/appcompat/widget/k;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_9

    .line 18
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/d0;->n(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 19
    iget p2, p0, Landroidx/appcompat/widget/k;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/k;->j:Landroid/graphics/Typeface;

    :cond_9
    return-void
.end method
