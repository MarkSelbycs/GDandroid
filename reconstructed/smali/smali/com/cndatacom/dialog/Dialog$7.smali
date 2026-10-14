.class Lcom/cndatacom/dialog/Dialog$7;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$alert:Landroid/app/AlertDialog;

.field public final synthetic val$dialogEvent:Lcom/cndatacom/dialog/Dialog$DialogEvent;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Lcom/cndatacom/dialog/Dialog$DialogEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/dialog/Dialog$7;->val$alert:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/cndatacom/dialog/Dialog$7;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$DialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cndatacom/dialog/Dialog$7;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/dialog/Dialog$7;->val$dialogEvent:Lcom/cndatacom/dialog/Dialog$DialogEvent;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/cndatacom/dialog/Dialog$DialogEvent;->btnClick(I)V

    :cond_0
    return-void
.end method
