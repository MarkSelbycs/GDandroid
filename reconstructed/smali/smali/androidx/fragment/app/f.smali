.class public final Landroidx/fragment/app/f;
.super Landroidx/fragment/app/e;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/f$i;,
        Landroidx/fragment/app/f$h;,
        Landroidx/fragment/app/f$e;,
        Landroidx/fragment/app/f$f;,
        Landroidx/fragment/app/f$g;,
        Landroidx/fragment/app/f$m;,
        Landroidx/fragment/app/f$l;,
        Landroidx/fragment/app/f$k;,
        Landroidx/fragment/app/f$j;
    }
.end annotation


# static fields
.field public static J:Z

.field public static K:Ljava/lang/reflect/Field;

.field public static final L:Landroid/view/animation/Interpolator;

.field public static final M:Landroid/view/animation/Interpolator;

.field public static final N:Landroid/view/animation/Interpolator;

.field public static final O:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Z

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public E:Landroid/os/Bundle;

.field public F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/f$m;",
            ">;"
        }
    .end annotation
.end field

.field public H:Landroidx/fragment/app/g;

.field public I:Ljava/lang/Runnable;

.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/f$l;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/f$j;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Landroidx/fragment/app/d;

.field public s:Landroidx/fragment/app/b;

.field public t:Landroidx/fragment/app/Fragment;

.field public u:Landroidx/fragment/app/Fragment;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/f;->L:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/f;->M:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/f;->N:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/f;->O:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/fragment/app/f;->c:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    iput v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Landroidx/fragment/app/f$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/f$a;-><init>(Landroidx/fragment/app/f;)V

    iput-object v0, p0, Landroidx/fragment/app/f;->I:Ljava/lang/Runnable;

    return-void
.end method

