.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ll/g;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public o:I

.field public p:Landroidx/constraintlayout/widget/a;

.field public q:I

.field public r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ll/g;

    invoke-direct {p1}, Ll/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 7
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, 0x7

    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 17
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 21
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 26
    new-instance p1, Ll/g;

    invoke-direct {p1}, Ll/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 28
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const p3, 0x7fffffff

    .line 29
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 30
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 p3, 0x7

    .line 32
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    const/4 p3, 0x0

    .line 33
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    const/4 p3, -0x1

    .line 34
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 36
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 37
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 38
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 39
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 42
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public c(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public final d(I)Ll/f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    :goto_0
    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    move-object/from16 v7, p0

    .line 6
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 9
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 10
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 11
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 12
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 13
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 14
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 15
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 16
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v4

    mul-float/2addr v10, v2

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v3

    mul-float/2addr v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 17
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 18
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 19
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 20
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 21
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 22
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 23
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final f(Landroid/view/View;)Ll/f;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    :goto_0
    return-object p1
.end method

.method public final g(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v0, p0}, Ll/f;->W(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    .line 6
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 8
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    .line 9
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 10
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    .line 11
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 12
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    .line 13
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 14
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    .line 15
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 16
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    goto :goto_2

    .line 17
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_5

    .line 18
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 19
    :try_start_0
    new-instance v5, Landroidx/constraintlayout/widget/a;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/a;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/widget/a;->e(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    .line 22
    :goto_1
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    invoke-virtual {p1, v0}, Ll/g;->c1(I)V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v0}, Ll/g;->R0()I

    move-result v0

    return v0
.end method

.method public final h(II)V
    .locals 20

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_11

    move-object/from16 v7, p0

    .line 4
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_a

    .line 6
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iget-object v10, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    .line 8
    iget-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v11, :cond_10

    iget-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v11, :cond_1

    goto/16 :goto_a

    .line 9
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Ll/f;->x0(I)V

    .line 10
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 12
    iget-boolean v13, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_4

    iget-boolean v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-nez v5, :cond_4

    if-nez v13, :cond_2

    iget v13, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    if-eq v13, v15, :cond_4

    :cond_2
    if-eq v11, v14, :cond_4

    if-nez v5, :cond_3

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    if-eq v5, v15, :cond_4

    if-ne v12, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v15

    :goto_2
    if-eqz v5, :cond_d

    const/4 v5, -0x2

    if-nez v11, :cond_5

    .line 13
    invoke-static {v0, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    move/from16 v16, v15

    goto :goto_4

    :cond_5
    if-ne v11, v14, :cond_6

    .line 14
    invoke-static {v0, v3, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    if-ne v11, v5, :cond_7

    move v13, v15

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    .line 15
    :goto_3
    invoke-static {v0, v3, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v19, v16

    move/from16 v16, v13

    move/from16 v13, v19

    :goto_4
    if-nez v12, :cond_8

    .line 16
    invoke-static {v1, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v19, v17

    move/from16 v17, v15

    move/from16 v15, v19

    goto :goto_6

    :cond_8
    if-ne v12, v14, :cond_9

    .line 17
    invoke-static {v1, v2, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_6

    :cond_9
    if-ne v12, v5, :cond_a

    move/from16 v17, v15

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    .line 18
    :goto_5
    invoke-static {v1, v2, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v15, v18

    .line 19
    :goto_6
    invoke-virtual {v8, v13, v15}, Landroid/view/View;->measure(II)V

    if-ne v11, v5, :cond_b

    const/4 v11, 0x1

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 20
    :goto_7
    invoke-virtual {v10, v11}, Ll/f;->z0(Z)V

    if-ne v12, v5, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 21
    :goto_8
    invoke-virtual {v10, v15}, Ll/f;->c0(Z)V

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 23
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_9

    :cond_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 24
    :goto_9
    invoke-virtual {v10, v11}, Ll/f;->y0(I)V

    .line 25
    invoke-virtual {v10, v12}, Ll/f;->b0(I)V

    if-eqz v16, :cond_e

    .line 26
    invoke-virtual {v10, v11}, Ll/f;->B0(I)V

    :cond_e
    if-eqz v17, :cond_f

    .line 27
    invoke-virtual {v10, v12}, Ll/f;->A0(I)V

    .line 28
    :cond_f
    iget-boolean v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v5, :cond_10

    .line 29
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v5

    if-eq v5, v14, :cond_10

    .line 30
    invoke-virtual {v10, v5}, Ll/f;->V(I)V

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v7, p0

    return-void
.end method

.method public final i(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-ge v7, v5, :cond_c

    .line 4
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v8, :cond_0

    goto/16 :goto_6

    .line 6
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iget-object v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    .line 8
    iget-boolean v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v14, :cond_b

    iget-boolean v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v14, :cond_1

    goto/16 :goto_6

    .line 9
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    invoke-virtual {v13, v14}, Ll/f;->x0(I)V

    .line 10
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v14, :cond_a

    if-nez v15, :cond_2

    goto :goto_5

    :cond_2
    if-ne v14, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    .line 12
    :goto_1
    invoke-static {v1, v4, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    if-ne v15, v10, :cond_4

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    .line 13
    :goto_2
    invoke-static {v2, v3, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 14
    invoke-virtual {v12, v6, v11}, Landroid/view/View;->measure(II)V

    if-ne v14, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 15
    :goto_3
    invoke-virtual {v13, v6}, Ll/f;->z0(Z)V

    if-ne v15, v10, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    .line 16
    :goto_4
    invoke-virtual {v13, v11}, Ll/f;->c0(Z)V

    .line 17
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 18
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 19
    invoke-virtual {v13, v6}, Ll/f;->y0(I)V

    .line 20
    invoke-virtual {v13, v10}, Ll/f;->b0(I)V

    if-eqz v16, :cond_7

    .line 21
    invoke-virtual {v13, v6}, Ll/f;->B0(I)V

    :cond_7
    if-eqz v17, :cond_8

    .line 22
    invoke-virtual {v13, v10}, Ll/f;->A0(I)V

    .line 23
    :cond_8
    iget-boolean v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v11, :cond_9

    .line 24
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v11

    if-eq v11, v9, :cond_9

    .line 25
    invoke-virtual {v13, v11}, Ll/f;->V(I)V

    .line 26
    :cond_9
    iget-boolean v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v9, :cond_b

    iget-boolean v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v8, :cond_b

    .line 27
    invoke-virtual {v13}, Ll/f;->x()Ll/n;

    move-result-object v8

    invoke-virtual {v8, v6}, Ll/n;->h(I)V

    .line 28
    invoke-virtual {v13}, Ll/f;->w()Ll/n;

    move-result-object v6

    invoke-virtual {v6, v10}, Ll/n;->h(I)V

    goto :goto_6

    .line 29
    :cond_a
    :goto_5
    invoke-virtual {v13}, Ll/f;->x()Ll/n;

    move-result-object v6

    invoke-virtual {v6}, Ll/o;->c()V

    .line 30
    invoke-virtual {v13}, Ll/f;->w()Ll/n;

    move-result-object v6

    invoke-virtual {v6}, Ll/o;->c()V

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 31
    :cond_c
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v6}, Ll/g;->e1()V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_28

    .line 32
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v8, :cond_d

    goto/16 :goto_15

    .line 34
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 35
    iget-object v12, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    .line 36
    iget-boolean v13, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v13, :cond_26

    iget-boolean v13, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v13, :cond_e

    goto/16 :goto_15

    .line 37
    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    invoke-virtual {v12, v13}, Ll/f;->x0(I)V

    .line 38
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 39
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v13, :cond_f

    if-eqz v14, :cond_f

    goto/16 :goto_15

    .line 40
    :cond_f
    sget-object v15, Ll/e$d;->b:Ll/e$d;

    invoke-virtual {v12, v15}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ll/e;->f()Ll/m;

    move-result-object v16

    .line 41
    sget-object v8, Ll/e$d;->d:Ll/e$d;

    invoke-virtual {v12, v8}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ll/e;->f()Ll/m;

    move-result-object v18

    .line 42
    invoke-virtual {v12, v15}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v15

    invoke-virtual {v15}, Ll/e;->i()Ll/e;

    move-result-object v15

    if-eqz v15, :cond_10

    .line 43
    invoke-virtual {v12, v8}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v8

    invoke-virtual {v8}, Ll/e;->i()Ll/e;

    move-result-object v8

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    .line 44
    :goto_8
    sget-object v15, Ll/e$d;->c:Ll/e$d;

    invoke-virtual {v12, v15}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ll/e;->f()Ll/m;

    move-result-object v19

    .line 45
    sget-object v9, Ll/e$d;->e:Ll/e$d;

    invoke-virtual {v12, v9}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ll/e;->f()Ll/m;

    move-result-object v20

    .line 46
    invoke-virtual {v12, v15}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v15

    invoke-virtual {v15}, Ll/e;->i()Ll/e;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 47
    invoke-virtual {v12, v9}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v9

    invoke-virtual {v9}, Ll/e;->i()Ll/e;

    move-result-object v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    :goto_9
    if-nez v13, :cond_13

    if-nez v14, :cond_13

    if-eqz v8, :cond_13

    if-eqz v9, :cond_13

    move/from16 v21, v5

    move v9, v10

    :cond_12
    const/4 v7, -0x1

    goto/16 :goto_16

    .line 48
    :cond_13
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v15}, Ll/f;->s()Ll/f$b;

    move-result-object v15

    sget-object v10, Ll/f$b;->b:Ll/f$b;

    move/from16 v21, v5

    if-eq v15, v10, :cond_14

    const/4 v15, 0x1

    goto :goto_a

    :cond_14
    const/4 v15, 0x0

    .line 49
    :goto_a
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v5}, Ll/f;->B()Ll/f$b;

    move-result-object v5

    if-eq v5, v10, :cond_15

    const/4 v5, 0x1

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    :goto_b
    if-nez v15, :cond_16

    .line 50
    invoke-virtual {v12}, Ll/f;->x()Ll/n;

    move-result-object v10

    invoke-virtual {v10}, Ll/o;->c()V

    :cond_16
    if-nez v5, :cond_17

    .line 51
    invoke-virtual {v12}, Ll/f;->w()Ll/n;

    move-result-object v10

    invoke-virtual {v10}, Ll/o;->c()V

    :cond_17
    if-nez v13, :cond_19

    if-eqz v15, :cond_18

    .line 52
    invoke-virtual {v12}, Ll/f;->P()Z

    move-result v10

    if-eqz v10, :cond_18

    if-eqz v8, :cond_18

    invoke-virtual/range {v16 .. v16}, Ll/o;->d()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual/range {v18 .. v18}, Ll/o;->d()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 53
    invoke-virtual/range {v18 .. v18}, Ll/m;->k()F

    move-result v8

    invoke-virtual/range {v16 .. v16}, Ll/m;->k()F

    move-result v10

    sub-float/2addr v8, v10

    float-to-int v13, v8

    .line 54
    invoke-virtual {v12}, Ll/f;->x()Ll/n;

    move-result-object v8

    invoke-virtual {v8, v13}, Ll/n;->h(I)V

    .line 55
    invoke-static {v1, v4, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    goto :goto_c

    :cond_18
    const/4 v8, -0x2

    .line 56
    invoke-static {v1, v4, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    move v8, v10

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto :goto_e

    :cond_19
    const/4 v8, -0x2

    const/4 v10, -0x1

    if-ne v13, v10, :cond_1a

    .line 57
    invoke-static {v1, v4, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v8, v16

    :goto_c
    const/4 v10, 0x0

    goto :goto_e

    :cond_1a
    if-ne v13, v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_d

    :cond_1b
    const/4 v8, 0x0

    .line 58
    :goto_d
    invoke-static {v1, v4, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    move/from16 v23, v10

    move v10, v8

    move/from16 v8, v23

    :goto_e
    if-nez v14, :cond_1d

    if-eqz v5, :cond_1c

    .line 59
    invoke-virtual {v12}, Ll/f;->O()Z

    move-result v16

    if-eqz v16, :cond_1c

    if-eqz v9, :cond_1c

    invoke-virtual/range {v19 .. v19}, Ll/o;->d()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual/range {v20 .. v20}, Ll/o;->d()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 60
    invoke-virtual/range {v20 .. v20}, Ll/m;->k()F

    move-result v9

    invoke-virtual/range {v19 .. v19}, Ll/m;->k()F

    move-result v14

    sub-float/2addr v9, v14

    float-to-int v14, v9

    .line 61
    invoke-virtual {v12}, Ll/f;->w()Ll/n;

    move-result-object v9

    invoke-virtual {v9, v14}, Ll/n;->h(I)V

    .line 62
    invoke-static {v2, v3, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    move/from16 v22, v14

    const/16 v16, 0x0

    move v14, v9

    const/4 v9, -0x2

    goto :goto_10

    :cond_1c
    const/4 v9, -0x2

    .line 63
    invoke-static {v2, v3, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    move/from16 v22, v14

    const/16 v16, 0x1

    move v14, v5

    const/4 v5, 0x0

    goto :goto_10

    :cond_1d
    const/4 v9, -0x1

    if-ne v14, v9, :cond_1e

    .line 64
    invoke-static {v2, v3, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v22, v14

    move/from16 v14, v16

    const/4 v9, -0x2

    const/16 v16, 0x0

    goto :goto_10

    :cond_1e
    const/4 v9, -0x2

    if-ne v14, v9, :cond_1f

    const/16 v16, 0x1

    goto :goto_f

    :cond_1f
    const/16 v16, 0x0

    .line 65
    :goto_f
    invoke-static {v2, v3, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v22, v14

    move/from16 v14, v18

    .line 66
    :goto_10
    invoke-virtual {v7, v8, v14}, Landroid/view/View;->measure(II)V

    if-ne v13, v9, :cond_20

    const/4 v8, 0x1

    goto :goto_11

    :cond_20
    const/4 v8, 0x0

    .line 67
    :goto_11
    invoke-virtual {v12, v8}, Ll/f;->z0(Z)V

    move/from16 v14, v22

    if-ne v14, v9, :cond_21

    const/4 v8, 0x1

    goto :goto_12

    :cond_21
    const/4 v8, 0x0

    .line 68
    :goto_12
    invoke-virtual {v12, v8}, Ll/f;->c0(Z)V

    .line 69
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 70
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 71
    invoke-virtual {v12, v8}, Ll/f;->y0(I)V

    .line 72
    invoke-virtual {v12, v13}, Ll/f;->b0(I)V

    if-eqz v10, :cond_22

    .line 73
    invoke-virtual {v12, v8}, Ll/f;->B0(I)V

    :cond_22
    if-eqz v16, :cond_23

    .line 74
    invoke-virtual {v12, v13}, Ll/f;->A0(I)V

    :cond_23
    if-eqz v15, :cond_24

    .line 75
    invoke-virtual {v12}, Ll/f;->x()Ll/n;

    move-result-object v10

    invoke-virtual {v10, v8}, Ll/n;->h(I)V

    goto :goto_13

    .line 76
    :cond_24
    invoke-virtual {v12}, Ll/f;->x()Ll/n;

    move-result-object v8

    invoke-virtual {v8}, Ll/n;->g()V

    :goto_13
    if-eqz v5, :cond_25

    .line 77
    invoke-virtual {v12}, Ll/f;->w()Ll/n;

    move-result-object v5

    invoke-virtual {v5, v13}, Ll/n;->h(I)V

    goto :goto_14

    .line 78
    :cond_25
    invoke-virtual {v12}, Ll/f;->w()Ll/n;

    move-result-object v5

    invoke-virtual {v5}, Ll/n;->g()V

    .line 79
    :goto_14
    iget-boolean v5, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v5, :cond_12

    .line 80
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_27

    .line 81
    invoke-virtual {v12, v5}, Ll/f;->V(I)V

    goto :goto_16

    :cond_26
    :goto_15
    move/from16 v21, v5

    move v7, v9

    move v9, v10

    :cond_27
    :goto_16
    add-int/lit8 v6, v6, 0x1

    move v10, v9

    move/from16 v5, v21

    const/16 v8, 0x8

    move v9, v7

    goto/16 :goto_7

    :cond_28
    return-void
.end method

.method public final j()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    .line 3
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x2f

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 7
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 8
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v6

    invoke-virtual {v6, v7}, Ll/f;->X(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_3

    .line 9
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 10
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Ll/f;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v6}, Ll/f;->Q()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-eq v5, v4, :cond_5

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_5

    .line 13
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-ne v7, v8, :cond_4

    instance-of v7, v6, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v7, :cond_4

    .line 15
    check-cast v6, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/a;

    move-result-object v6

    iput-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 16
    :cond_5
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/a;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 18
    :cond_6
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v5}, Ll/q;->M0()V

    .line 19
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_7

    .line 20
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 21
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_5
    if-ge v5, v2, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 23
    instance-of v7, v6, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v7, :cond_8

    .line 24
    check-cast v6, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/Placeholder;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move v5, v3

    :goto_6
    if-ge v5, v2, :cond_29

    .line 25
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 26
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Ll/f;

    move-result-object v13

    if-nez v13, :cond_a

    goto/16 :goto_f

    .line 27
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 28
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 29
    iget-boolean v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Z

    if-eqz v7, :cond_b

    .line 30
    iput-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Z

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_c

    .line 31
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "id/"

    .line 33
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v8

    invoke-virtual {v8, v7}, Ll/f;->X(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :catch_1
    :cond_c
    :goto_7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, Ll/f;->x0(I)V

    .line 36
    iget-boolean v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    if-eqz v7, :cond_d

    const/16 v7, 0x8

    .line 37
    invoke-virtual {v13, v7}, Ll/f;->x0(I)V

    .line 38
    :cond_d
    invoke-virtual {v13, v6}, Ll/f;->W(Ljava/lang/Object;)V

    .line 39
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v6, v13}, Ll/q;->I0(Ll/f;)V

    .line 40
    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v6, :cond_f

    .line 41
    :cond_e
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_f
    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v6, :cond_12

    .line 43
    check-cast v13, Ll/i;

    .line 44
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    .line 45
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 46
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_10

    .line 47
    invoke-virtual {v13, v8}, Ll/i;->L0(F)V

    goto/16 :goto_f

    :cond_10
    if-eq v6, v4, :cond_11

    .line 48
    invoke-virtual {v13, v6}, Ll/i;->J0(I)V

    goto/16 :goto_f

    :cond_11
    if-eq v7, v4, :cond_28

    .line 49
    invoke-virtual {v13, v7}, Ll/i;->K0(I)V

    goto/16 :goto_f

    .line 50
    :cond_12
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-ne v6, v4, :cond_13

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v6, v4, :cond_13

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v6, v4, :cond_28

    .line 51
    :cond_13
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 52
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 53
    iget v15, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 54
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 55
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 56
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 57
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:F

    .line 58
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-eq v8, v4, :cond_14

    .line 59
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 60
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    invoke-virtual {v13, v6, v7, v8}, Ll/f;->f(Ll/f;FI)V

    goto/16 :goto_c

    :cond_14
    if-eq v6, v4, :cond_16

    .line 61
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 62
    sget-object v16, Ll/e$d;->b:Ll/e$d;

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v7, v13

    move/from16 v17, v8

    move-object/from16 v8, v16

    move v3, v9

    move-object v9, v6

    move v6, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    move/from16 v18, v12

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    goto :goto_8

    :cond_15
    move v3, v9

    move v6, v10

    move/from16 v18, v12

    goto :goto_8

    :cond_16
    move v3, v9

    move v6, v10

    move/from16 v16, v11

    move/from16 v18, v12

    if-eq v7, v4, :cond_17

    .line 63
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_17

    .line 64
    sget-object v8, Ll/e$d;->b:Ll/e$d;

    sget-object v10, Ll/e$d;->d:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    :cond_17
    :goto_8
    if-eq v15, v4, :cond_18

    .line 65
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 66
    sget-object v8, Ll/e$d;->d:Ll/e$d;

    sget-object v10, Ll/e$d;->b:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v7, v13

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    goto :goto_9

    :cond_18
    move/from16 v7, v18

    if-eq v7, v4, :cond_19

    .line 67
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 68
    sget-object v10, Ll/e$d;->d:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v7, v13

    move-object v8, v10

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    .line 69
    :cond_19
    :goto_9
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-eq v6, v4, :cond_1a

    .line 70
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 71
    sget-object v10, Ll/e$d;->c:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object v7, v13

    move-object v8, v10

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    goto :goto_a

    .line 72
    :cond_1a
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-eq v6, v4, :cond_1b

    .line 73
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 74
    sget-object v8, Ll/e$d;->c:Ll/e$d;

    sget-object v10, Ll/e$d;->e:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    .line 75
    :cond_1b
    :goto_a
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-eq v6, v4, :cond_1c

    .line 76
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 77
    sget-object v8, Ll/e$d;->e:Ll/e$d;

    sget-object v10, Ll/e$d;->c:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    goto :goto_b

    .line 78
    :cond_1c
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-eq v6, v4, :cond_1d

    .line 79
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 80
    sget-object v10, Ll/e$d;->e:Ll/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object v7, v13

    move-object v8, v10

    invoke-virtual/range {v7 .. v12}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    .line 81
    :cond_1d
    :goto_b
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-eq v6, v4, :cond_1e

    .line 82
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 83
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Ll/f;

    move-result-object v7

    if-eqz v7, :cond_1e

    if-eqz v6, :cond_1e

    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v8, :cond_1e

    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v8, 0x1

    .line 86
    iput-boolean v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 87
    iput-boolean v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 88
    sget-object v6, Ll/e$d;->f:Ll/e$d;

    invoke-virtual {v13, v6}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v18

    .line 89
    invoke-virtual {v7, v6}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, -0x1

    .line 90
    sget-object v22, Ll/e$c;->b:Ll/e$c;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Ll/e;->a(Ll/e;IILl/e$c;IZ)Z

    .line 91
    sget-object v6, Ll/e$d;->c:Ll/e$d;

    invoke-virtual {v13, v6}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v6

    invoke-virtual {v6}, Ll/e;->m()V

    .line 92
    sget-object v6, Ll/e$d;->e:Ll/e$d;

    invoke-virtual {v13, v6}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v6

    invoke-virtual {v6}, Ll/e;->m()V

    :cond_1e
    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    const/high16 v8, 0x3f000000    # 0.5f

    if-ltz v7, :cond_1f

    cmpl-float v7, v3, v8

    if-eqz v7, :cond_1f

    .line 93
    invoke-virtual {v13, v3}, Ll/f;->d0(F)V

    .line 94
    :cond_1f
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_20

    cmpl-float v6, v3, v8

    if-eqz v6, :cond_20

    .line 95
    invoke-virtual {v13, v3}, Ll/f;->r0(F)V

    :cond_20
    :goto_c
    if-eqz v1, :cond_22

    .line 96
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-ne v3, v4, :cond_21

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    if-eq v6, v4, :cond_22

    .line 97
    :cond_21
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    invoke-virtual {v13, v3, v6}, Ll/f;->o0(II)V

    .line 98
    :cond_22
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v3, :cond_24

    .line 99
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v3, v4, :cond_23

    .line 100
    sget-object v3, Ll/f$b;->d:Ll/f$b;

    invoke-virtual {v13, v3}, Ll/f;->g0(Ll/f$b;)V

    .line 101
    sget-object v3, Ll/e$d;->b:Ll/e$d;

    invoke-virtual {v13, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v3, Ll/e;->e:I

    .line 102
    sget-object v3, Ll/e$d;->d:Ll/e$d;

    invoke-virtual {v13, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v3, Ll/e;->e:I

    goto :goto_d

    .line 103
    :cond_23
    sget-object v3, Ll/f$b;->c:Ll/f$b;

    invoke-virtual {v13, v3}, Ll/f;->g0(Ll/f$b;)V

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v13, v3}, Ll/f;->y0(I)V

    goto :goto_d

    .line 105
    :cond_24
    sget-object v3, Ll/f$b;->a:Ll/f$b;

    invoke-virtual {v13, v3}, Ll/f;->g0(Ll/f$b;)V

    .line 106
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v13, v3}, Ll/f;->y0(I)V

    .line 107
    :goto_d
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-nez v3, :cond_26

    .line 108
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v3, v4, :cond_25

    .line 109
    sget-object v3, Ll/f$b;->d:Ll/f$b;

    invoke-virtual {v13, v3}, Ll/f;->u0(Ll/f$b;)V

    .line 110
    sget-object v3, Ll/e$d;->c:Ll/e$d;

    invoke-virtual {v13, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v3, Ll/e;->e:I

    .line 111
    sget-object v3, Ll/e$d;->e:Ll/e$d;

    invoke-virtual {v13, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v6, v3, Ll/e;->e:I

    const/4 v3, 0x0

    goto :goto_e

    .line 112
    :cond_25
    sget-object v3, Ll/f$b;->c:Ll/f$b;

    invoke-virtual {v13, v3}, Ll/f;->u0(Ll/f$b;)V

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v13, v3}, Ll/f;->b0(I)V

    goto :goto_e

    :cond_26
    const/4 v3, 0x0

    .line 114
    sget-object v6, Ll/f$b;->a:Ll/f$b;

    invoke-virtual {v13, v6}, Ll/f;->u0(Ll/f$b;)V

    .line 115
    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v13, v6}, Ll/f;->b0(I)V

    .line 116
    :goto_e
    iget-object v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    if-eqz v6, :cond_27

    .line 117
    invoke-virtual {v13, v6}, Ll/f;->Y(Ljava/lang/String;)V

    .line 118
    :cond_27
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    invoke-virtual {v13, v6}, Ll/f;->i0(F)V

    .line 119
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:F

    invoke-virtual {v13, v6}, Ll/f;->w0(F)V

    .line 120
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    invoke-virtual {v13, v6}, Ll/f;->e0(I)V

    .line 121
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    invoke-virtual {v13, v6}, Ll/f;->s0(I)V

    .line 122
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    invoke-virtual {v13, v6, v7, v8, v9}, Ll/f;->h0(IIIF)V

    .line 123
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:I

    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:F

    invoke-virtual {v13, v6, v7, v8, v9}, Ll/f;->v0(IIIF)V

    :cond_28
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_29
    return-void
.end method

.method public k(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final l(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 7
    sget-object v4, Ll/f$b;->a:Ll/f$b;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eq v0, v6, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_0

    move-object p1, v4

    :goto_0
    move v0, v7

    goto :goto_1

    .line 9
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    move v0, p1

    move-object p1, v4

    goto :goto_1

    .line 10
    :cond_1
    sget-object p1, Ll/f$b;->b:Ll/f$b;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Ll/f$b;->b:Ll/f$b;

    move-object v8, v0

    move v0, p1

    move-object p1, v8

    :goto_1
    if-eq v1, v6, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    :goto_2
    move p2, v7

    goto :goto_3

    .line 12
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_3

    .line 13
    :cond_4
    sget-object v4, Ll/f$b;->b:Ll/f$b;

    goto :goto_2

    .line 14
    :cond_5
    sget-object v4, Ll/f$b;->b:Ll/f$b;

    .line 15
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1, v7}, Ll/f;->m0(I)V

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1, v7}, Ll/f;->l0(I)V

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1, p1}, Ll/f;->g0(Ll/f$b;)V

    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {p1, v0}, Ll/f;->y0(I)V

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {p1, v4}, Ll/f;->u0(Ll/f$b;)V

    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {p1, p2}, Ll/f;->b0(I)V

    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ll/f;->m0(I)V

    .line 22
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ll/f;->l0(I)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {p1}, Ll/g;->K0()V

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->j()V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_0

    .line 4
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/Placeholder;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 7
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Ll/f;->p()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Ll/f;->q()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Ll/f;->D()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Ll/f;->r()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    .line 14
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 15
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 20
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 8
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v9, v7}, Ll/f;->C0(I)V

    .line 9
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v9, v8}, Ll/f;->D0(I)V

    .line 10
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {v9, v10}, Ll/f;->k0(I)V

    .line 11
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {v9, v10}, Ll/f;->j0(I)V

    .line 12
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v10, v12, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    invoke-virtual {v9, v10}, Ll/g;->d1(Z)V

    .line 13
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(II)V

    .line 14
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v9}, Ll/f;->D()I

    move-result v9

    .line 15
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v10}, Ll/f;->r()I

    move-result v10

    .line 16
    iget-boolean v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v13, :cond_1

    .line 17
    iput-boolean v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->n()V

    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v11

    .line 19
    :goto_1
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    const/16 v15, 0x8

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_2

    move v14, v12

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    if-eqz v14, :cond_3

    .line 20
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v15}, Ll/g;->a1()V

    .line 21
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v15, v9, v10}, Ll/g;->Y0(II)V

    .line 22
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(II)V

    goto :goto_3

    .line 23
    :cond_3
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(II)V

    .line 24
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->o()V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-lez v15, :cond_4

    if-eqz v13, :cond_4

    .line 26
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-static {v13}, Ll/a;->a(Ll/g;)V

    .line 27
    :cond_4
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget-boolean v15, v13, Ll/g;->I0:Z

    if-eqz v15, :cond_8

    .line 28
    iget-boolean v15, v13, Ll/g;->J0:Z

    const/high16 v12, -0x80000000

    if-eqz v15, :cond_6

    if-ne v3, v12, :cond_6

    .line 29
    iget v15, v13, Ll/g;->L0:I

    if-ge v15, v4, :cond_5

    .line 30
    invoke-virtual {v13, v15}, Ll/f;->y0(I)V

    .line 31
    :cond_5
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    sget-object v15, Ll/f$b;->a:Ll/f$b;

    .line 32
    invoke-virtual {v13, v15}, Ll/f;->g0(Ll/f$b;)V

    .line 33
    :cond_6
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget-boolean v15, v13, Ll/g;->K0:Z

    if-eqz v15, :cond_8

    if-ne v5, v12, :cond_8

    .line 34
    iget v12, v13, Ll/g;->M0:I

    if-ge v12, v6, :cond_7

    .line 35
    invoke-virtual {v13, v12}, Ll/f;->b0(I)V

    .line 36
    :cond_7
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    sget-object v13, Ll/f$b;->a:Ll/f$b;

    .line 37
    invoke-virtual {v12, v13}, Ll/f;->u0(Ll/f$b;)V

    .line 38
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    const/16 v13, 0x20

    and-int/2addr v12, v13

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_c

    .line 39
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v12}, Ll/f;->D()I

    move-result v12

    .line 40
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v13}, Ll/f;->r()I

    move-result v13

    .line 41
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-eq v11, v12, :cond_9

    if-ne v3, v15, :cond_9

    .line 42
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget-object v3, v3, Ll/g;->H0:Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v3, v11, v12}, Ll/a;->i(Ljava/util/List;II)V

    .line 43
    :cond_9
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    if-eq v3, v13, :cond_a

    if-ne v5, v15, :cond_a

    .line 44
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget-object v3, v3, Ll/g;->H0:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v3, v5, v13}, Ll/a;->i(Ljava/util/List;II)V

    .line 45
    :cond_a
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget-boolean v5, v3, Ll/g;->J0:Z

    if-eqz v5, :cond_b

    iget v5, v3, Ll/g;->L0:I

    if-le v5, v4, :cond_b

    .line 46
    iget-object v3, v3, Ll/g;->H0:Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v3, v11, v4}, Ll/a;->i(Ljava/util/List;II)V

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    .line 47
    :goto_4
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    iget-boolean v4, v3, Ll/g;->K0:Z

    if-eqz v4, :cond_c

    iget v4, v3, Ll/g;->M0:I

    if-le v4, v6, :cond_c

    .line 48
    iget-object v3, v3, Ll/g;->H0:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v3, v4, v6}, Ll/a;->i(Ljava/util/List;II)V

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    .line 49
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "First pass"

    .line 50
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(Ljava/lang/String;)V

    .line 51
    :cond_d
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v8, v5

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v7, v5

    if-lez v3, :cond_28

    .line 54
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v5}, Ll/f;->s()Ll/f$b;

    move-result-object v5

    sget-object v6, Ll/f$b;->b:Ll/f$b;

    if-ne v5, v6, :cond_e

    move v5, v4

    goto :goto_6

    :cond_e
    move v5, v11

    .line 55
    :goto_6
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v12}, Ll/f;->B()Ll/f$b;

    move-result-object v12

    if-ne v12, v6, :cond_f

    move v6, v4

    goto :goto_7

    :cond_f
    move v6, v11

    .line 56
    :goto_7
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v12}, Ll/f;->D()I

    move-result v12

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 57
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v13}, Ll/f;->r()I

    move-result v13

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v13, v11

    move/from16 v16, v12

    move v12, v13

    :goto_8
    if-ge v12, v3, :cond_1f

    .line 58
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ll/f;

    .line 59
    invoke-virtual {v15}, Ll/f;->m()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_10

    move/from16 v17, v9

    move/from16 v19, v10

    goto/16 :goto_d

    .line 60
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v19, v10

    move-object/from16 v10, v17

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move/from16 v17, v9

    .line 61
    iget-boolean v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-nez v9, :cond_1e

    iget-boolean v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v9, :cond_11

    goto/16 :goto_d

    .line 62
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v0, 0x8

    if-ne v9, v0, :cond_12

    goto/16 :goto_d

    :cond_12
    if-eqz v14, :cond_13

    .line 63
    invoke-virtual {v15}, Ll/f;->x()Ll/n;

    move-result-object v0

    invoke-virtual {v0}, Ll/o;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 64
    invoke-virtual {v15}, Ll/f;->w()Ll/n;

    move-result-object v0

    invoke-virtual {v0}, Ll/o;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_d

    .line 65
    :cond_13
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, -0x2

    if-ne v0, v9, :cond_14

    iget-boolean v9, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v9, :cond_14

    .line 66
    invoke-static {v1, v7, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_9

    .line 67
    :cond_14
    invoke-virtual {v15}, Ll/f;->D()I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 68
    :goto_9
    iget v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v9, v1, :cond_15

    iget-boolean v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v1, :cond_15

    .line 69
    invoke-static {v2, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_a

    .line 70
    :cond_15
    invoke-virtual {v15}, Ll/f;->r()I

    move-result v1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 71
    :goto_a
    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 74
    invoke-virtual {v15}, Ll/f;->D()I

    move-result v9

    if-eq v0, v9, :cond_19

    .line 75
    invoke-virtual {v15, v0}, Ll/f;->y0(I)V

    if-eqz v14, :cond_16

    .line 76
    invoke-virtual {v15}, Ll/f;->x()Ll/n;

    move-result-object v9

    invoke-virtual {v9, v0}, Ll/n;->h(I)V

    :cond_16
    if-eqz v5, :cond_17

    .line 77
    invoke-virtual {v15}, Ll/f;->y()I

    move-result v0

    move/from16 v9, v16

    if-le v0, v9, :cond_18

    .line 78
    invoke-virtual {v15}, Ll/f;->y()I

    move-result v0

    sget-object v13, Ll/e$d;->d:Ll/e$d;

    .line 79
    invoke-virtual {v15, v13}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v13

    invoke-virtual {v13}, Ll/e;->d()I

    move-result v13

    add-int/2addr v0, v13

    .line 80
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_b

    :cond_17
    move/from16 v9, v16

    :cond_18
    move/from16 v16, v9

    :goto_b
    const/4 v13, 0x1

    goto :goto_c

    :cond_19
    move/from16 v9, v16

    .line 81
    :goto_c
    invoke-virtual {v15}, Ll/f;->r()I

    move-result v0

    if-eq v1, v0, :cond_1c

    .line 82
    invoke-virtual {v15, v1}, Ll/f;->b0(I)V

    if-eqz v14, :cond_1a

    .line 83
    invoke-virtual {v15}, Ll/f;->w()Ll/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Ll/n;->h(I)V

    :cond_1a
    if-eqz v6, :cond_1b

    .line 84
    invoke-virtual {v15}, Ll/f;->l()I

    move-result v0

    if-le v0, v4, :cond_1b

    .line 85
    invoke-virtual {v15}, Ll/f;->l()I

    move-result v0

    sget-object v1, Ll/e$d;->e:Ll/e$d;

    .line 86
    invoke-virtual {v15, v1}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    invoke-virtual {v1}, Ll/e;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    :cond_1b
    const/4 v13, 0x1

    .line 88
    :cond_1c
    iget-boolean v0, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v0, :cond_1d

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 90
    invoke-virtual {v15}, Ll/f;->j()I

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 91
    invoke-virtual {v15, v0}, Ll/f;->V(I)V

    const/4 v13, 0x1

    .line 92
    :cond_1d
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v0

    move v11, v0

    goto :goto_e

    :cond_1e
    :goto_d
    move/from16 v9, v16

    move/from16 v16, v9

    :goto_e
    add-int/lit8 v12, v12, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, v17

    move/from16 v3, v18

    move/from16 v10, v19

    goto/16 :goto_8

    :cond_1f
    move/from16 v18, v3

    move/from16 v17, v9

    move/from16 v19, v10

    move/from16 v9, v16

    move-object/from16 v0, p0

    if-eqz v13, :cond_23

    .line 93
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    move/from16 v3, v17

    invoke-virtual {v1, v3}, Ll/f;->y0(I)V

    .line 94
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    move/from16 v3, v19

    invoke-virtual {v1, v3}, Ll/f;->b0(I)V

    if-eqz v14, :cond_20

    .line 95
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1}, Ll/g;->e1()V

    :cond_20
    const-string v1, "2nd pass"

    .line 96
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(Ljava/lang/String;)V

    .line 97
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1}, Ll/f;->D()I

    move-result v1

    if-ge v1, v9, :cond_21

    .line 98
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1, v9}, Ll/f;->y0(I)V

    const/4 v1, 0x1

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    .line 99
    :goto_f
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v3}, Ll/f;->r()I

    move-result v3

    if-ge v3, v4, :cond_22

    .line 100
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1, v4}, Ll/f;->b0(I)V

    const/4 v12, 0x1

    goto :goto_10

    :cond_22
    move v12, v1

    :goto_10
    if-eqz v12, :cond_23

    const-string v1, "3rd pass"

    .line 101
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(Ljava/lang/String;)V

    :cond_23
    move/from16 v3, v18

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_29

    .line 102
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/f;

    .line 103
    invoke-virtual {v4}, Ll/f;->m()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_26

    :cond_24
    const/16 v9, 0x8

    :cond_25
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_12

    .line 104
    :cond_26
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Ll/f;->D()I

    move-result v9

    if-ne v6, v9, :cond_27

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4}, Ll/f;->r()I

    move-result v9

    if-eq v6, v9, :cond_24

    .line 105
    :cond_27
    invoke-virtual {v4}, Ll/f;->C()I

    move-result v6

    const/16 v9, 0x8

    if-eq v6, v9, :cond_25

    .line 106
    invoke-virtual {v4}, Ll/f;->D()I

    move-result v6

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 107
    invoke-virtual {v4}, Ll/f;->r()I

    move-result v4

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 108
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->measure(II)V

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    const/4 v11, 0x0

    .line 109
    :cond_29
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1}, Ll/f;->D()I

    move-result v1

    add-int/2addr v1, v7

    .line 110
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v3}, Ll/f;->r()I

    move-result v3

    add-int/2addr v3, v8

    move/from16 v4, p1

    .line 111
    invoke-static {v1, v4, v11}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v4, v11, 0x10

    .line 112
    invoke-static {v3, v2, v4}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 113
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v3}, Ll/g;->V0()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_2a

    or-int/2addr v1, v4

    .line 116
    :cond_2a
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v3}, Ll/g;->T0()Z

    move-result v3

    if-eqz v3, :cond_2b

    or-int/2addr v2, v4

    .line 117
    :cond_2b
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 118
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 119
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Ll/f;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    instance-of v0, v0, Ll/i;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    new-instance v1, Ll/i;

    invoke-direct {v1}, Ll/i;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Ll/f;

    .line 7
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 8
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    invoke-virtual {v1, v0}, Ll/i;->M0(I)V

    .line 9
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->f()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Ll/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v1, v0}, Ll/q;->L0(Ll/f;)V

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/a;

    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ll/g;

    invoke-virtual {v0, p1}, Ll/g;->c1(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
