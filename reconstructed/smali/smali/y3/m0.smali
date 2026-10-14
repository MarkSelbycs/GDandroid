.class public final Ly3/m0;
.super Ljava/lang/Object;
.source "ThreadLocal.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ly3/h0;)Ljava/lang/ThreadLocal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly3/h0;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-object p0
.end method
