.class public final Lx3/a$b;
.super Lf3/k;
.source "ChannelFlow.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/a;->e()Ll3/p;
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
        "-TT;>;",
        "Ld3/d<",
        "-",
        "La3/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1"
    f = "ChannelFlow.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lx3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx3/a;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a<",
            "TT;>;",
            "Ld3/d<",
            "-",
            "Lx3/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx3/a$b;->g:Lx3/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lx3/a$b;->e:I

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

    iget-object p1, p0, Lx3/a$b;->f:Ljava/lang/Object;

    check-cast p1, Lv3/q;

    iget-object v1, p0, Lx3/a$b;->g:Lx3/a;

    iput v2, p0, Lx3/a$b;->e:I

    invoke-virtual {v1, p1, p0}, Lx3/a;->d(Lv3/q;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

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
            "-TT;>;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx3/a$b;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Lx3/a$b;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lx3/a$b;->I(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lx3/a$b;

    iget-object v1, p0, Lx3/a$b;->g:Lx3/a;

    invoke-direct {v0, v1, p2}, Lx3/a$b;-><init>(Lx3/a;Ld3/d;)V

    iput-object p1, v0, Lx3/a$b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv3/q;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Lx3/a$b;->V(Lv3/q;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
