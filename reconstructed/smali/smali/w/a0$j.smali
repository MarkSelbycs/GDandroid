.class public Lw/a0$j;
.super Lw/a0$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public n:Lo/b;

.field public o:Lo/b;

.field public p:Lo/b;


# direct methods
.method public constructor <init>(Lw/a0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw/a0$i;-><init>(Lw/a0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw/a0$j;->n:Lo/b;

    .line 3
    iput-object p1, p0, Lw/a0$j;->o:Lo/b;

    .line 4
    iput-object p1, p0, Lw/a0$j;->p:Lo/b;

    return-void
.end method

.method public constructor <init>(Lw/a0;Lw/a0$j;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lw/a0$i;-><init>(Lw/a0;Lw/a0$i;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lw/a0$j;->n:Lo/b;

    .line 7
    iput-object p1, p0, Lw/a0$j;->o:Lo/b;

    .line 8
    iput-object p1, p0, Lw/a0$j;->p:Lo/b;

    return-void
.end method


# virtual methods
.method public h()Lo/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/a0$j;->o:Lo/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lo/b;->d(Landroid/graphics/Insets;)Lo/b;

    move-result-object v0

    iput-object v0, p0, Lw/a0$j;->o:Lo/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lw/a0$j;->o:Lo/b;

    return-object v0
.end method

.method public j()Lo/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/a0$j;->n:Lo/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lo/b;->d(Landroid/graphics/Insets;)Lo/b;

    move-result-object v0

    iput-object v0, p0, Lw/a0$j;->n:Lo/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lw/a0$j;->n:Lo/b;

    return-object v0
.end method

.method public l()Lo/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/a0$j;->p:Lo/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lo/b;->d(Landroid/graphics/Insets;)Lo/b;

    move-result-object v0

    iput-object v0, p0, Lw/a0$j;->p:Lo/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lw/a0$j;->p:Lo/b;

    return-object v0
.end method

.method public r(Lo/b;)V
    .locals 0

    return-void
.end method
