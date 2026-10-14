.class public final Lv3/o$a;
.super Lf3/d;
.source "Produce.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/o;->a(Lv3/q;Ll3/a;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.channels.ProduceKt"
    f = "Produce.kt"
    l = {
        0x99
    }
    m = "awaitClose"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# direct methods
.method public constructor <init>(Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "Lv3/o$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lf3/d;-><init>(Ld3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv3/o$a;->f:Ljava/lang/Object;

    iget p1, p0, Lv3/o$a;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv3/o$a;->g:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lv3/o;->a(Lv3/q;Ll3/a;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
