.class public final Lp/a;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/a$c;,
        Lp/a$b;,
        Lp/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    invoke-static {p0}, Lp/a$a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public static c(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-static {p0, p1}, Lp/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static d(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lp/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static e(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lp/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static f(Landroid/graphics/drawable/Drawable;I)Z
    .locals 0

    invoke-static {p0, p1}, Lp/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p0, p1}, Lp/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0, p1}, Lp/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p0, p1}, Lp/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lp/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lp/b;

    invoke-interface {p0}, Lp/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p0
.end method
