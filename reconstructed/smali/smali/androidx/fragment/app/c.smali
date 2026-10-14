.class public Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:Landroidx/fragment/app/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    return-void
.end method

.method public static b(Landroidx/fragment/app/d;)Landroidx/fragment/app/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/d<",
            "*>;)",
            "Landroidx/fragment/app/c;"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/d;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v1, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/f;->m(Landroidx/fragment/app/d;Landroidx/fragment/app/b;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->u()V

    return-void
.end method

.method public d(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->v(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->w(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->x()V

    return-void
.end method

.method public g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/f;->y(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->z()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->B()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->C(Z)V

    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->R(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public l(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->S(Landroid/view/Menu;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->T()V

    return-void
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->U(Z)V

    return-void
.end method

.method public o(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->V(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->W()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->X()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->Z()V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->f0()Z

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public u()Landroidx/fragment/app/e;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->f()Landroidx/fragment/app/f;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->H0()V

    return-void
.end method

.method public w(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/os/Parcelable;Landroidx/fragment/app/g;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/f;->Q0(Landroid/os/Parcelable;Landroidx/fragment/app/g;)V

    return-void
.end method

.method public y()Landroidx/fragment/app/g;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->R0()Landroidx/fragment/app/g;

    move-result-object v0

    return-object v0
.end method

.method public z()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->T0()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
