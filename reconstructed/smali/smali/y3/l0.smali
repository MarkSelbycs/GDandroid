.class public final Ly3/l0;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final a:Ly3/h0;

.field public static final b:Ll3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/p<",
            "Ljava/lang/Object;",
            "Ld3/g$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ll3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/p<",
            "Lt3/x1<",
            "*>;",
            "Ld3/g$b;",
            "Lt3/x1<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Ll3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/p<",
            "Ly3/p0;",
            "Ld3/g$b;",
            "Ly3/p0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ly3/h0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly3/l0;->a:Ly3/h0;

    .line 2
    sget-object v0, Ly3/l0$a;->b:Ly3/l0$a;

    sput-object v0, Ly3/l0;->b:Ll3/p;

    .line 3
    sget-object v0, Ly3/l0$b;->b:Ly3/l0$b;

    sput-object v0, Ly3/l0;->c:Ll3/p;

    .line 4
    sget-object v0, Ly3/l0$c;->b:Ly3/l0$c;

    sput-object v0, Ly3/l0;->d:Ll3/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/g;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Ly3/l0;->a:Ly3/h0;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Ly3/p0;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ly3/p0;

    invoke-virtual {p1, p0}, Ly3/p0;->b(Ld3/g;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    sget-object v1, Ly3/l0;->c:Ll3/p;

    invoke-interface {p0, v0, v1}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lt3/x1;

    .line 5
    invoke-interface {v0, p0, p1}, Lt3/x1;->j0(Ld3/g;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Ld3/g;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ly3/l0;->b:Ll3/p;

    invoke-interface {p0, v0, v1}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm3/k;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Ld3/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Ly3/l0;->b(Ld3/g;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Ly3/l0;->a:Ly3/h0;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Ly3/p0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Ly3/p0;-><init>(Ld3/g;I)V

    sget-object p1, Ly3/l0;->d:Ll3/p;

    invoke-interface {p0, v0, p1}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 5
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lt3/x1;

    .line 6
    invoke-interface {p1, p0}, Lt3/x1;->I(Ld3/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
