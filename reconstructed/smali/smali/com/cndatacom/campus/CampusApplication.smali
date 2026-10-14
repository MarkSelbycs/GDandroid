.class public Lcom/cndatacom/campus/CampusApplication;
.super Landroid/app/Application;
.source "CampusApplication.java"


# static fields
.field public static volatile b:I


# instance fields
.field public volatile a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cndatacom/campus/CampusApplication;->a:Z

    return-void
.end method

.method public static synthetic a()I
    .locals 3

    sget v0, Lcom/cndatacom/campus/CampusApplication;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/cndatacom/campus/CampusApplication;->b:I

    return v0
.end method

.method public static synthetic b()I
    .locals 2

    sget v0, Lcom/cndatacom/campus/CampusApplication;->b:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/cndatacom/campus/CampusApplication;->b:I

    return v0
.end method

.method public static synthetic c(Lcom/cndatacom/campus/CampusApplication;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cndatacom/campus/CampusApplication;->a:Z

    return p0
.end method

.method public static synthetic d(Lcom/cndatacom/campus/CampusApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/campus/CampusApplication;->a:Z

    return p1
.end method

.method public static isRunBackground()Z
    .locals 3

    sget v0, Lcom/cndatacom/campus/CampusApplication;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final e()V
    .locals 1

    new-instance v0, Lcom/cndatacom/campus/CampusApplication$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/CampusApplication$1;-><init>(Lcom/cndatacom/campus/CampusApplication;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->init(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lq0/z;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/work/a$a;

    invoke-direct {v2}, Landroidx/work/a$a;-><init>()V

    invoke-virtual {v2}, Landroidx/work/a$a;->a()Landroidx/work/a;

    move-result-object v2

    invoke-static {v1, v2}, Lq0/z;->f(Landroid/content/Context;Landroidx/work/a;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0xfffb

    .line 8
    invoke-static {v0}, Lz2/a;->b(I)V

    .line 9
    invoke-static {}, Lz2/a;->c()V

    .line 10
    invoke-virtual {p0}, Lcom/cndatacom/campus/CampusApplication;->e()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->initLog(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const-string v0, "CampusApplication onLowMemory->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    const-string v0, "CampusApplication onTerminate->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CampusApplication onTrimMemory level->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const-string v0, "CampusApplication releaseMemory->"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
