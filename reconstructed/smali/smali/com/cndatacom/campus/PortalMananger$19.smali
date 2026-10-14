.class Lcom/cndatacom/campus/PortalMananger$19;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->y1(Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;

.field public final synthetic b:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic c:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$19;->c:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$19;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$19;->b:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$19;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$19;->c:Lcom/cndatacom/campus/PortalMananger;

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$19;->b:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {p1, v0}, Lcom/cndatacom/campus/PortalMananger;->U(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method
