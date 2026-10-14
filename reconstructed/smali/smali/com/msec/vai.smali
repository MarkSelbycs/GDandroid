.class public final Lcom/msec/vai;
.super Ljava/lang/Object;
.source "com/msec/vai.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 0

    check-cast p0, Lcom/msec/q;

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/msec/q;->read([BII)I

    move-result p0

    return p0
.end method
