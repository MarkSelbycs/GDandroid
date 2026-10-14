.class public Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;
.super Lw/y;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$h;->c(Le/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$h;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    invoke-direct {p0}, Lw/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lw/q;->N(Landroid/view/View;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Lw/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lw/w;->h(Lw/x;)Lw/w;

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$h$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Lw/w;

    return-void
.end method
