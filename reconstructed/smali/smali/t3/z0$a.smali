.class public final Lt3/z0$a;
.super Ld3/b;
.source "Executors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/b<",
        "Lt3/b0;",
        "Lt3/z0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lt3/b0;->b:Lt3/b0$a;

    .line 2
    sget-object v1, Lt3/z0$a$a;->b:Lt3/z0$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Ld3/b;-><init>(Ld3/g$c;Ll3/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Lt3/z0$a;-><init>()V

    return-void
.end method
