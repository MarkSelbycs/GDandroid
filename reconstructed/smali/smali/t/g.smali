.class public Lt/g;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/g$c;,
        Lt/g$a;,
        Lt/g$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lt/e;IZILandroid/os/Handler;Lt/g$c;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    new-instance v0, Lt/a;

    invoke-direct {v0, p6, p5}, Lt/a;-><init>(Lt/g$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p0, p1, v0, p2, p4}, Lt/f;->e(Landroid/content/Context;Lt/e;Lt/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lt/f;->d(Landroid/content/Context;Lt/e;ILjava/util/concurrent/Executor;Lt/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
