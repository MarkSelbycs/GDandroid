.class public final Lx3/c;
.super Ly3/d0;
.source "FlowCoroutine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly3/d0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld3/g;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g;",
            "Ld3/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ly3/d0;-><init>(Ld3/g;Ld3/d;)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lt3/o1;->z(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
