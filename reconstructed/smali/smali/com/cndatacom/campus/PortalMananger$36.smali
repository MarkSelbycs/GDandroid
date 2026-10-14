.class Lcom/cndatacom/campus/PortalMananger$36;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->P1()V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$36;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$36;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0, p1}, Lcom/cndatacom/campus/PortalMananger;->p0(Lcom/cndatacom/campus/PortalMananger;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
