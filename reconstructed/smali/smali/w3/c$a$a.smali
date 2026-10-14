.class public final Lw3/c$a$a;
.super Lf3/d;
.source "Distinct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/c$a;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2"
    f = "Distinct.kt"
    l = {
        0x4d
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lw3/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lw3/c$a;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/c$a<",
            "-TT;>;",
            "Ld3/d<",
            "-",
            "Lw3/c$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw3/c$a$a;->e:Lw3/c$a;

    invoke-direct {p0, p2}, Lf3/d;-><init>(Ld3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw3/c$a$a;->d:Ljava/lang/Object;

    iget p1, p0, Lw3/c$a$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw3/c$a$a;->f:I

    iget-object p1, p0, Lw3/c$a$a;->e:Lw3/c$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lw3/c$a;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
