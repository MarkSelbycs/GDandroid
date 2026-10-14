.class public Lt1/c;
.super Ljava/lang/RuntimeException;
.source "IORuntimeException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lr1/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