.method public static B0(Landroid/animation/Animator;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    move v1, v0

    .line 4
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 5
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 7
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    move v1, v0

    .line 8
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroidx/fragment/app/f;->B0(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public static C0(Landroidx/fragment/app/f$g;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    instance-of v1, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    instance-of v1, v0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_3

    .line 3
    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 6
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    invoke-static {p0}, Landroidx/fragment/app/f;->B0(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method public static S0(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static Z0(Landroid/view/View;Landroidx/fragment/app/f$g;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroidx/fragment/app/f;->c1(Landroid/view/View;Landroidx/fragment/app/f$g;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Landroidx/fragment/app/f$h;

    invoke-direct {p1, p0}, Landroidx/fragment/app/f$h;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroidx/fragment/app/f;->p0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    iget-object p1, p1, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroidx/fragment/app/f$e;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/f$e;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b1(Landroidx/fragment/app/g;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/g;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->I:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/g;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g;

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/f;->b1(Landroidx/fragment/app/g;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static c1(Landroid/view/View;Landroidx/fragment/app/f$g;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {p0}, Lw/q;->z(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p1}, Landroidx/fragment/app/f;->C0(Landroidx/fragment/app/f$g;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static g0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->g(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->m(Z)V

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->g(I)V

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/a;->l()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static g1(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static p0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 3

    const-string v0, "FragmentManager"

    .line 1
    :try_start_0
    sget-object v1, Landroidx/fragment/app/f;->K:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 2
    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/fragment/app/f;->K:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    :cond_0
    sget-object v1, Landroidx/fragment/app/f;->K:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    .line 6
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static x0(Landroid/content/Context;FF)Landroidx/fragment/app/f$g;
    .locals 0

    .line 1
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    sget-object p1, Landroidx/fragment/app/f;->M:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 4
    new-instance p1, Landroidx/fragment/app/f$g;

    invoke-direct {p1, p0}, Landroidx/fragment/app/f$g;-><init>(Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method public static z0(Landroid/content/Context;FFFF)Landroidx/fragment/app/f$g;
    .locals 10

    .line 1
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3
    sget-object p1, Landroidx/fragment/app/f;->L:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 6
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7
    sget-object p3, Landroidx/fragment/app/f;->M:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 10
    new-instance p1, Landroidx/fragment/app/f$g;

    invoke-direct {p1, p0}, Landroidx/fragment/app/f$g;-><init>(Landroid/view/animation/Animation;)V

    return-object p1
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public final A0(Lj/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lj/b;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Lj/b;->h(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->p:Z

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->A()Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->U:F

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->C0()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public C(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->D0(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/f;->D(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public D0(Landroidx/fragment/app/Fragment;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    .line 2
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    move v6, v0

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->s()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->t()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 7
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/f;->l0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    .line 10
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 12
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 13
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 14
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 15
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->S:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 16
    iget v0, p1, Landroidx/fragment/app/Fragment;->U:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    .line 17
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    :cond_4
    iput v1, p1, Landroidx/fragment/app/Fragment;->U:F

    .line 19
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->S:Z

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->s()I

    move-result v0

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->t()I

    move-result v1

    .line 22
    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/f;->v0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/f$g;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/fragment/app/f;->Z0(Landroid/view/View;Landroidx/fragment/app/f$g;)V

    .line 24
    iget-object v1, v0, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_5

    .line 25
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v1, v0, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 27
    iget-object v0, v0, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 28
    :cond_6
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->T:Z

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/f;->s(Landroidx/fragment/app/Fragment;)V

    :cond_7
    return-void
.end method

.method public E(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/f;->E(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public E0(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 3
    iget p2, p0, Landroidx/fragment/app/f;->q:I

    if-ne p1, p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput p1, p0, Landroidx/fragment/app/f;->q:I

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/f;->D0(Landroidx/fragment/app/Fragment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v0, p2

    :goto_2
    if-ge v0, p1, :cond_6

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_5

    .line 11
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->q:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->S:Z

    if-nez v2, :cond_5

    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/f;->D0(Landroidx/fragment/app/Fragment;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/f;->e1()V

    .line 14
    iget-boolean p1, p0, Landroidx/fragment/app/f;->v:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    if-eqz p1, :cond_7

    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/d;->n()V

    .line 16
    iput-boolean p2, p0, Landroidx/fragment/app/f;->v:Z

    :cond_7
    return-void
.end method

.method public F(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/f;->F(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public F0(Landroidx/fragment/app/Fragment;)V
    .locals 6

    iget v2, p0, Landroidx/fragment/app/f;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    return-void
.end method

.method public G(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->G(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public G0(Landroidx/fragment/app/Fragment;IIIZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->p:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    move v0, v8

    .line 2
    :cond_2
    :goto_1
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v1, :cond_4

    iget v1, v7, Landroidx/fragment/app/Fragment;->a:I

    if-le v0, v1, :cond_4

    if-nez v1, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_2

    .line 4
    :cond_3
    iget v0, v7, Landroidx/fragment/app/Fragment;->a:I

    .line 5
    :cond_4
    :goto_2
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->P:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_5

    iget v1, v7, Landroidx/fragment/app/Fragment;->a:I

    if-ge v1, v9, :cond_5

    if-le v0, v10, :cond_5

    move v11, v10

    goto :goto_3

    :cond_5
    move v11, v0

    .line 6
    :goto_3
    iget v0, v7, Landroidx/fragment/app/Fragment;->a:I

    const-string v12, "FragmentManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v0, v11, :cond_23

    .line 7
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->s:Z

    if-nez v0, :cond_6

    return-void

    .line 8
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->i()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 9
    :cond_7
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/View;)V

    .line 10
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->R0(Landroid/animation/Animator;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->z()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 12
    :cond_8
    iget v0, v7, Landroidx/fragment/app/Fragment;->a:I

    if-eqz v0, :cond_9

    if-eq v0, v8, :cond_14

    if-eq v0, v10, :cond_1f

    if-eq v0, v9, :cond_21

    goto/16 :goto_12

    :cond_9
    if-lez v11, :cond_14

    .line 13
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_a
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 15
    iget-object v1, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 18
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 19
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v6, v0, v1}, Landroidx/fragment/app/f;->q0(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_b

    .line 20
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroidx/fragment/app/Fragment;->o:I

    .line 21
    :cond_b
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->Q:Z

    .line 23
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->d:Ljava/lang/Boolean;

    goto :goto_4

    .line 24
    :cond_c
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->Q:Z

    .line 25
    :goto_4
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->Q:Z

    if-nez v0, :cond_d

    .line 26
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->P:Z

    if-le v11, v10, :cond_d

    move v11, v10

    .line 27
    :cond_d
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/d;

    .line 28
    iget-object v1, v6, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_e

    .line 29
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/f;

    goto :goto_5

    .line 30
    :cond_e
    invoke-virtual {v0}, Landroidx/fragment/app/d;->f()Landroidx/fragment/app/f;

    move-result-object v0

    :goto_5
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/f;

    .line 31
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    const-string v15, "Fragment "

    if-eqz v0, :cond_10

    .line 32
    iget-object v1, v6, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    iget v0, v0, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-ne v0, v1, :cond_f

    .line 33
    iget v0, v1, Landroidx/fragment/app/Fragment;->a:I

    if-ge v0, v8, :cond_10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_6

    .line 35
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_10
    :goto_6
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v14}, Landroidx/fragment/app/f;->J(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 37
    iput-boolean v14, v7, Landroidx/fragment/app/Fragment;->L:Z

    .line 38
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->O(Landroid/content/Context;)V

    .line 39
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_13

    .line 40
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_11

    .line 41
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/d;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_7

    .line 42
    :cond_11
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->P(Landroidx/fragment/app/Fragment;)V

    .line 43
    :goto_7
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v14}, Landroidx/fragment/app/f;->E(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 44
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->W:Z

    if-nez v0, :cond_12

    .line 45
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, Landroidx/fragment/app/f;->K(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 46
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->v0(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, Landroidx/fragment/app/f;->F(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_8

    .line 48
    :cond_12
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->O0(Landroid/os/Bundle;)V

    .line 49
    iput v8, v7, Landroidx/fragment/app/Fragment;->a:I

    .line 50
    :goto_8
    iput-boolean v14, v7, Landroidx/fragment/app/Fragment;->I:Z

    goto :goto_9

    .line 51
    :cond_13
    new-instance v0, Landroidx/fragment/app/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/f;->e0(Landroidx/fragment/app/Fragment;)V

    if-le v11, v8, :cond_1f

    .line 53
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_15
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->r:Z

    if-nez v0, :cond_1d

    .line 55
    iget v0, v7, Landroidx/fragment/app/Fragment;->D:I

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    .line 57
    :cond_16
    iget-object v0, v6, Landroidx/fragment/app/f;->s:Landroidx/fragment/app/b;

    iget v1, v7, Landroidx/fragment/app/Fragment;->D:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_18

    .line 58
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->t:Z

    if-nez v1, :cond_18

    .line 59
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->v()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v7, Landroidx/fragment/app/Fragment;->D:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    const-string v1, "unknown"

    .line 60
    :goto_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Landroidx/fragment/app/Fragment;->D:I

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v6, v2}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    goto :goto_b

    :cond_17
    move-object v0, v13

    .line 63
    :cond_18
    :goto_b
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    .line 64
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->B0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v0, v2}, Landroidx/fragment/app/Fragment;->x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 65
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 66
    iput-object v1, v7, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 67
    invoke-virtual {v1, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_19

    .line 68
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_19
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_1a

    .line 70
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_1a
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroidx/fragment/app/Fragment;->p0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v14}, Landroidx/fragment/app/f;->P(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 73
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    goto :goto_c

    :cond_1b
    move v8, v14

    :goto_c
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->S:Z

    goto :goto_d

    .line 74
    :cond_1c
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 75
    :cond_1d
    :goto_d
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->s0(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, Landroidx/fragment/app/f;->D(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 77
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 78
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->P0(Landroid/os/Bundle;)V

    .line 79
    :cond_1e
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    :cond_1f
    if-le v11, v10, :cond_21

    .line 80
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->L0()V

    .line 82
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->N(Landroidx/fragment/app/Fragment;Z)V

    :cond_21
    if-le v11, v9, :cond_36

    .line 83
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->J0()V

    .line 85
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->L(Landroidx/fragment/app/Fragment;Z)V

    .line 86
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    .line 87
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    goto/16 :goto_12

    :cond_23
    if-le v0, v11, :cond_36

    if-eq v0, v8, :cond_2e

    if-eq v0, v10, :cond_28

    if-eq v0, v9, :cond_26

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    goto/16 :goto_12

    :cond_24
    if-ge v11, v1, :cond_26

    .line 88
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->G0()V

    .line 90
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->I(Landroidx/fragment/app/Fragment;Z)V

    :cond_26
    if-ge v11, v9, :cond_28

    .line 91
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->M0()V

    .line 93
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->O(Landroidx/fragment/app/Fragment;Z)V

    :cond_28
    if-ge v11, v10, :cond_2e

    .line 94
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_29
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 96
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/d;->m(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_2a

    .line 97
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/f;->V0(Landroidx/fragment/app/Fragment;)V

    .line 98
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->z0()V

    .line 99
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->Q(Landroidx/fragment/app/Fragment;Z)V

    .line 100
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_2d

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    .line 101
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 102
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 103
    iget v0, v6, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    iget-boolean v0, v6, Landroidx/fragment/app/f;->y:Z

    if-nez v0, :cond_2b

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    iget v0, v7, Landroidx/fragment/app/Fragment;->U:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2b

    move/from16 v0, p3

    move/from16 v2, p4

    .line 105
    invoke-virtual {v6, v7, v0, v14, v2}, Landroidx/fragment/app/f;->v0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/f$g;

    move-result-object v0

    goto :goto_e

    :cond_2b
    move-object v0, v13

    .line 106
    :goto_e
    iput v1, v7, Landroidx/fragment/app/Fragment;->U:F

    if-eqz v0, :cond_2c

    .line 107
    invoke-virtual {v6, v7, v0, v11}, Landroidx/fragment/app/f;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$g;I)V

    .line 108
    :cond_2c
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    :cond_2d
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    .line 110
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    .line 111
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/g;

    .line 112
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->a0:Landroidx/lifecycle/k;

    invoke-virtual {v0, v13}, Landroidx/lifecycle/k;->i(Ljava/lang/Object;)V

    .line 113
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 114
    iput-boolean v14, v7, Landroidx/fragment/app/Fragment;->s:Z

    :cond_2e
    if-ge v11, v8, :cond_36

    .line 115
    iget-boolean v0, v6, Landroidx/fragment/app/f;->y:Z

    if-eqz v0, :cond_30

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/View;)V

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_f

    .line 120
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->i()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->i()Landroid/animation/Animator;

    move-result-object v0

    .line 122
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->R0(Landroid/animation/Animator;)V

    .line 123
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 124
    :cond_30
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->i()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_31

    goto :goto_11

    .line 125
    :cond_31
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_32
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->I:Z

    if-nez v0, :cond_33

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->y0()V

    .line 128
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->G(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_10

    .line 129
    :cond_33
    iput v14, v7, Landroidx/fragment/app/Fragment;->a:I

    .line 130
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->A0()V

    .line 131
    invoke-virtual {v6, v7, v14}, Landroidx/fragment/app/f;->H(Landroidx/fragment/app/Fragment;Z)V

    if-nez p5, :cond_36

    .line 132
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->I:Z

    if-nez v0, :cond_34

    .line 133
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/f;->y0(Landroidx/fragment/app/Fragment;)V

    goto :goto_12

    .line 134
    :cond_34
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/d;

    .line 135
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/Fragment;

    .line 136
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/f;

    goto :goto_12

    .line 137
    :cond_35
    :goto_11
    invoke-virtual {v7, v11}, Landroidx/fragment/app/Fragment;->Y0(I)V

    goto :goto_13

    :cond_36
    :goto_12
    move v8, v11

    .line 138
    :goto_13
    iget v0, v7, Landroidx/fragment/app/Fragment;->a:I

    if-eq v0, v8, :cond_37

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroidx/fragment/app/Fragment;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput v8, v7, Landroidx/fragment/app/Fragment;->a:I

    :cond_37
    return-void
.end method

.method public H(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->H(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public H0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->K()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public I(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->I(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public I0(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/f;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/fragment/app/f;->A:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->P:Z

    .line 5
    iget v3, p0, Landroidx/fragment/app/f;->q:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_1
    return-void
.end method

.method public J(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/f;->J(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final J0(Ljava/lang/String;II)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f;->f0()Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->d0(Z)V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->u:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->r0()Landroidx/fragment/app/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/e;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/f;->C:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/f;->K0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/f;->b:Z

    .line 8
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/f;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/f;->O0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/f;->q()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/f;->q()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/f;->a0()V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/f;->o()V

    return p1
.end method

.method public K(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/f;->K(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public K0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    goto :goto_4

    .line 5
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_7

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-eqz p3, :cond_5

    .line 7
    invoke-virtual {v3}, Landroidx/fragment/app/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    .line 8
    iget v3, v3, Landroidx/fragment/app/a;->m:I

    if-ne p4, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v0, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 9
    iget-object p5, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_a

    .line 10
    invoke-virtual {p5}, Landroidx/fragment/app/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Landroidx/fragment/app/a;->m:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    :cond_b
    move p3, v0

    .line 11
    :goto_4
    iget-object p4, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_c

    return v1

    .line 12
    :cond_c
    iget-object p4, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    :goto_5
    if-le p4, p3, :cond_d

    .line 13
    iget-object p5, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v2
.end method

.method public L(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->L(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final L0(Ljava/util/ArrayList;Ljava/util/ArrayList;IILj/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lj/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_5

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3
    invoke-virtual {v2}, Landroidx/fragment/app/a;->s()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 4
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/a;->q(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 5
    iget-object v4, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    .line 7
    :cond_1
    new-instance v4, Landroidx/fragment/app/f$m;

    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/f$m;-><init>(Landroidx/fragment/app/a;Z)V

    .line 8
    iget-object v6, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->u(Landroidx/fragment/app/Fragment$f;)V

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2}, Landroidx/fragment/app/a;->l()V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v2, v5}, Landroidx/fragment/app/a;->m(Z)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    :cond_3
    invoke-virtual {p0, p5}, Landroidx/fragment/app/f;->h(Lj/b;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public M(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/f;->M(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p3, :cond_1

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public M0(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget v0, p3, Landroidx/fragment/app/Fragment;->e:I

    if-gez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    .line 3
    :cond_0
    iget p3, p3, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public N(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->N(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public N0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/f;->v:Z

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    .line 10
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->q:Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public O(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->O(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final O0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/f;->i0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/f;->h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/f;->h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 11
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/f;->h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public P(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/f;->P(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/f$j;

    if-eqz p4, :cond_1

    .line 7
    iget-boolean p3, p2, Landroidx/fragment/app/f$j;->a:Z

    if-nez p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public P0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/e$a;

    invoke-interface {v1}, Landroidx/fragment/app/e$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Q(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f;->Q(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$j;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/f$j;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public Q0(Landroid/os/Parcelable;Landroidx/fragment/app/g;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->a:[Landroidx/fragment/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/g;->b()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/g;->a()Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/g;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_8

    .line 7
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 8
    sget-boolean v8, Landroidx/fragment/app/f;->J:Z

    if-eqz v8, :cond_3

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v8, v1

    .line 9
    :goto_2
    iget-object v9, p1, Landroidx/fragment/app/FragmentManagerState;->a:[Landroidx/fragment/app/FragmentState;

    array-length v10, v9

    if-ge v8, v10, :cond_4

    aget-object v10, v9, v8

    iget v10, v10, Landroidx/fragment/app/FragmentState;->b:I

    iget v11, v7, Landroidx/fragment/app/Fragment;->e:I

    if-eq v10, v11, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 10
    :cond_4
    array-length v9, v9

    if-ne v8, v9, :cond_5

    .line 11
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find active fragment with index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    .line 12
    :cond_5
    iget-object v9, p1, Landroidx/fragment/app/FragmentManagerState;->a:[Landroidx/fragment/app/FragmentState;

    aget-object v8, v9, v8

    .line 13
    iput-object v7, v8, Landroidx/fragment/app/FragmentState;->q:Landroidx/fragment/app/Fragment;

    .line 14
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 15
    iput v1, v7, Landroidx/fragment/app/Fragment;->v:I

    .line 16
    iput-boolean v1, v7, Landroidx/fragment/app/Fragment;->s:Z

    .line 17
    iput-boolean v1, v7, Landroidx/fragment/app/Fragment;->p:Z

    .line 18
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 19
    iget-object v9, v8, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    .line 20
    iget-object v10, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v10}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 21
    iget-object v9, v8, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v7, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    .line 22
    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v3, v0

    move-object v4, v3

    .line 23
    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->a:[Landroidx/fragment/app/FragmentState;

    array-length v5, v5

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    move v2, v1

    .line 24
    :goto_3
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->a:[Landroidx/fragment/app/FragmentState;

    array-length v6, v5

    if-ge v2, v6, :cond_d

    .line 25
    aget-object v5, v5, v2

    if-eqz v5, :cond_c

    if-eqz v3, :cond_9

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 27
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/g;

    move-object v11, v6

    goto :goto_4

    :cond_9
    move-object v11, v0

    :goto_4
    if-eqz v4, :cond_a

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 29
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/q;

    move-object v12, v6

    goto :goto_5

    :cond_a
    move-object v12, v0

    .line 30
    :goto_5
    iget-object v8, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    iget-object v9, p0, Landroidx/fragment/app/f;->s:Landroidx/fragment/app/b;

    iget-object v10, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroidx/fragment/app/FragmentState;->a(Landroidx/fragment/app/d;Landroidx/fragment/app/b;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/g;Landroidx/lifecycle/q;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 31
    sget-boolean v7, Landroidx/fragment/app/f;->J:Z

    if-eqz v7, :cond_b

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: active #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_b
    iget-object v7, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    iget v8, v6, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iput-object v0, v5, Landroidx/fragment/app/FragmentState;->q:Landroidx/fragment/app/Fragment;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_10

    .line 34
    invoke-virtual {p2}, Landroidx/fragment/app/g;->b()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_6

    :cond_e
    move v2, v1

    :goto_6
    move v3, v1

    :goto_7
    if-ge v3, v2, :cond_10

    .line 36
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 37
    iget v5, v4, Landroidx/fragment/app/Fragment;->i:I

    if-ltz v5, :cond_f

    .line 38
    iget-object v6, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-nez v5, :cond_f

    const-string v5, "FragmentManager"

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroidx/fragment/app/Fragment;->i:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 40
    :cond_10
    iget-object p2, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 41
    iget-object p2, p1, Landroidx/fragment/app/FragmentManagerState;->b:[I

    if-eqz p2, :cond_14

    move p2, v1

    .line 42
    :goto_8
    iget-object v2, p1, Landroidx/fragment/app/FragmentManagerState;->b:[I

    array-length v3, v2

    if-ge p2, v3, :cond_14

    .line 43
    iget-object v3, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_11

    .line 44
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instantiated fragment for index #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->b:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    :cond_11
    const/4 v3, 0x1

    .line 45
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->p:Z

    .line 46
    sget-boolean v3, Landroidx/fragment/app/f;->J:Z

    if-eqz v3, :cond_12

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_12
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 48
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 51
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_14
    iget-object p2, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    if-eqz p2, :cond_17

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    move p2, v1

    .line 54
    :goto_9
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    array-length v2, v0

    if-ge p2, v2, :cond_18

    .line 55
    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackState;->a(Landroidx/fragment/app/f;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 56
    sget-boolean v2, Landroidx/fragment/app/f;->J:Z

    if-eqz v2, :cond_15

    const-string v2, "FragmentManager"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: back stack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/fragment/app/a;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Lv/c;

    const-string v3, "FragmentManager"

    invoke-direct {v2, v3}, Lv/c;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    .line 60
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/a;->k(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 61
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 62
    :cond_15
    iget-object v2, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget v2, v0, Landroidx/fragment/app/a;->m:I

    if-ltz v2, :cond_16

    .line 64
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/f;->Y0(ILandroidx/fragment/app/a;)V

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 65
    :cond_17
    iput-object v0, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    .line 66
    :cond_18
    iget p2, p1, Landroidx/fragment/app/FragmentManagerState;->d:I

    if-ltz p2, :cond_19

    .line 67
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/f;->u:Landroidx/fragment/app/Fragment;

    .line 68
    :cond_19
    iget p1, p1, Landroidx/fragment/app/FragmentManagerState;->e:I

    iput p1, p0, Landroidx/fragment/app/f;->c:I

    return-void
.end method

.method public R(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public R0()Landroidx/fragment/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    invoke-static {v0}, Landroidx/fragment/app/f;->b1(Landroidx/fragment/app/g;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    return-object v0
.end method

.method public S(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->F0(Landroid/view/Menu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public T()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public T0()Landroid/os/Parcelable;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f;->m0()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/f;->b0()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/f;->f0()Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 8
    new-array v3, v2, [Landroidx/fragment/app/FragmentState;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, " has cleared index: "

    const-string v8, "Failure saving state: active "

    const-string v9, ": "

    const-string v10, "FragmentManager"

    if-ge v5, v2, :cond_8

    .line 9
    iget-object v11, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_7

    .line 10
    iget v6, v11, Landroidx/fragment/app/Fragment;->e:I

    if-gez v6, :cond_1

    .line 11
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    .line 12
    :cond_1
    new-instance v6, Landroidx/fragment/app/FragmentState;

    invoke-direct {v6, v11}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    aput-object v6, v3, v5

    .line 14
    iget v7, v11, Landroidx/fragment/app/Fragment;->a:I

    if-lez v7, :cond_4

    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-nez v7, :cond_4

    .line 15
    invoke-virtual {p0, v11}, Landroidx/fragment/app/f;->U0(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    .line 16
    iget-object v7, v11, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_5

    .line 17
    iget v7, v7, Landroidx/fragment/app/Fragment;->e:I

    if-gez v7, :cond_2

    .line 18
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    .line 19
    :cond_2
    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-nez v7, :cond_3

    .line 20
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    .line 21
    :cond_3
    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    iget-object v8, v11, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    const-string v12, "android:target_state"

    invoke-virtual {p0, v7, v12, v8}, Landroidx/fragment/app/f;->M0(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 22
    iget v7, v11, Landroidx/fragment/app/Fragment;->o:I

    if-eqz v7, :cond_5

    .line 23
    iget-object v8, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    invoke-virtual {v8, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 24
    :cond_4
    iget-object v7, v11, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    iput-object v7, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    .line 25
    :cond_5
    :goto_1
    sget-boolean v7, Landroidx/fragment/app/f;->J:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved state of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v6, v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_a

    .line 26
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_9

    const-string v0, "saveAllState: no fragments!"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1

    .line 27
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 28
    new-array v2, v0, [I

    move v5, v4

    :goto_2
    if-ge v5, v0, :cond_e

    .line 29
    iget-object v6, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->e:I

    aput v6, v2, v5

    .line 30
    aget v6, v2, v5

    if-gez v6, :cond_b

    .line 31
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v6}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    .line 34
    :cond_b
    sget-boolean v6, Landroidx/fragment/app/f;->J:Z

    if-eqz v6, :cond_c

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    move-object v2, v1

    .line 38
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 40
    new-array v1, v0, [Landroidx/fragment/app/BackStackState;

    :goto_3
    if-ge v4, v0, :cond_10

    .line 41
    new-instance v5, Landroidx/fragment/app/BackStackState;

    iget-object v6, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-direct {v5, v6}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/a;)V

    aput-object v5, v1, v4

    .line 42
    sget-boolean v5, Landroidx/fragment/app/f;->J:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 45
    :cond_10
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 46
    iput-object v3, v0, Landroidx/fragment/app/FragmentManagerState;->a:[Landroidx/fragment/app/FragmentState;

    .line 47
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->b:[I

    .line 48
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    .line 49
    iget-object v1, p0, Landroidx/fragment/app/f;->u:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_11

    .line 50
    iget v1, v1, Landroidx/fragment/app/Fragment;->e:I

    iput v1, v0, Landroidx/fragment/app/FragmentManagerState;->d:I

    .line 51
    :cond_11
    iget v1, p0, Landroidx/fragment/app/f;->c:I

    iput v1, v0, Landroidx/fragment/app/FragmentManagerState;->e:I

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/f;->W0()V

    return-object v0

    :cond_12
    :goto_4
    return-object v1
.end method

.method public U(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->H0(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public U0(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->K0(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/f;->M(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    .line 7
    iput-object v1, p0, Landroidx/fragment/app/f;->E:Landroid/os/Bundle;

    move-object v1, v0

    .line 8
    :cond_1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/f;->V0(Landroidx/fragment/app/Fragment;)V

    .line 10
    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 12
    :cond_3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 13
    :cond_4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->Q:Z

    if-nez v0, :cond_6

    if-nez v1, :cond_5

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 15
    :cond_5
    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->Q:Z

    const-string v0, "android:user_visible_hint"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    return-object v1
.end method

.method public V(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->I0(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public V0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5
    :goto_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/fragment/app/f;->F:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public W0()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 2
    :goto_0
    iget-object v6, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 3
    iget-object v6, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_7

    .line 4
    iget-boolean v7, v6, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_1

    iget v7, v7, Landroidx/fragment/app/Fragment;->e:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Landroidx/fragment/app/Fragment;->i:I

    .line 8
    sget-boolean v7, Landroidx/fragment/app/f;->J:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retainNonConfig: keeping retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/f;

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v7}, Landroidx/fragment/app/f;->W0()V

    .line 11
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/f;

    iget-object v7, v7, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    goto :goto_2

    .line 12
    :cond_3
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/g;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v0

    :goto_3
    if-ge v8, v2, :cond_4

    .line 14
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v5, :cond_6

    .line 16
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->A:Landroidx/lifecycle/q;

    if-eqz v7, :cond_6

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 18
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 19
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->A:Landroidx/lifecycle/q;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    .line 20
    iput-object v1, p0, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    goto :goto_5

    .line 21
    :cond_a
    new-instance v0, Landroidx/fragment/app/g;

    invoke-direct {v0, v3, v4, v5}, Landroidx/fragment/app/g;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroidx/fragment/app/f;->H:Landroidx/fragment/app/g;

    :goto_5
    return-void
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public X0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->g()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/f;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->g()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/f;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Y(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/f;->b:Z

    .line 2
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/f;->E0(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/f;->b:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/f;->f0()Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/f;->b:Z

    throw p1
.end method

.method public Y0(ILandroidx/fragment/app/a;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    .line 10
    :cond_3
    sget-boolean v1, Landroidx/fragment/app/f;->J:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_5
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_6
    iget-object p1, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Z()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public a()Landroidx/fragment/app/h;
    .locals 1

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f;)V

    return-object v0
.end method

.method public a0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/f;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/f;->A:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/f;->e1()V

    :cond_0
    return-void
.end method

.method public a1(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/e;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/f;->u:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 6
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    iget-object v4, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 9
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 13
    iget-object v4, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    .line 15
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 17
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/f;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    .line 22
    iget-object v4, p0, Landroidx/fragment/app/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 24
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 27
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    .line 28
    iget-object v4, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    .line 29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 30
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4, v0, p2, p3, p4}, Landroidx/fragment/app/a;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 32
    :cond_4
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 35
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v2

    :goto_4
    if-ge p4, p2, :cond_5

    .line 36
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 38
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 39
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 40
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p2, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 45
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v2, p2, :cond_7

    .line 46
    iget-object p4, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/f$l;

    .line 47
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    .line 48
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 49
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/f;->s:Landroidx/fragment/app/b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 52
    iget-object p2, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_8

    .line 53
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 54
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/f;->q:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 55
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/f;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 56
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/f;->x:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 57
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/f;->y:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 58
    iget-boolean p2, p0, Landroidx/fragment/app/f;->v:Z

    if-eqz p2, :cond_9

    .line 59
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-boolean p2, p0, Landroidx/fragment/app/f;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 61
    :cond_9
    iget-object p2, p0, Landroidx/fragment/app/f;->z:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 62
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Landroidx/fragment/app/f;->z:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b0()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_3

    .line 3
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->z()I

    move-result v5

    .line 5
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->h()Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/View;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 10
    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->i()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->i()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f;->f0()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/f;->m0()V

    return v0
.end method

.method public c0(Landroidx/fragment/app/f$l;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f;->p()V

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/fragment/app/f;->y:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    .line 6
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/f;->X0()V

    .line 8
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->E:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->E:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d0(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/f;->b:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->g()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/f;->p()V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->C:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/f;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/f;->i0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean p1, p0, Landroidx/fragment/app/f;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/f;->b:Z

    throw v0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment host has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d1(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->T:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->T:Z

    :cond_1
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->u:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->B0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/Fragment;->x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 6
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->p0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/f;->P(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 9
    :cond_1
    iput-object v2, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method public e1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/f;->I0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f0()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->d0(Z)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/f;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/f;->o0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/f;->b:Z

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/f;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/f;->O0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/f;->q()V

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/fragment/app/f;->q()V

    throw v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/f;->a0()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/f;->o()V

    return v1
.end method

.method public final f1(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lv/c;

    invoke-direct {v0, v1}, Lv/c;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/d;->i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/f;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_0
    throw p1
.end method

.method public g()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f;->p()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/f;->J0(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final h(Lj/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 5
    iget v2, v9, Landroidx/fragment/app/Fragment;->a:I

    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->r()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->s()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 7
    iget-object v2, v9, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->F:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->S:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p1, v9}, Lj/b;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v11, v0, Landroidx/fragment/app/a;->t:Z

    .line 2
    iget-object v0, v6, Landroidx/fragment/app/f;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/fragment/app/f;->D:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v0, v6, Landroidx/fragment/app/f;->D:Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/f;->s0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move v12, v1

    move v2, v9

    :goto_1
    const/4 v13, 0x1

    if-ge v2, v10, :cond_4

    .line 7
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    iget-object v4, v6, Landroidx/fragment/app/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/a;->n(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_2

    .line 10
    :cond_1
    iget-object v4, v6, Landroidx/fragment/app/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/a;->v(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_2
    if-nez v12, :cond_3

    .line 11
    iget-boolean v3, v3, Landroidx/fragment/app/a;->i:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v12, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v12, v13

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, v6, Landroidx/fragment/app/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 13
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/i;->B(Landroidx/fragment/app/f;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 14
    :cond_5
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/f;->g0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_6

    .line 15
    new-instance v14, Lj/b;

    invoke-direct {v14}, Lj/b;-><init>()V

    .line 16
    invoke-virtual {p0, v14}, Landroidx/fragment/app/f;->h(Lj/b;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/f;->L0(Ljava/util/ArrayList;Ljava/util/ArrayList;IILj/b;)I

    move-result v0

    .line 18
    invoke-virtual {p0, v14}, Landroidx/fragment/app/f;->A0(Lj/b;)V

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    if-eq v4, v9, :cond_7

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 19
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/i;->B(Landroidx/fragment/app/f;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 20
    iget v0, v6, Landroidx/fragment/app/f;->q:I

    invoke-virtual {p0, v0, v13}, Landroidx/fragment/app/f;->E0(IZ)V

    :cond_7
    :goto_6
    if-ge v9, v10, :cond_9

    .line 21
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 22
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    iget v1, v0, Landroidx/fragment/app/a;->m:I

    if-ltz v1, :cond_8

    .line 24
    invoke-virtual {p0, v1}, Landroidx/fragment/app/f;->n0(I)V

    const/4 v1, -0x1

    .line 25
    iput v1, v0, Landroidx/fragment/app/a;->m:I

    .line 26
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/a;->t()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_a

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/f;->P0()V

    :cond_a
    return-void
.end method

.method public i(Landroidx/fragment/app/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/f$m;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v5, v3, Landroidx/fragment/app/f$m;->a:Z

    if-nez v5, :cond_1

    .line 4
    iget-object v5, v3, Landroidx/fragment/app/f$m;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v3}, Landroidx/fragment/app/f$m;->c()V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/f$m;->e()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    iget-object v5, v3, Landroidx/fragment/app/f$m;->b:Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/a;->q(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_3

    .line 10
    iget-boolean v5, v3, Landroidx/fragment/app/f$m;->a:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/f$m;->b:Landroidx/fragment/app/a;

    .line 11
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 12
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v3}, Landroidx/fragment/app/f$m;->c()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/f$m;->d()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public j(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/f;->w0(Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->G:Z

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->q:Z

    .line 10
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-nez v2, :cond_1

    .line 11
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->T:Z

    .line 12
    :cond_1
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v1, :cond_2

    .line 13
    iput-boolean v0, p0, Landroidx/fragment/app/f;->v:Z

    :cond_2
    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/f;->F0(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 16
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return-void
.end method

.method public j0(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    iget v2, v1, Landroidx/fragment/app/Fragment;->C:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 7
    iget v2, v1, Landroidx/fragment/app/Fragment;->C:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Landroidx/fragment/app/a;)I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    sget-boolean v1, Landroidx/fragment/app/f;->J:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit p0

    return v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    .line 9
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10
    sget-boolean v1, Landroidx/fragment/app/f;->J:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$g;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    .line 2
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->Y0(I)V

    .line 5
    iget-object p3, p2, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Landroidx/fragment/app/f$i;

    iget-object v2, p2, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    invoke-direct {p3, v2, v1, v0}, Landroidx/fragment/app/f$i;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 7
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/View;)V

    .line 8
    invoke-static {p3}, Landroidx/fragment/app/f;->p0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 9
    new-instance v3, Landroidx/fragment/app/f$b;

    invoke-direct {v3, p0, v2, v1, p1}, Landroidx/fragment/app/f$b;-><init>(Landroidx/fragment/app/f;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p3, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10
    invoke-static {v0, p2}, Landroidx/fragment/app/f;->Z0(Landroid/view/View;Landroidx/fragment/app/f$g;)V

    .line 11
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p3, p2, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    .line 13
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->R0(Landroid/animation/Animator;)V

    .line 14
    new-instance v2, Landroidx/fragment/app/f$c;

    invoke-direct {v2, p0, v1, v0, p1}, Landroidx/fragment/app/f$c;-><init>(Landroidx/fragment/app/f;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-static {p1, p2}, Landroidx/fragment/app/f;->Z0(Landroid/view/View;Landroidx/fragment/app/f$g;)V

    .line 17
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public final l0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    .line 2
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public m(Landroidx/fragment/app/d;Landroidx/fragment/app/b;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/f;->s:Landroidx/fragment/app/b;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/f;->G:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f$m;

    invoke-virtual {v0}, Landroidx/fragment/app/f$m;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->G:Z

    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    .line 11
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz p1, :cond_3

    .line 12
    iput-boolean v0, p0, Landroidx/fragment/app/f;->v:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public n0(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/f;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    .line 5
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v3, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/f$l;

    invoke-interface {v3, p1, p2}, Landroidx/fragment/app/f$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->g()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/f;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    monitor-exit p0

    return v2

    .line 8
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    move-object v6, p0

    move-object v0, p3

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    .line 1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "class"

    .line 2
    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v4, Landroidx/fragment/app/f$k;->a:[I

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    const/4 v2, 0x1

    const/4 v8, -0x1

    .line 5
    invoke-virtual {v4, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    .line 6
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    iget-object v4, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v4}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/fragment/app/Fragment;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_3
    if-ne v5, v8, :cond_5

    if-ne v9, v8, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eq v9, v8, :cond_6

    .line 11
    invoke-virtual {p0, v9}, Landroidx/fragment/app/f;->j0(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_7

    if-eqz v10, :cond_7

    .line 12
    invoke-virtual {p0, v10}, Landroidx/fragment/app/f;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    if-eq v5, v8, :cond_8

    .line 13
    invoke-virtual {p0, v5}, Landroidx/fragment/app/f;->j0(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 14
    :cond_8
    sget-boolean v8, Landroidx/fragment/app/f;->J:Z

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateView: id=0x"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fname="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " existing="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "FragmentManager"

    .line 16
    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v4, :cond_b

    .line 17
    iget-object v4, v6, Landroidx/fragment/app/f;->s:Landroidx/fragment/app/b;

    invoke-virtual {v4, p3, v7, v3}, Landroidx/fragment/app/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 18
    iput-boolean v2, v4, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v9, :cond_a

    move v0, v9

    goto :goto_2

    :cond_a
    move v0, v5

    .line 19
    :goto_2
    iput v0, v4, Landroidx/fragment/app/Fragment;->C:I

    .line 20
    iput v5, v4, Landroidx/fragment/app/Fragment;->D:I

    .line 21
    iput-object v10, v4, Landroidx/fragment/app/Fragment;->E:Ljava/lang/String;

    .line 22
    iput-boolean v2, v4, Landroidx/fragment/app/Fragment;->s:Z

    .line 23
    iput-object v6, v4, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/f;

    .line 24
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    iput-object v0, v4, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/d;

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v3}, Landroidx/fragment/app/Fragment;->d0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/f;->j(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_3

    .line 27
    :cond_b
    iget-boolean v0, v4, Landroidx/fragment/app/Fragment;->s:Z

    if-nez v0, :cond_11

    .line 28
    iput-boolean v2, v4, Landroidx/fragment/app/Fragment;->s:Z

    .line 29
    iget-object v0, v6, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    iput-object v0, v4, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/d;

    .line 30
    iget-boolean v3, v4, Landroidx/fragment/app/Fragment;->I:Z

    if-nez v3, :cond_c

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v3}, Landroidx/fragment/app/Fragment;->d0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_c
    :goto_3
    move-object v8, v4

    .line 32
    iget v0, v6, Landroidx/fragment/app/f;->q:I

    if-ge v0, v2, :cond_d

    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/f;->G0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_4

    .line 34
    :cond_d
    invoke-virtual {p0, v8}, Landroidx/fragment/app/f;->F0(Landroidx/fragment/app/Fragment;)V

    .line 35
    :goto_4
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_10

    if-eqz v9, :cond_e

    .line 36
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 37
    :cond_e
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 38
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :cond_f
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    return-object v0

    .line 40
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/f;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/f;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->b:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public q0(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/f;->f1(Ljava/lang/RuntimeException;)V

    :cond_1
    return-object v0
.end method

.method public r(Landroidx/fragment/app/a;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->m(Z)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->l()V

    .line 3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/i;->B(Landroidx/fragment/app/f;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    .line 8
    iget p2, p0, Landroidx/fragment/app/f;->q:I

    invoke-virtual {p0, p2, v6}, Landroidx/fragment/app/f;->E0(IZ)V

    .line 9
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_6

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_5

    .line 12
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->S:Z

    if-eqz v2, :cond_5

    iget v2, v1, Landroidx/fragment/app/Fragment;->D:I

    .line 13
    invoke-virtual {p1, v2}, Landroidx/fragment/app/a;->p(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    iget v2, v1, Landroidx/fragment/app/Fragment;->U:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    .line 15
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    .line 16
    iput v3, v1, Landroidx/fragment/app/Fragment;->U:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 17
    iput v2, v1, Landroidx/fragment/app/Fragment;->U:F

    .line 18
    iput-boolean p3, v1, Landroidx/fragment/app/Fragment;->S:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public r0()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    return-object p0
.end method

.method public s(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->s()I

    move-result v0

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->F:Z

    xor-int/2addr v3, v1

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->t()I

    move-result v4

    .line 4
    invoke-virtual {p0, p1, v0, v3, v4}, Landroidx/fragment/app/f;->v0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/f$g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v3, v0, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 6
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 7
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->T0(Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/ViewGroup;

    .line 11
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 13
    iget-object v5, v0, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/f$d;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/f$d;-><init>(Landroidx/fragment/app/f;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/f;->Z0(Landroid/view/View;Landroidx/fragment/app/f$g;)V

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/f$g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 17
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/f;->Z0(Landroid/view/View;Landroidx/fragment/app/f$g;)V

    .line 18
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iget-object v0, v0, Landroidx/fragment/app/f$g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 20
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    move v0, v2

    .line 21
    :goto_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->T0(Z)V

    .line 24
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_6

    .line 25
    iput-boolean v1, p0, Landroidx/fragment/app/f;->v:Z

    .line 26
    :cond_6
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->T:Z

    .line 27
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->b0(Z)V

    return-void
.end method

.method public s0()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/f;->u:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public t(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->G:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->G:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v1, :cond_3

    .line 5
    sget-boolean v1, Landroidx/fragment/app/f;->J:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v1, :cond_2

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/f;->v:Z

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public t0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->F:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->T:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->T:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, v0}, Lv/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-static {v1, v0}, Lv/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public u0(I)Z
    .locals 1

    iget v0, p0, Landroidx/fragment/app/f;->q:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->t0(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/f$g;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->S(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Landroidx/fragment/app/f$g;

    invoke-direct {p1, v1}, Landroidx/fragment/app/f$g;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->T(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p2, Landroidx/fragment/app/f$g;

    invoke-direct {p2, p1}, Landroidx/fragment/app/f$g;-><init>(Landroid/animation/Animator;)V

    return-object p2

    :cond_1
    if-eqz v0, :cond_5

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "anim"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 8
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v2}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v3, Landroidx/fragment/app/f$g;

    invoke-direct {v3, v2}, Landroidx/fragment/app/f$g;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    throw p1

    :catch_1
    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 11
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    new-instance v2, Landroidx/fragment/app/f$g;

    invoke-direct {v2, v1}, Landroidx/fragment/app/f$g;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception v1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 14
    new-instance p2, Landroidx/fragment/app/f$g;

    invoke-direct {p2, p1}, Landroidx/fragment/app/f$g;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    .line 15
    :cond_4
    throw v1

    :cond_5
    const/4 p1, 0x0

    if-nez p2, :cond_6

    return-object p1

    .line 16
    :cond_6
    invoke-static {p2, p3}, Landroidx/fragment/app/f;->g1(IZ)I

    move-result p2

    if-gez p2, :cond_7

    return-object p1

    :cond_7
    const p3, 0x3f79999a    # 0.975f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    if-nez p4, :cond_8

    .line 17
    iget-object p2, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p2}, Landroidx/fragment/app/d;->l()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 18
    iget-object p2, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p2}, Landroidx/fragment/app/d;->k()I

    goto :goto_1

    .line 19
    :pswitch_0
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroidx/fragment/app/f;->x0(Landroid/content/Context;FF)Landroidx/fragment/app/f$g;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_1
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/f;->x0(Landroid/content/Context;FF)Landroidx/fragment/app/f$g;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f89999a    # 1.075f

    invoke-static {p1, v1, p2, v1, v0}, Landroidx/fragment/app/f;->z0(Landroid/content/Context;FFFF)Landroidx/fragment/app/f$g;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_3
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v1, v0, v1}, Landroidx/fragment/app/f;->z0(Landroid/content/Context;FFFF)Landroidx/fragment/app/f$g;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_4
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, p3, v1, v0}, Landroidx/fragment/app/f;->z0(Landroid/content/Context;FFFF)Landroidx/fragment/app/f$g;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_5
    iget-object p1, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f900000    # 1.125f

    invoke-static {p1, p2, v1, v0, v1}, Landroidx/fragment/app/f;->z0(Landroid/content/Context;FFFF)Landroidx/fragment/app/f$g;

    move-result-object p1

    :cond_8
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->u0(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public w0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/fragment/app/Fragment;->e:I

    if-ltz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/fragment/app/f;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/fragment/app/f;->c:I

    iget-object v1, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->U0(ILandroidx/fragment/app/Fragment;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->w:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/f;->x:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    return-void
.end method

.method public y(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v3, v1

    move v4, v3

    .line 2
    :goto_0
    iget-object v5, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3
    iget-object v5, p0, Landroidx/fragment/app/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->w0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/f;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 8
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/f;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/f;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->X()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_6
    iput-object v0, p0, Landroidx/fragment/app/f;->g:Ljava/util/ArrayList;

    return v4
.end method

.method public y0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget v0, p1, Landroidx/fragment/app/Fragment;->e:I

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()V

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/f;->y:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/f;->f0()Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/f;->Y(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/f;->r:Landroidx/fragment/app/d;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/f;->s:Landroidx/fragment/app/b;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/f;->t:Landroidx/fragment/app/Fragment;

    return-void
.end method
