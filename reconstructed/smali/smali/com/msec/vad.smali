.class public final Lcom/msec/vad;
.super Ljava/lang/Object;
.source "com/msec/vad.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/msec/s;

    invoke-virtual {p0}, Lcom/msec/s;->flush()V

    return-void
.end method
