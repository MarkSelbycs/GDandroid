.class public final Lt3/x0;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Ly3/h0;

.field public static final b:Ly3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ly3/h0;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/x0;->a:Ly3/h0;

    .line 2
    new-instance v0, Ly3/h0;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/x0;->b:Ly3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ly3/h0;
    .locals 2

    sget-object v0, Lt3/x0;->b:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic b()Ly3/h0;
    .locals 3

    sget-object v0, Lt3/x0;->a:Ly3/h0;

    return-object v0
.end method
