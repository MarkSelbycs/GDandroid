.class public Le/f;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    iput-object p1, p0, Le/f;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/f;->b:Le/b;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->c()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    iget-object v0, p0, Le/f;->a:Landroid/content/Context;

    iget-object v1, p0, Le/f;->b:Le/b;

    invoke-virtual {v1}, Le/b;->e()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lq/a;

    invoke-static {v0, v1}, Lf/g;->a(Landroid/content/Context;Lq/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->f()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->i()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->j()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->k()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0}, Le/b;->l()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->m(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->n(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->q(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Le/f;->b:Le/b;

    invoke-virtual {v0, p1}, Le/b;->s(Z)V

    return-void
.end method
