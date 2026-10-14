.class Lcom/cndatacom/campus/PortalMananger$35$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$35;->onReceive(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:I

.field public final synthetic d:Lcom/cndatacom/campus/PortalMananger$35;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$35;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->d:Lcom/cndatacom/campus/PortalMananger$35;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->b:Landroid/content/Intent;

    iput p4, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->d:Lcom/cndatacom/campus/PortalMananger$35;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$35;->a:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->b:Landroid/content/Intent;

    iget v3, p0, Lcom/cndatacom/campus/PortalMananger$35$1;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/cndatacom/campus/PortalMananger;->m0(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method
