.class public final Lq0/c;
.super Ljava/lang/Object;
.source "Configuration.kt"


# static fields
.field public static final a:I = 0x8


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Z)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0}, Lq0/c;->b(Z)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Z)Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    new-instance v0, Lq0/c$a;

    invoke-direct {v0, p0}, Lq0/c$a;-><init>(Z)V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x4

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 3
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "newFixedThreadPool(\n    \u2026)),\n        factory\n    )"

    invoke-static {p0, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c()I
    .locals 3

    sget v0, Lq0/c;->a:I

    return v0
.end method
