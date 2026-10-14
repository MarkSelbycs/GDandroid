.class public final Lt3/y1;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Lt3/y1;

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lt3/t0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lt3/y1;

    invoke-direct {v0}, Lt3/y1;-><init>()V

    sput-object v0, Lt3/y1;->a:Lt3/y1;

    new-instance v0, Ly3/h0;

    const-string v1, "ThreadLocalEventLoop"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly3/m0;->a(Ly3/h0;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lt3/y1;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lt3/t0;
    .locals 2

    sget-object v0, Lt3/y1;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/t0;

    if-nez v1, :cond_0

    invoke-static {}, Lt3/w0;->a()Lt3/t0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lt3/y1;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lt3/t0;)V
    .locals 1

    sget-object v0, Lt3/y1;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
