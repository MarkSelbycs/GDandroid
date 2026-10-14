.class public final Lt3/q1;
.super Lt3/w1;
.source "Builders.common.kt"


# instance fields
.field public final d:Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/d<",
            "La3/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3/g;Ll3/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g;",
            "Ll3/p<",
            "-",
            "Lt3/e0;",
            "-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lt3/w1;-><init>(Ld3/g;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Le3/b;->a(Ll3/p;Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    iput-object p1, p0, Lt3/q1;->d:Ld3/d;

    return-void
.end method


# virtual methods
.method public u0()V
    .locals 1

    iget-object v0, p0, Lt3/q1;->d:Ld3/d;

    invoke-static {v0, p0}, Lz3/a;->b(Ld3/d;Ld3/d;)V

    return-void
.end method
