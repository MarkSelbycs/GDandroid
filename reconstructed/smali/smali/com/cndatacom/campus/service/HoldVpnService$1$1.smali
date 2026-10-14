.class Lcom/cndatacom/campus/service/HoldVpnService$1$1;
.super Ljava/lang/Object;
.source "HoldVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/service/HoldVpnService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:I

.field public final synthetic c:Lcom/cndatacom/campus/service/HoldVpnService$1;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/service/HoldVpnService$1;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/service/HoldVpnService$1$1;->c:Lcom/cndatacom/campus/service/HoldVpnService$1;

    iput-object p2, p0, Lcom/cndatacom/campus/service/HoldVpnService$1$1;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/cndatacom/campus/service/HoldVpnService$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldVpnService$1$1;->c:Lcom/cndatacom/campus/service/HoldVpnService$1;

    iget-object v0, v0, Lcom/cndatacom/campus/service/HoldVpnService$1;->a:Lcom/cndatacom/campus/service/HoldVpnService;

    iget-object v1, p0, Lcom/cndatacom/campus/service/HoldVpnService$1$1;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/cndatacom/campus/service/HoldVpnService$1$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/cndatacom/campus/service/HoldVpnService;->a(Lcom/cndatacom/campus/service/HoldVpnService;Landroid/content/Intent;I)V

    return-void
.end method
