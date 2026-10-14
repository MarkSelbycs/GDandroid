.class public final Ly3/i;
.super Ljava/lang/RuntimeException;
.source "CoroutineExceptionHandlerImpl.kt"


# instance fields
.field public final transient a:Ld3/g;


# direct methods
.method public constructor <init>(Ld3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Ly3/i;->a:Ld3/g;

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/i;->a:Ld3/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
