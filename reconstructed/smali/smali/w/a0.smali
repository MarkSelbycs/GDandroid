.class public Lw/a0;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/a0$a;,
        Lw/a0$n;,
        Lw/a0$m;,
        Lw/a0$e;,
        Lw/a0$d;,
        Lw/a0$c;,
        Lw/a0$f;,
        Lw/a0$b;,
        Lw/a0$k;,
        Lw/a0$j;,
        Lw/a0$i;,
        Lw/a0$h;,
        Lw/a0$g;,
        Lw/a0$l;
    }
.end annotation


# static fields
.field public static final b:Lw/a0;


# instance fields
.field public final a:Lw/a0$l;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lw/a0$k;->q:Lw/a0;

    sput-object v0, Lw/a0;->b:Lw/a0;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lw/a0$l;->b:Lw/a0;

    sput-object v0, Lw/a0;->b:Lw/a0;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lw/a0$k;

    invoke-direct {v0, p0, p1}, Lw/a0$k;-><init>(Lw/a0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lw/a0$j;

    invoke-direct {v0, p0, p1}, Lw/a0$j;-><init>(Lw/a0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lw/a0$i;

    invoke-direct {v0, p0, p1}, Lw/a0$i;-><init>(Lw/a0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lw/a0;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p1, Lw/a0;->a:Lw/a0$l;

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Lw/a0$k;

    if-eqz v1, :cond_0

    .line 9
    new-instance v0, Lw/a0$k;

    move-object v1, p1

    check-cast v1, Lw/a0$k;

    invoke-direct {v0, p0, v1}, Lw/a0$k;-><init>(Lw/a0;Lw/a0$k;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 10
    instance-of v0, p1, Lw/a0$j;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lw/a0$j;

    move-object v1, p1

    check-cast v1, Lw/a0$j;

    invoke-direct {v0, p0, v1}, Lw/a0$j;-><init>(Lw/a0;Lw/a0$j;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    .line 12
    :cond_1
    instance-of v0, p1, Lw/a0$i;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Lw/a0$i;

    move-object v1, p1

    check-cast v1, Lw/a0$i;

    invoke-direct {v0, p0, v1}, Lw/a0$i;-><init>(Lw/a0;Lw/a0$i;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p1, Lw/a0$h;

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Lw/a0$h;

    move-object v1, p1

    check-cast v1, Lw/a0$h;

    invoke-direct {v0, p0, v1}, Lw/a0$h;-><init>(Lw/a0;Lw/a0$h;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p1, Lw/a0$g;

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Lw/a0$g;

    move-object v1, p1

    check-cast v1, Lw/a0$g;

    invoke-direct {v0, p0, v1}, Lw/a0$g;-><init>(Lw/a0;Lw/a0$g;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, Lw/a0$l;

    invoke-direct {v0, p0}, Lw/a0$l;-><init>(Lw/a0;)V

    iput-object v0, p0, Lw/a0;->a:Lw/a0$l;

    .line 19
    :goto_0
    invoke-virtual {p1, p0}, Lw/a0$l;->e(Lw/a0;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Lw/a0$l;

    invoke-direct {p1, p0}, Lw/a0$l;-><init>(Lw/a0;)V

    iput-object p1, p0, Lw/a0;->a:Lw/a0$l;

    :goto_1
    return-void
.end method

.method public static s(Landroid/view/WindowInsets;)Lw/a0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lw/a0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Lw/a0;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/view/WindowInsets;Landroid/view/View;)Lw/a0;
    .locals 1

    .line 1
    new-instance v0, Lw/a0;

    invoke-static {p0}, Lv/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Lw/a0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lw/q;->C(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lw/q;->t(Landroid/view/View;)Lw/a0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw/a0;->p(Lw/a0;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw/a0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lw/a0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->a()Lw/a0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lw/a0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->b()Lw/a0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lw/a0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->c()Lw/a0;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0, p1}, Lw/a0$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Lw/c;
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->f()Lw/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lw/a0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lw/a0;

    .line 3
    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    iget-object p1, p1, Lw/a0;->a:Lw/a0$l;

    invoke-static {v0, p1}, Lv/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Lo/b;
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0, p1}, Lw/a0$l;->g(I)Lo/b;

    move-result-object p1

    return-object p1
.end method

.method public g()Lo/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->i()Lo/b;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->k()Lo/b;

    move-result-object v0

    iget v0, v0, Lo/b;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lw/a0$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->k()Lo/b;

    move-result-object v0

    iget v0, v0, Lo/b;->a:I

    return v0
.end method

.method public j()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->k()Lo/b;

    move-result-object v0

    iget v0, v0, Lo/b;->c:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->k()Lo/b;

    move-result-object v0

    iget v0, v0, Lo/b;->b:I

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0}, Lw/a0$l;->m()Z

    move-result v0

    return v0
.end method

.method public m(IIII)Lw/a0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lw/a0$b;

    invoke-direct {v0, p0}, Lw/a0$b;-><init>(Lw/a0;)V

    .line 2
    invoke-static {p1, p2, p3, p4}, Lo/b;->b(IIII)Lo/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw/a0$b;->c(Lo/b;)Lw/a0$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lw/a0$b;->a()Lw/a0;

    move-result-object p1

    return-object p1
.end method

.method public n([Lo/b;)V
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0, p1}, Lw/a0$l;->o([Lo/b;)V

    return-void
.end method

.method public o(Lo/b;)V
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0, p1}, Lw/a0$l;->p(Lo/b;)V

    return-void
.end method

.method public p(Lw/a0;)V
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0, p1}, Lw/a0$l;->q(Lw/a0;)V

    return-void
.end method

.method public q(Lo/b;)V
    .locals 1

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    invoke-virtual {v0, p1}, Lw/a0$l;->r(Lo/b;)V

    return-void
.end method

.method public r()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lw/a0;->a:Lw/a0$l;

    instance-of v1, v0, Lw/a0$g;

    if-eqz v1, :cond_0

    check-cast v0, Lw/a0$g;

    iget-object v0, v0, Lw/a0$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
