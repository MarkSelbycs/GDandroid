.class public final Landroidx/fragment/app/i$d;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/i;->l(Landroidx/fragment/app/k;Landroid/view/ViewGroup;Landroid/view/View;Lj/a;Landroidx/fragment/app/i$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/k;

.field public final synthetic b:Lj/a;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/fragment/app/i$e;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroidx/fragment/app/Fragment;

.field public final synthetic h:Landroidx/fragment/app/Fragment;

.field public final synthetic i:Z

.field public final synthetic o:Ljava/util/ArrayList;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/i$e;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/i$d;->a:Landroidx/fragment/app/k;

    iput-object p2, p0, Landroidx/fragment/app/i$d;->b:Lj/a;

    iput-object p3, p0, Landroidx/fragment/app/i$d;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/i$d;->d:Landroidx/fragment/app/i$e;

    iput-object p5, p0, Landroidx/fragment/app/i$d;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/i$d;->f:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/i$d;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/i$d;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/i$d;->i:Z

    iput-object p10, p0, Landroidx/fragment/app/i$d;->o:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/i$d;->p:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/i$d;->q:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i$d;->a:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/i$d;->b:Lj/a;

    iget-object v2, p0, Landroidx/fragment/app/i$d;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/i$d;->d:Landroidx/fragment/app/i$e;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/i;->h(Landroidx/fragment/app/k;Lj/a;Ljava/lang/Object;Landroidx/fragment/app/i$e;)Lj/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/i$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lj/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/i$d;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/i$d;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/i$d;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/i$d;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/i$d;->i:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/i;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLj/a;Z)V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/i$d;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/i$d;->a:Landroidx/fragment/app/k;

    iget-object v3, p0, Landroidx/fragment/app/i$d;->o:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/i$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/k;->z(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/i$d;->d:Landroidx/fragment/app/i$e;

    iget-object v2, p0, Landroidx/fragment/app/i$d;->p:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/i$d;->i:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/i;->s(Lj/a;Landroidx/fragment/app/i$e;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/i$d;->a:Landroidx/fragment/app/k;

    iget-object v2, p0, Landroidx/fragment/app/i$d;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/k;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
