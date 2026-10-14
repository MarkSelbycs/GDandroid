.class public final Lt3/g1;
.super Lt3/n1;
.source "JobSupport.kt"


# instance fields
.field public final e:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lt3/n1;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/g1;->e:Ll3/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt3/g1;->z(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lt3/g1;->e:Ll3/l;

    invoke-interface {v0, p1}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
