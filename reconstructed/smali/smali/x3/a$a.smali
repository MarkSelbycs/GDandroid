.class public final Lx3/a$a;
.super Lf3/k;
.source "ChannelFlow.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/a;->c(Lx3/a;Lw3/e;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf3/k;",
        "Ll3/p<",
        "Lt3/e0;",
        "Ld3/d<",
        "-",
        "La3/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lw3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lx3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw3/e;Lx3/a;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/e<",
            "-TT;>;",
            "Lx3/a<",
            "TT;>;",
            "Ld3/d<",
            "-",
            "Lx3/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx3/a$a;->g:Lw3/e;

    iput-object p2, p0, Lx3/a$a;->h:Lx3/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx3/a$a;->e:I

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

    iget-object p1, p0, Lx3/a$a;->f:Ljava/lang/Object;

    check-cast p1, Lt3/e0;

    .line 2
    iget-object v1, p0, Lx3/a$a;->g:Lw3/e;

    iget-object v3, p0, Lx3/a$a;->h:Lx3/a;

    invoke-virtual {v3, p1}, Lx3/a;->g(Lt3/e0;)Lv3/s;

    move-result-object p1

    iput v2, p0, Lx3/a$a;->e:I

    invoke-static {v1, p1, p0}, Lw3/f;->c(Lw3/e;Lv3/s;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 3
    :cond_2
    :goto_0
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public final V(Lt3/e0;Ld3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e0;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx3/a$a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Lx3/a$a;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lx3/a$a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 3
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

    new-instance v0, Lx3/a$a;

    iget-object v1, p0, Lx3/a$a;->g:Lw3/e;

    iget-object v2, p0, Lx3/a$a;->h:Lx3/a;

    invoke-direct {v0, v1, v2, p2}, Lx3/a$a;-><init>(Lw3/e;Lx3/a;Ld3/d;)V

    iput-object p1, v0, Lx3/a$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/e0;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Lx3/a$a;->V(Lt3/e0;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
