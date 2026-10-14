.class public final Lw/h;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Lw/b;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1}, Lq/b;->a(Lw/b;)Lq/b;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1, p2}, Lq/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lw/h$a;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1}, Lq/b;->setContentDescription(Ljava/lang/CharSequence;)Lq/b;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lw/h$a;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1}, Lq/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lw/h$a;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1}, Lq/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lw/h$a;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/MenuItem;CI)V
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1, p2}, Lq/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lw/h$a;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lq/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq/b;

    invoke-interface {p0, p1}, Lq/b;->setTooltipText(Ljava/lang/CharSequence;)Lq/b;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lw/h$a;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method
