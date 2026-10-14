.class public final Lt3/a0$b;
.super Lm3/l;
.source "CoroutineContext.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/a0;->a(Ld3/g;Ld3/g;Z)Ld3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/p<",
        "Ld3/g;",
        "Ld3/g$b;",
        "Ld3/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lm3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/q<",
            "Ld3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lm3/q;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm3/q<",
            "Ld3/g;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lt3/a0$b;->b:Lm3/q;

    iput-boolean p2, p0, Lt3/a0$b;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ld3/g;Ld3/g$b;)Ld3/g;
    .locals 4

    .line 1
    instance-of v0, p2, Lt3/z;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lt3/a0$b;->b:Lm3/q;

    iget-object v0, v0, Lm3/q;->a:Ljava/lang/Object;

    check-cast v0, Ld3/g;

    invoke-interface {p2}, Ld3/g$b;->getKey()Ld3/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lt3/a0$b;->c:Z

    check-cast p2, Lt3/z;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lt3/z;->V()Lt3/z;

    move-result-object p2

    :cond_1
    invoke-interface {p1, p2}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object v1, p0, Lt3/a0$b;->b:Lm3/q;

    iget-object v2, v1, Lm3/q;->a:Ljava/lang/Object;

    check-cast v2, Ld3/g;

    invoke-interface {p2}, Ld3/g$b;->getKey()Ld3/g$c;

    move-result-object v3

    invoke-interface {v2, v3}, Ld3/g;->j(Ld3/g$c;)Ld3/g;

    move-result-object v2

    iput-object v2, v1, Lm3/q;->a:Ljava/lang/Object;

    .line 5
    check-cast p2, Lt3/z;

    invoke-interface {p2, v0}, Lt3/z;->H(Ld3/g$b;)Ld3/g;

    move-result-object p2

    invoke-interface {p1, p2}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld3/g;

    check-cast p2, Ld3/g$b;

    invoke-virtual {p0, p1, p2}, Lt3/a0$b;->b(Ld3/g;Ld3/g$b;)Ld3/g;

    move-result-object p1

    return-object p1
.end method
