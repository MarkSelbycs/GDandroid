.class Lcom/cndatacom/campus/PortalMananger$39;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->M1(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;I)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$39;->b:Lcom/cndatacom/campus/PortalMananger;

    iput p2, p0, Lcom/cndatacom/campus/PortalMananger$39;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$39;->b:Lcom/cndatacom/campus/PortalMananger;

    iget v1, p0, Lcom/cndatacom/campus/PortalMananger$39;->a:I

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->u0(Lcom/cndatacom/campus/PortalMananger;I)V

    return-void
.end method
