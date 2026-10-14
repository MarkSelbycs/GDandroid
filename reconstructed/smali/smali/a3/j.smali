.class public final La3/j;
.super Ljava/lang/Object;
.source "Result.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La3/i$b;

    invoke-direct {v0, p0}, La3/i$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, La3/i$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, La3/i$b;

    iget-object p0, p0, La3/i$b;->a:Ljava/lang/Throwable;

    throw p0
.end method
