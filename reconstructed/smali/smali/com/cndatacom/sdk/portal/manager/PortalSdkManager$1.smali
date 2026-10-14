.class Lcom/cndatacom/sdk/portal/manager/PortalSdkManager$1;
.super Ljava/lang/Object;
.source "PortalSdkManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager$1;->this$0:Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "UncaughtException: "

    aput-object v1, p1, v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    return-void
.end method
