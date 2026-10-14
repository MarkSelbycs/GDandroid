.class Lcom/cndatacom/campus/PortalMananger$30;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->H1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$30;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$30;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->i0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$30;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->j0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#42a5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$30;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->j0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#a1a1a1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
