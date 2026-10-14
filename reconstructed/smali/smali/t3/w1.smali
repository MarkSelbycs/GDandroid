.class public Lt3/w1;
.super Lt3/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt3/a<",
        "La3/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld3/g;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lt3/a;-><init>(Ld3/g;ZZ)V

    return-void
.end method


# virtual methods
.method public b0(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lt3/a;->b()Ld3/g;

    move-result-object v0

    invoke-static {v0, p1}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
