.class Lcom/cndatacom/campus/PortalMananger$25;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->D1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$25;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$25;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->t(Lcom/cndatacom/campus/PortalMananger;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
