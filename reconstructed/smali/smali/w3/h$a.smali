.class public final Lw3/h$a;
.super Lf3/d;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/h;->c(Lw3/e;Lv3/s;ZLd3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf3/d;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt"
    f = "Channels.kt"
    l = {
        0x24,
        0x25
    }
    m = "emitAllImpl$FlowKt__ChannelsKt"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public synthetic h:Ljava/lang/Object;

.field public i:I


# direct methods
.method public constructor <init>(Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "Lw3/h$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lf3/d;-><init>(Ld3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw3/h$a;->h:Ljava/lang/Object;

    iget p1, p0, Lw3/h$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw3/h$a;->i:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p1, v0, p0}, Lw3/h;->a(Lw3/e;Lv3/s;ZLd3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
