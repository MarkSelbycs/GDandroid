.class public abstract Lt3/b0;
.super Ld3/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ld3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/b0$a;
    }
.end annotation


# static fields
.field public static final b:Lt3/b0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lt3/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/b0$a;-><init>(Lm3/g;)V

    sput-object v0, Lt3/b0;->b:Lt3/b0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ld3/e;->k:Ld3/e$b;

    invoke-direct {p0, v0}, Ld3/a;-><init>(Ld3/g$c;)V

    return-void
.end method


# virtual methods
.method public final M(Ld3/d;)Ld3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld3/d<",
            "-TT;>;)",
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ly3/j;

    invoke-direct {v0, p0, p1}, Ly3/j;-><init>(Lt3/b0;Ld3/d;)V

    return-object v0
.end method

.method public c(Ld3/g$c;)Ld3/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ld3/g$b;",
            ">(",
            "Ld3/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld3/e$a;->a(Ld3/e;Ld3/g$c;)Ld3/g$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(Ld3/g;Ljava/lang/Runnable;)V
.end method

.method public final i0(Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 1
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly3/j;

    .line 2
    invoke-virtual {p1}, Ly3/j;->o()V

    return-void
.end method

.method public j(Ld3/g$c;)Ld3/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g$c<",
            "*>;)",
            "Ld3/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld3/e$a;->b(Ld3/e;Ld3/g$c;)Ld3/g;

    move-result-object p1

    return-object p1
.end method

.method public l(Ld3/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Ld3/g;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public o(I)Lt3/b0;
    .locals 1

    .line 1
    invoke-static {p1}, Ly3/p;->a(I)V

    .line 2
    new-instance v0, Ly3/o;

    invoke-direct {v0, p0, p1}, Ly3/o;-><init>(Lt3/b0;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lt3/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt3/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
