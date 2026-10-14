.class Lcom/cndatacom/campus/PortalMananger$28$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$UpdateDialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger$28;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$28;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$28$1;->a:Lcom/cndatacom/campus/PortalMananger$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$28$1;->a:Lcom/cndatacom/campus/PortalMananger$28;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$28;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0, p1}, Lcom/cndatacom/campus/PortalMananger;->g0(Lcom/cndatacom/campus/PortalMananger;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
