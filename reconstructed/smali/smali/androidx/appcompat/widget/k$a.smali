.class public Landroidx/appcompat/widget/k$a;
.super Ln/d$a;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/k;->u(Landroid/content/Context;Landroidx/appcompat/widget/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroidx/appcompat/widget/k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/k$a;->b:Landroidx/appcompat/widget/k;

    iput-object p2, p0, Landroidx/appcompat/widget/k$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ln/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/k$a;->b:Landroidx/appcompat/widget/k;

    iget-object v1, p0, Landroidx/appcompat/widget/k$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/k;->l(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
