.class public Landroidx/work/impl/foreground/SystemForegroundService$e;
.super Ljava/lang/Object;
.source "SystemForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/foreground/SystemForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public static a(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 1

    const-string v0, "Unable to start foreground service"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/foreground/SystemForegroundService;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p0}, Lq0/n;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/foreground/SystemForegroundService;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p0}, Lq0/n;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
