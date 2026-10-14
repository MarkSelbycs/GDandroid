.class public final Lt3/o;
.super Lt3/j1;
.source "JobSupport.kt"


# instance fields
.field public final e:Lt3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lt3/j1;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/o;->e:Lt3/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt3/o;->z(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lt3/o;->e:Lt3/k;

    invoke-virtual {p0}, Lt3/n1;->A()Lt3/o1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lt3/k;->r(Lt3/h1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lt3/k;->E(Ljava/lang/Throwable;)V

    return-void
.end method
