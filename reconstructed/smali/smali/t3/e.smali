.class public final Lt3/e;
.super Lt3/u0;
.source "EventLoop.kt"


# instance fields
.field public final i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/u0;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/e;->i:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public r0()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lt3/e;->i:Ljava/lang/Thread;

    return-object v0
.end method
