.class public Lp4/l;
.super Ljava/lang/Object;
.source "DecryptParams.java"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lp4/l;->a:[B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lp4/l;->b:I

    .line 8
    iput v0, p0, Lp4/l;->c:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/l;->a:[B

    .line 3
    iput p2, p0, Lp4/l;->b:I

    .line 4
    iput p3, p0, Lp4/l;->c:I

    return-void
.end method
