.class Lcom/cndatacom/campus/PortalMananger$8;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->r1(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$8;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$8;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$8;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/ToastUtil;->showBottomText(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
