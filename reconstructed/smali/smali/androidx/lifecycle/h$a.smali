.class public Landroidx/lifecycle/h$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/d$c;

.field public b:Landroidx/lifecycle/e;


# virtual methods
.method public a(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/d$b;->e()Landroidx/lifecycle/d$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-static {v1, v0}, Landroidx/lifecycle/h;->i(Landroidx/lifecycle/d$c;Landroidx/lifecycle/d$c;)Landroidx/lifecycle/d$c;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/h$a;->b:Landroidx/lifecycle/e;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;)V

    .line 4
    iput-object v0, p0, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    return-void
.end method
