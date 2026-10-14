.class public Lj0/b$a;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj0/b$c;

.field public final synthetic b:Lj0/b;


# direct methods
.method public constructor <init>(Lj0/b;Lj0/b$c;)V
    .locals 0

    iput-object p1, p0, Lj0/b$a;->b:Lj0/b;

    iput-object p2, p0, Lj0/b$a;->a:Lj0/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lj0/b$a;->b:Lj0/b;

    iget-object v1, p0, Lj0/b$a;->a:Lj0/b$c;

    invoke-virtual {v0, p1, v1}, Lj0/b;->n(FLj0/b$c;)V

    .line 3
    iget-object v0, p0, Lj0/b$a;->b:Lj0/b;

    iget-object v1, p0, Lj0/b$a;->a:Lj0/b$c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lj0/b;->b(FLj0/b$c;Z)V

    .line 4
    iget-object p1, p0, Lj0/b$a;->b:Lj0/b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
