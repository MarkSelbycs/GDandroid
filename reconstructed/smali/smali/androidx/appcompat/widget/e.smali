.class public Landroidx/appcompat/widget/e;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field public final a:Landroid/widget/CompoundButton;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/e;->d:Z

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/e;->e:Z

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->e:Z

    if-eqz v1, :cond_4

    .line 3
    :cond_0
    invoke-static {v0}, Lp/a;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->d:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lp/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->e:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lp/a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public b(I)I
    .locals 0

    return p1
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lb/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_0
    sget p2, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 10
    invoke-static {v0, p2}, Landroidx/core/widget/c;->b(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CompoundButton;

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x0

    .line 14
    invoke-static {p2, v1}, Landroidx/appcompat/widget/o;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 15
    invoke-static {v0, p2}, Landroidx/core/widget/c;->c(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/e;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/e;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/e;->f:Z

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/e;->d:Z

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method public h(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/e;->e:Z

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method
