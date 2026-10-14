.class public final Lf/g;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lq/a;)Landroid/view/Menu;
    .locals 1

    new-instance v0, Lf/h;

    invoke-direct {v0, p0, p1}, Lf/h;-><init>(Landroid/content/Context;Lq/a;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lq/b;)Landroid/view/MenuItem;
    .locals 1

    new-instance v0, Lf/e;

    invoke-direct {v0, p0, p1}, Lf/e;-><init>(Landroid/content/Context;Lq/b;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lq/c;)Landroid/view/SubMenu;
    .locals 1

    new-instance v0, Lf/j;

    invoke-direct {v0, p0, p1}, Lf/j;-><init>(Landroid/content/Context;Lq/c;)V

    return-object v0
.end method
