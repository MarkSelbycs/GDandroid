.class public final Lw3/c$a;
.super Ljava/lang/Object;
.source "Distinct.kt"

# interfaces
.implements Lw3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/c;->a(Lw3/e;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw3/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lm3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lw3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw3/c;Lm3/q;Lw3/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/c<",
            "TT;>;",
            "Lm3/q<",
            "Ljava/lang/Object;",
            ">;",
            "Lw3/e<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lw3/c$a;->a:Lw3/c;

    iput-object p2, p0, Lw3/c$a;->b:Lm3/q;

    iput-object p3, p0, Lw3/c$a;->c:Lw3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lw3/c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw3/c$a$a;

    iget v1, v0, Lw3/c$a$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw3/c$a$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw3/c$a$a;

    invoke-direct {v0, p0, p2}, Lw3/c$a$a;-><init>(Lw3/c$a;Ld3/d;)V

    :goto_0
    iget-object p2, v0, Lw3/c$a$a;->d:Ljava/lang/Object;

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lw3/c$a$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La3/j;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lw3/c$a;->a:Lw3/c;

    iget-object p2, p2, Lw3/c;->b:Ll3/l;

    invoke-interface {p2, p1}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v2, p0, Lw3/c$a;->b:Lm3/q;

    iget-object v2, v2, Lm3/q;->a:Ljava/lang/Object;

    sget-object v4, Lx3/e;->a:Ly3/h0;

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Lw3/c$a;->a:Lw3/c;

    iget-object v4, v4, Lw3/c;->c:Ll3/p;

    invoke-interface {v4, v2, p2}, Ll3/p;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    sget-object p1, La3/o;->a:La3/o;

    return-object p1

    .line 5
    :cond_4
    :goto_1
    iget-object v2, p0, Lw3/c$a;->b:Lm3/q;

    iput-object p2, v2, Lm3/q;->a:Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lw3/c$a;->c:Lw3/e;

    iput v3, v0, Lw3/c$a$a;->f:I

    invoke-interface {p2, p1, v0}, Lw3/e;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
