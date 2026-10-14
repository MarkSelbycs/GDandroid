.class public Landroidx/fragment/app/Fragment$c;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/d;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroidx/lifecycle/h;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/g;

    invoke-direct {v1, v2}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;)V

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/h;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/h;

    return-object v0
.end method
