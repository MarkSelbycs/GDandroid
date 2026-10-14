.class public final Lx3/b$a$a;
.super Lf3/k;
.source "Combine.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/b$a;->I(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1"
    f = "Combine.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:[Lw3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic i:Lv3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/d<",
            "Lb3/b0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lw3/d;ILjava/util/concurrent/atomic/AtomicInteger;Lv3/d;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw3/d<",
            "+TT;>;I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lv3/d<",
            "Lb3/b0<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ld3/d<",
            "-",
            "Lx3/b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx3/b$a$a;->f:[Lw3/d;

    iput p2, p0, Lx3/b$a$a;->g:I

    iput-object p3, p0, Lx3/b$a$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lx3/b$a$a;->i:Lv3/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx3/b$a$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_1
    iget-object p1, p0, Lx3/b$a$a;->f:[Lw3/d;

    iget v1, p0, Lx3/b$a$a;->g:I

    aget-object p1, p1, v1

    new-instance v4, Lx3/b$a$a$a;

    iget-object v5, p0, Lx3/b$a$a;->i:Lv3/d;

    invoke-direct {v4, v5, v1}, Lx3/b$a$a$a;-><init>(Lv3/d;I)V

    iput v3, p0, Lx3/b$a$a;->e:I

    invoke-interface {p1, v4, p0}, Lw3/d;->a(Lw3/e;Ld3/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 3
    :cond_2
    :goto_0
    iget-object p1, p0, Lx3/b$a$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lx3/b$a$a;->i:Lv3/d;

    invoke-static {p1, v2, v3, v2}, Lv3/t$a;->a(Lv3/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 5
    :cond_3
    sget-object p1, La3/o;->a:La3/o;

    return-object p1

    .line 6
    :goto_1
    iget-object v0, p0, Lx3/b$a$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lx3/b$a$a;->i:Lv3/d;

    invoke-static {v0, v2, v3, v2}, Lv3/t$a;->a(Lv3/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_4
    throw p1
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

    invoke-virtual {p0, p1, p2}, Lx3/b$a$a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Lx3/b$a$a;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lx3/b$a$a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 6
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

    new-instance p1, Lx3/b$a$a;

    iget-object v1, p0, Lx3/b$a$a;->f:[Lw3/d;

    iget v2, p0, Lx3/b$a$a;->g:I

    iget-object v3, p0, Lx3/b$a$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lx3/b$a$a;->i:Lv3/d;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lx3/b$a$a;-><init>([Lw3/d;ILjava/util/concurrent/atomic/AtomicInteger;Lv3/d;Ld3/d;)V

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/e0;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Lx3/b$a$a;->V(Lt3/e0;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
