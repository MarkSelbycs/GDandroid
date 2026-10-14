.class public abstract Lcom/cndatacom/campus/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->l()V

    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0700df

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f070043

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f070042

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lcom/cndatacom/campus/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/BaseActivity$1;-><init>(Lcom/cndatacom/campus/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public abstract n(Landroid/os/Bundle;)V
.end method

.method public abstract o()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/BaseActivity;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/BaseActivity;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/BaseActivity;->i()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/BaseActivity;->l(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/BaseActivity;->j()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/BaseActivity;->m(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/BaseActivity;->n(Landroid/os/Bundle;)V

    return-void
.end method
