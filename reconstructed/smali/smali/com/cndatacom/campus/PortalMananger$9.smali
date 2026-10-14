.class Lcom/cndatacom/campus/PortalMananger$9;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$DialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->L2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$9;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public btnClick(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$9;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
