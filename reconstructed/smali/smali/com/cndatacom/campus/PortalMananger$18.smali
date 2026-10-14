.class Lcom/cndatacom/campus/PortalMananger$18;
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
.field public final synthetic a:Landroid/widget/CheckBox;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/app/AlertDialog;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic f:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/AlertDialog;Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$18;->f:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$18;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$18;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/cndatacom/campus/PortalMananger$18;->c:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/cndatacom/campus/PortalMananger$18;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/cndatacom/campus/PortalMananger$18;->e:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$18;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$18;->b:Landroid/content/Context;

    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/util/ToastUtil;->showBottomText(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$18;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$18;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$18;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$18;->f:Lcom/cndatacom/campus/PortalMananger;

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$18;->e:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {p1, v1, v0}, Lcom/cndatacom/campus/PortalMananger;->T(Lcom/cndatacom/campus/PortalMananger;ZLcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method
