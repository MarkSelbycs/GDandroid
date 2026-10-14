.class Lcom/cndatacom/campus/PortalMananger$3;
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/PortalMananger$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/PortalMananger$3;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->w(Lcom/cndatacom/campus/PortalMananger;)I

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->u(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->x(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->v(Lcom/cndatacom/campus/PortalMananger;I)I

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->y(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->z(Lcom/cndatacom/campus/PortalMananger;Z)Z

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->y(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u83b7\u53d6("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v2}, Lcom/cndatacom/campus/PortalMananger;->u(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v3}, Lcom/cndatacom/campus/PortalMananger;->u(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v2}, Lcom/cndatacom/campus/PortalMananger;->u(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->t(Lcom/cndatacom/campus/PortalMananger;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->A(Lcom/cndatacom/campus/PortalMananger;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$3;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/s;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/s;-><init>(Lcom/cndatacom/campus/PortalMananger$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
