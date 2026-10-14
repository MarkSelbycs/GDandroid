.class public Lcom/cndatacom/campus/util/SpannableStringUtil;
.super Ljava/lang/Object;
.source "SpannableStringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindLinkText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Lcom/cndatacom/campus/util/SpannableStringUtil$1;

    invoke-direct {v1, p5, p0}, Lcom/cndatacom/campus/util/SpannableStringUtil$1;-><init>(Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    const/16 p5, 0x12

    .line 5
    invoke-virtual {v0, v1, p2, p3, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p4, :cond_0

    .line 6
    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 p5, 0x21

    invoke-virtual {v0, p4, p2, p3, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const p2, 0x106000d

    .line 7
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
