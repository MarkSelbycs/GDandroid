.class public Landroidx/appcompat/app/AppCompatDelegateImpl$b;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lw/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->H()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$b;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lw/a0;)Lw/a0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lw/a0;->k()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$b;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->x0(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lw/a0;->i()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lw/a0;->j()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lw/a0;->h()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Lw/a0;->m(IIII)Lw/a0;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lw/q;->I(Landroid/view/View;Lw/a0;)Lw/a0;

    move-result-object p1

    return-object p1
.end method
