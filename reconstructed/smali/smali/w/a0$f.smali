.class public Lw/a0$f;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lw/a0;

.field public b:[Lo/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lw/a0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw/a0;-><init>(Lw/a0;)V

    invoke-direct {p0, v0}, Lw/a0$f;-><init>(Lw/a0;)V

    return-void
.end method

.method public constructor <init>(Lw/a0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw/a0$f;->a:Lw/a0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw/a0$f;->b:[Lo/b;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lw/a0$m;->a(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 3
    iget-object v2, p0, Lw/a0$f;->b:[Lo/b;

    const/4 v3, 0x2

    invoke-static {v3}, Lw/a0$m;->a(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lw/a0$f;->a:Lw/a0;

    invoke-virtual {v2, v3}, Lw/a0;->f(I)Lo/b;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lw/a0$f;->a:Lw/a0;

    invoke-virtual {v0, v1}, Lw/a0;->f(I)Lo/b;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {v0, v2}, Lo/b;->a(Lo/b;Lo/b;)Lo/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw/a0$f;->f(Lo/b;)V

    .line 7
    iget-object v0, p0, Lw/a0$f;->b:[Lo/b;

    const/16 v1, 0x10

    invoke-static {v1}, Lw/a0$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lw/a0$f;->e(Lo/b;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lw/a0$f;->b:[Lo/b;

    const/16 v1, 0x20

    invoke-static {v1}, Lw/a0$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lw/a0$f;->c(Lo/b;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lw/a0$f;->b:[Lo/b;

    const/16 v1, 0x40

    invoke-static {v1}, Lw/a0$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Lw/a0$f;->g(Lo/b;)V

    :cond_4
    return-void
.end method

.method public b()Lw/a0;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lo/b;)V
    .locals 0

    return-void
.end method

.method public d(Lo/b;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public e(Lo/b;)V
    .locals 0

    return-void
.end method

.method public f(Lo/b;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public g(Lo/b;)V
    .locals 0

    return-void
.end method
