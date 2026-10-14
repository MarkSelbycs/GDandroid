.class public Lw/a0$h;
.super Lw/a0$g;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public m:Lo/b;


# direct methods
.method public constructor <init>(Lw/a0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw/a0$g;-><init>(Lw/a0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw/a0$h;->m:Lo/b;

    return-void
.end method

.method public constructor <init>(Lw/a0;Lw/a0$h;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lw/a0$g;-><init>(Lw/a0;Lw/a0$g;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lw/a0$h;->m:Lo/b;

    .line 5
    iget-object p1, p2, Lw/a0$h;->m:Lo/b;

    iput-object p1, p0, Lw/a0$h;->m:Lo/b;

    return-void
.end method


# virtual methods
.method public b()Lw/a0;
    .locals 1

    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lw/a0;->s(Landroid/view/WindowInsets;)Lw/a0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lw/a0;
    .locals 1

    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lw/a0;->s(Landroid/view/WindowInsets;)Lw/a0;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lo/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lw/a0$h;->m:Lo/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Lo/b;->b(IIII)Lo/b;

    move-result-object v0

    iput-object v0, p0, Lw/a0$h;->m:Lo/b;

    .line 8
    :cond_0
    iget-object v0, p0, Lw/a0$h;->m:Lo/b;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public r(Lo/b;)V
    .locals 0

    iput-object p1, p0, Lw/a0$h;->m:Lo/b;

    return-void
.end method
