.class Lcom/cndatacom/campus/PortalMananger$2;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/PortalMananger;
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/PortalMananger$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/PortalMananger$2;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o0(Lcom/cndatacom/campus/PortalMananger;)I

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->l0(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->z0(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->n0(Lcom/cndatacom/campus/PortalMananger;I)I

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->E0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u53bb\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->F0(Lcom/cndatacom/campus/PortalMananger;)V

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v2}, Lcom/cndatacom/campus/PortalMananger;->G0(Lcom/cndatacom/campus/PortalMananger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_confirm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/cndatacom/campus/PortalMananger;->r(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->E0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53bb\u5145\u503c("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v2}, Lcom/cndatacom/campus/PortalMananger;->l0(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->t(Lcom/cndatacom/campus/PortalMananger;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->s(Lcom/cndatacom/campus/PortalMananger;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$2;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/q;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/q;-><init>(Lcom/cndatacom/campus/PortalMananger$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
