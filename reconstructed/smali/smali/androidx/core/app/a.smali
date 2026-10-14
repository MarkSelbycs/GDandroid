.class public Landroidx/core/app/a;
.super Landroidx/core/content/a;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/a$b;,
        Landroidx/core/app/a$a;,
        Landroidx/core/app/a$c;
    }
.end annotation


# static fields
.field public static c:Landroidx/core/app/a$c;


# direct methods
.method public static h(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static i(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static j()Landroidx/core/app/a$c;
    .locals 1

    sget-object v0, Landroidx/core/app/a;->c:Landroidx/core/app/a$c;

    return-object v0
.end method

.method public static k(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static l(Landroid/app/Activity;Landroidx/core/app/k;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/app/a$b;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static m(Landroid/app/Activity;Landroidx/core/app/k;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/app/a$b;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static n(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/a$a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static o(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Landroidx/core/app/a$a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public static p(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$b;->e(Landroid/app/Activity;)V

    return-void
.end method
