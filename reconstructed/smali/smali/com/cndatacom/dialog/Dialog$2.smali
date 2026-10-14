.class Lcom/cndatacom/dialog/Dialog$2;
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


# direct methods
.method public constructor <init>(Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/dialog/Dialog$2;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/dialog/Dialog$2;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;->cancel()V

    :cond_0
    return-void
.end method
