.class public Lcom/cndatacom/sdk/portal/notify/NotifyManager;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "PortalChannel"

.field private static final CHANNEL_MSG_ID:Ljava/lang/String; = "PortalMsgChannel"

.field private static final CHANNEL_MSG_NAME:Ljava/lang/String; = "PortalMsgChannelName"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "PortalChannelName"

.field private static final NOTIFICATION_ID:I = 0x14

.field private static final NOTIFICATION_MSG_ID:I = 0x15

.field private static _NotifyManager:Lcom/cndatacom/sdk/portal/notify/NotifyManager;


# instance fields
.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/sdk/portal/notify/NotifyManager;
    .locals 2

    .line 1
    const-class v0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->_NotifyManager:Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;-><init>()V

    sput-object v1, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->_NotifyManager:Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->_NotifyManager:Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method public postNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "PortalMsgChannel"

    .line 1
    :try_start_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "PortalMsgChannelName"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v4, v2, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 4
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 5
    iget-object v3, p0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 6
    new-instance v1, Landroidx/core/app/f;

    invoke-direct {v1, p1}, Landroidx/core/app/f;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v1, p2}, Landroidx/core/app/f;->f(Ljava/lang/CharSequence;)Landroidx/core/app/f;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroidx/core/app/f;->e(Ljava/lang/String;)Landroidx/core/app/f;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Landroidx/core/app/f;->d(Z)Landroidx/core/app/f;

    move-result-object p1

    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, p2}, Landroidx/core/app/f;->g(I)Landroidx/core/app/f;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/f;->k(J)Landroidx/core/app/f;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3}, Landroidx/core/app/f;->j(I)Landroidx/core/app/f;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p3, 0x15

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public pushForegroundNotification(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Service;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/app/Service;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "pushForegroundNotification->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "notification"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    const-string v5, "PortalChannel"

    const-string v6, "PortalChannelName"

    invoke-direct {v3, v5, v6, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 5
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x22

    const/16 p4, 0x14

    if-lt v1, p2, :cond_0

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p3, p4, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p3, p4, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method
