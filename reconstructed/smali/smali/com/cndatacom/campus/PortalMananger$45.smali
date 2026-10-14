.class Lcom/cndatacom/campus/PortalMananger$45;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$DialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->K2(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$45;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public btnClick(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$45;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "FINE_LOCATION"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setOpenSSID(Z)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$45;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1, v2}, Lcom/cndatacom/campus/PortalMananger;->s0(Lcom/cndatacom/campus/PortalMananger;Z)V

    :goto_0
    return-void
.end method
