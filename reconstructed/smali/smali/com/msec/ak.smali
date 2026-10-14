.class public final Lcom/msec/ak;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:I


# direct methods
.method public static a()V
    .locals 4

    const/16 v0, 0x6c5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Landroid/content/Intent;
    .locals 2

    const/16 v0, 0x6c4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/msec/ak;->a()V

    return-void
.end method
