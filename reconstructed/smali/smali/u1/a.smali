.class public abstract Lu1/a;
.super Ljava/lang/Object;
.source "IoCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public c:Lt1/f;

.field public d:Z


# direct methods
.method public constructor <init>(IJLt1/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2000

    .line 2
    :goto_0
    iput p1, p0, Lu1/a;->a:I

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_1

    const-wide p2, 0x7fffffffffffffffL

    .line 3
    :cond_1
    iput-wide p2, p0, Lu1/a;->b:J

    .line 4
    iput-object p4, p0, Lu1/a;->c:Lt1/f;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    iget v0, p0, Lu1/a;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method
