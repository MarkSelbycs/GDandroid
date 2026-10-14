.class public Landroidx/appcompat/app/b$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroidx/appcompat/app/b;->e(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Landroidx/appcompat/app/b;->e(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput p2, p0, Landroidx/appcompat/app/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/app/b;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/b;

    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/app/b$a;->b:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/b;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v2, v0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertController$b;->a(Landroidx/appcompat/app/AlertController;)V

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->r:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->r:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->u:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public c(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->x:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(Landroid/view/View;)Landroidx/appcompat/app/b$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Landroid/view/View;

    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/b$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public f(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method
