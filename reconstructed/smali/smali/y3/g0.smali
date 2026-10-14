.class public final Ly3/g0;
.super Ljava/lang/Object;
.source "StackTraceRecovery.kt"


# static fields
.field public static final a:Ljava/lang/StackTraceElement;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    invoke-virtual {v0}, La/a;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Ly3/g0;->a:Ljava/lang/StackTraceElement;

    .line 2
    :try_start_0
    sget-object v0, La3/i;->a:La3/i$a;

    const-string v0, "f3.a"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, La3/i;->a:La3/i$a;

    invoke-static {v0}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v0}, La3/i;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    :goto_1
    check-cast v0, Ljava/lang/String;

    sput-object v0, Ly3/g0;->b:Ljava/lang/String;

    .line 6
    :try_start_1
    sget-object v0, La3/i;->a:La3/i$a;

    .line 7
    const-class v0, Ly3/g0;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-object v1, La3/i;->a:La3/i$a;

    invoke-static {v0}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_2
    invoke-static {v0}, La3/i;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    :goto_3
    check-cast v0, Ljava/lang/String;

    sput-object v0, Ly3/g0;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    return-object p0
.end method
