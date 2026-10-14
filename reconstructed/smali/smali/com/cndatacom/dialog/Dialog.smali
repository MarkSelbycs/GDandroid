.class public Lcom/cndatacom/dialog/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/dialog/Dialog$UpdateDialogEvent;,
        Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;,
        Lcom/cndatacom/dialog/Dialog$DialogEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-nez p2, :cond_0

    .line 1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 2
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/cndatacom/dialog/R$layout;->alert_layout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const-string v5, "gravity"

    const-string v7, ""

    .line 6
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 8
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 9
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v10, "bottom"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "top"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x30

    .line 11
    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    const/16 v5, 0x50

    .line 12
    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 13
    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    const-string v5, "closeOnBack"

    const/4 v8, 0x1

    .line 14
    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 15
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v9, "backgroundTransparent"

    .line 17
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 18
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v10, 0x106000d

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_4
    const-string v9, "title"

    const-string v10, "\u6e29\u99a8\u63d0\u793a"

    .line 19
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v13, "right"

    const/4 v14, 0x4

    const-string v15, "left"

    const-string v11, "#323233"

    const-string v12, "center"

    if-nez v10, :cond_8

    .line 21
    sget v10, Lcom/cndatacom/dialog/R$id;->title_tv:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "titleColor"

    .line 24
    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v9, "titleBold"

    .line 26
    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 27
    invoke-virtual {v10, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5
    const-string v9, "titleAlign"

    .line 28
    invoke-virtual {v2, v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 30
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v6, 0x2

    .line 32
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x3

    .line 34
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_8
    :goto_2
    const-string v6, "closeable"

    .line 35
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 36
    sget v6, Lcom/cndatacom/dialog/R$id;->close_btn:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 37
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v9, "closeButtonColor"

    .line 38
    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 39
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    new-instance v9, Lcom/cndatacom/dialog/Dialog$6;

    invoke-direct {v9, v3, v1}, Lcom/cndatacom/dialog/Dialog$6;-><init>(Landroid/app/AlertDialog;Lcom/cndatacom/dialog/Dialog$DialogEvent;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 41
    sget v6, Lcom/cndatacom/dialog/R$id;->message_view:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_a
    const-string v0, "content"

    .line 45
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 47
    sget v6, Lcom/cndatacom/dialog/R$id;->message_tv:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "contentColor"

    .line 48
    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "contentAlign"

    .line 50
    invoke-virtual {v2, v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 52
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_3

    .line 53
    :cond_b
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x2

    .line 54
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_3

    .line 55
    :cond_c
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x3

    .line 56
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 57
    :cond_d
    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v7, "allowHtml"

    .line 58
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 59
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 60
    :cond_e
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const-string v0, "contentBold"

    .line 61
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 62
    invoke-virtual {v6, v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    :cond_f
    :goto_5
    sget v0, Lcom/cndatacom/dialog/R$id;->single_ll:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    sget v6, Lcom/cndatacom/dialog/R$id;->double_ll:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 65
    sget v7, Lcom/cndatacom/dialog/R$id;->other_ll:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const-string v9, "showCancel"

    .line 66
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "showConfirm"

    .line 67
    invoke-virtual {v2, v10, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v10, 0x8

    if-nez v8, :cond_10

    if-nez v9, :cond_10

    .line 68
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_10
    const-string v8, "#42a5f5"

    const-string v11, "confirmColor"

    const-string v12, "\u786e\u5b9a"

    const-string v13, "confirmText"

    if-eqz v9, :cond_11

    .line 71
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    sget v0, Lcom/cndatacom/dialog/R$id;->double_cancel_btn:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 75
    new-instance v5, Lcom/cndatacom/dialog/Dialog$7;

    invoke-direct {v5, v3, v1}, Lcom/cndatacom/dialog/Dialog$7;-><init>(Landroid/app/AlertDialog;Lcom/cndatacom/dialog/Dialog$DialogEvent;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Lcom/cndatacom/dialog/R$id;->double_confirm_btn:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 77
    new-instance v5, Lcom/cndatacom/dialog/Dialog$8;

    invoke-direct {v5, v3, v1}, Lcom/cndatacom/dialog/Dialog$8;-><init>(Landroid/app/AlertDialog;Lcom/cndatacom/dialog/Dialog$DialogEvent;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v2, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    sget v1, Lcom/cndatacom/dialog/R$id;->double_confirm_btn_tv:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    invoke-virtual {v2, v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "cancelText"

    const-string v1, "\u53d6\u6d88"

    .line 83
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget v1, Lcom/cndatacom/dialog/R$id;->double_cancel_btn_tv:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "cancelColor"

    const-string v5, "#a1a1a1"

    .line 85
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 88
    :cond_11
    sget v9, Lcom/cndatacom/dialog/R$id;->single_btn:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 89
    new-instance v14, Lcom/cndatacom/dialog/Dialog$9;

    invoke-direct {v14, v3, v1}, Lcom/cndatacom/dialog/Dialog$9;-><init>(Landroid/app/AlertDialog;Lcom/cndatacom/dialog/Dialog$DialogEvent;)V

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v1, Lcom/cndatacom/dialog/R$id;->single_btn_tv:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-virtual {v2, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v2, v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-object v3
.end method

.method public static alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0, p1, p2}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getAdDialog(Landroid/app/Activity;Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/cndatacom/dialog/R$layout;->alert_ad_layout:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 8
    sget v1, Lcom/cndatacom/dialog/R$id;->ad_img:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 9
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    new-instance p1, Lcom/cndatacom/dialog/Dialog$4;

    invoke-direct {p1, p2}, Lcom/cndatacom/dialog/Dialog$4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p1, Lcom/cndatacom/dialog/R$id;->close_tv:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 12
    new-instance p1, Lcom/cndatacom/dialog/Dialog$5;

    invoke-direct {p1, v0}, Lcom/cndatacom/dialog/Dialog$5;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/cndatacom/dialog/Dialog$UpdateDialogEvent;)Landroid/app/AlertDialog;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/cndatacom/dialog/R$layout;->alert_update_layout:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 3
    sget v1, Lcom/cndatacom/dialog/R$id;->message_tv:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p0}, Lcom/cndatacom/dialog/Dialog$UpdateDialogEvent;->callbackView(Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-object p0
.end method

.method public static loading(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cndatacom/dialog/Dialog;->loading(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static loading(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/app/AlertDialog;
    .locals 3

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/cndatacom/dialog/R$layout;->alert_loading_layout:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5
    sget v1, Lcom/cndatacom/dialog/R$id;->message_tv:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-object p0
.end method

.method public static refreshUpdateDialog(Landroid/view/View;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;)V
    .locals 8

    .line 1
    sget v0, Lcom/cndatacom/dialog/R$id;->update_downloading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    sget v1, Lcom/cndatacom/dialog/R$id;->update_finish:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 3
    sget v3, Lcom/cndatacom/dialog/R$id;->update_error:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v4, "tag"

    const-string v5, "downloading"

    .line 4
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :cond_0
    sget p2, Lcom/cndatacom/dialog/R$id;->update_progress_bar:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    .line 11
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "fileSize"

    .line 12
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 13
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_2
    const-string v0, "progress"

    .line 14
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    sget p2, Lcom/cndatacom/dialog/R$id;->update_progress_text:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p2, "progressText"

    const-string v0, ".00B"

    .line 17
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "fileSizeText"

    .line 18
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string p0, "finish"

    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 21
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_4

    .line 22
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 26
    new-instance v0, Lcom/cndatacom/dialog/Dialog$1;

    invoke-direct {v0, p2, p1}, Lcom/cndatacom/dialog/Dialog$1;-><init>(Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_6

    .line 28
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    :cond_6
    sget p0, Lcom/cndatacom/dialog/R$id;->update_cancel:I

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 32
    new-instance v0, Lcom/cndatacom/dialog/Dialog$2;

    invoke-direct {v0, p2}, Lcom/cndatacom/dialog/Dialog$2;-><init>(Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget p0, Lcom/cndatacom/dialog/R$id;->update_retry:I

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 34
    new-instance v0, Lcom/cndatacom/dialog/Dialog$3;

    invoke-direct {v0, p2, p1}, Lcom/cndatacom/dialog/Dialog$3;-><init>(Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
