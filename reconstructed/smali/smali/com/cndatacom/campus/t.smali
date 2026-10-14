.class public final synthetic Lcom/cndatacom/campus/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalWebviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/campus/t;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/t;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-static {v0, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->p(Lcom/cndatacom/campus/PortalWebviewActivity;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
