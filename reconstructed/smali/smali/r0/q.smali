.class public Lr0/q;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Lq0/r;


# instance fields
.field public final c:Landroidx/lifecycle/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/k<",
            "Lq0/r$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Lq0/r$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0}, Landroidx/lifecycle/k;-><init>()V

    iput-object v0, p0, Lr0/q;->c:Landroidx/lifecycle/k;

    .line 3
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lr0/q;->d:Lb1/c;

    .line 4
    sget-object v0, Lq0/r;->b:Lq0/r$b$b;

    invoke-virtual {p0, v0}, Lr0/q;->b(Lq0/r$b;)V

    return-void
.end method


# virtual methods
.method public a()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Lq0/r$b$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/q;->d:Lb1/c;

    return-object v0
.end method

.method public b(Lq0/r$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/q;->c:Landroidx/lifecycle/k;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/k;->g(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lq0/r$b$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lr0/q;->d:Lb1/c;

    check-cast p1, Lq0/r$b$c;

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lq0/r$b$a;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lq0/r$b$a;

    .line 6
    iget-object v0, p0, Lr0/q;->d:Lb1/c;

    invoke-virtual {p1}, Lq0/r$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
