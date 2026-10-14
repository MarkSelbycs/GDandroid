.class Lcom/cndatacom/campus/util/SpannableStringUtil$1;
.super Landroid/text/style/ClickableSpan;
.source "SpannableStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/util/SpannableStringUtil;->bindLinkText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View$OnClickListener;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/util/SpannableStringUtil$1;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/cndatacom/campus/util/SpannableStringUtil$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/util/SpannableStringUtil$1;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/util/SpannableStringUtil$1;->b:Landroid/content/Context;

    const v1, 0x7f040028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method
