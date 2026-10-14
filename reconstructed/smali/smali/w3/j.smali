.class public final synthetic Lw3/j;
.super Ljava/lang/Object;
.source "Emitters.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lw3/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/e<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p0, Lw3/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lw3/k;

    iget-object p0, p0, Lw3/k;->a:Ljava/lang/Throwable;

    throw p0
.end method
