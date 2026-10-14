.class public final Lw0/c$a;
.super Lf3/k;
.source "ContraintControllers.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw0/c;->f()Lw3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf3/k;",
        "Ll3/p<",
        "Lv3/q<",
        "-",
        "Lv0/b;",
        ">;",
        "Ld3/d<",
        "-",
        "La3/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "androidx.work.impl.constraints.controllers.ConstraintController$track$1"
    f = "ContraintControllers.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lw0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw0/c;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c<",
            "TT;>;",
            "Ld3/d<",
            "-",
            "Lw0/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw0/c$a;->g:Lw0/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lw0/c$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lw0/c$a;->f:Ljava/lang/Object;

    check-cast p1, Lv3/q;

    .line 2
    new-instance v1, Lw0/c$a$b;

    iget-object v3, p0, Lw0/c$a;->g:Lw0/c;

    invoke-direct {v1, v3, p1}, Lw0/c$a$b;-><init>(Lw0/c;Lv3/q;)V

    .line 3
    iget-object v3, p0, Lw0/c$a;->g:Lw0/c;

    invoke-static {v3}, Lw0/c;->a(Lw0/c;)Lx0/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lx0/g;->c(Lv0/a;)V

    .line 4
    new-instance v3, Lw0/c$a$a;

    iget-object v4, p0, Lw0/c$a;->g:Lw0/c;

    invoke-direct {v3, v4, v1}, Lw0/c$a$a;-><init>(Lw0/c;Lw0/c$a$b;)V

    iput v2, p0, Lw0/c$a;->e:I

    invoke-static {p1, v3, p0}, Lv3/o;->a(Lv3/q;Ll3/a;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public final V(Lv3/q;Ld3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/q<",
            "-",
            "Lv0/b;",
            ">;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lw0/c$a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Lw0/c$a;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lw0/c$a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ld3/d<",
            "*>;)",
            "Ld3/d<",
            "La3/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw0/c$a;

    iget-object v1, p0, Lw0/c$a;->g:Lw0/c;

    invoke-direct {v0, v1, p2}, Lw0/c$a;-><init>(Lw0/c;Ld3/d;)V

    iput-object p1, v0, Lw0/c$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv3/q;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Lw0/c$a;->V(Lv3/q;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
