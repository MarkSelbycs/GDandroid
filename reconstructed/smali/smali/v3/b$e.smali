.class public final Lv3/b$e;
.super Lf3/d;
.source "BufferedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/b;->q0(Lv3/i;IJLd3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    l = {
        0xbf0
    }
    m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:J

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>(Lv3/b;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b<",
            "TE;>;",
            "Ld3/d<",
            "-",
            "Lv3/b$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lv3/b$e;->i:Lv3/b;

    invoke-direct {p0, p2}, Lf3/d;-><init>(Ld3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lv3/b$e;->h:Ljava/lang/Object;

    iget p1, p0, Lv3/b$e;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv3/b$e;->o:I

    iget-object v0, p0, Lv3/b$e;->i:Lv3/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lv3/b;->v(Lv3/b;Lv3/i;IJLd3/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lv3/h;->b(Ljava/lang/Object;)Lv3/h;

    move-result-object p1

    return-object p1
.end method
