.class public Lcom/msec/u;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x1f


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/msec/u;->a:I

    return-void
.end method

.method public static b(I)Z
    .locals 1

    sget v0, Lcom/msec/u;->a:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
