.class public final Lf3/h;
.super Ljava/lang/Object;
.source "DebugProbes.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/d;)Ld3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld3/d<",
            "-TT;>;)",
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
