.class public final Lw3/a$a;
.super Lf3/d;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/a;->d(Lv3/q;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    l = {
        0x14e
    }
    m = "collectTo"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lw3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lw3/a;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/a<",
            "TT;>;",
            "Ld3/d<",
            "-",
            "Lw3/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw3/a$a;->f:Lw3/a;

    invoke-direct {p0, p2}, Lf3/d;-><init>(Ld3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw3/a$a;->e:Ljava/lang/Object;

    iget p1, p0, Lw3/a$a;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw3/a$a;->g:I

    iget-object p1, p0, Lw3/a$a;->f:Lw3/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lw3/a;->d(Lv3/q;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
