.class public final Lt3/k0;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# static fields
.field public static final a:Z

.field public static final b:Lt3/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ly3/i0;->f(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lt3/k0;->a:Z

    .line 2
    invoke-static {}, Lt3/k0;->b()Lt3/l0;

    move-result-object v0

    sput-object v0, Lt3/k0;->b:Lt3/l0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lt3/l0;
    .locals 2

    sget-object v0, Lt3/k0;->b:Lt3/l0;

    return-object v0
.end method

.method public static final b()Lt3/l0;
    .locals 3

    .line 1
    sget-boolean v0, Lt3/k0;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lt3/j0;->i:Lt3/j0;

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lt3/q0;->c()Lt3/r1;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ly3/x;->c(Lt3/r1;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lt3/l0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lt3/l0;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt3/j0;->i:Lt3/j0;

    :goto_1
    return-object v0
.end method
