.class Lcom/cndatacom/dialog/Dialog$3;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/dialog/Dialog;->refreshUpdateDialog(Landroid/view/View;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialogEvent:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

.field public final synthetic val$options:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/dialog/Dialog$3;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    iput-object p2, p0, Lcom/cndatacom/dialog/Dialog$3;->val$options:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cndatacom/dialog/Dialog$3;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cndatacom/dialog/Dialog$3;->val$options:Lorg/json/JSONObject;

    const-string v0, "taskUrl"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/cndatacom/dialog/Dialog$3;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    invoke-interface {v0, p1}, Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;->retry(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
