.class public final synthetic Lcom/cndatacom/campus/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/campus/l;->a:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cndatacom/campus/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/campus/l;->a:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cndatacom/campus/l;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/cndatacom/campus/PortalMananger;->k(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
