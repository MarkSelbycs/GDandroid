.class public final Lt3/q;
.super Lt3/j1;
.source "JobSupport.kt"

# interfaces
.implements Lt3/p;


# instance fields
.field public final e:Lt3/r;


# direct methods
.method public constructor <init>(Lt3/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/j1;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/q;->e:Lt3/r;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lt3/n1;->A()Lt3/o1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt3/o1;->G(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt3/q;->z(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lt3/q;->e:Lt3/r;

    invoke-virtual {p0}, Lt3/n1;->A()Lt3/o1;

    move-result-object v0

    invoke-interface {p1, v0}, Lt3/r;->h0(Lt3/v1;)V

    return-void
.end method
