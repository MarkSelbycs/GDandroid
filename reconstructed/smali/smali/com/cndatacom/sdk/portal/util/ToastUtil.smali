.class public Lcom/cndatacom/sdk/portal/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showBottomText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/cndatacom/sdk/portal/util/ToastUtil;->mToast:Landroid/widget/Toast;

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/cndatacom/sdk/portal/util/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 5
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
