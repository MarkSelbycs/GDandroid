.class public Landroidx/lifecycle/p;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/p$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/p$a;

.field public final b:Landroidx/lifecycle/q;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/q;Landroidx/lifecycle/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/lifecycle/p;->a:Landroidx/lifecycle/p$a;

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/o;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/p;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/o;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/o;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/q;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->b(Ljava/lang/String;)Landroidx/lifecycle/o;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/p;->a:Landroidx/lifecycle/p$a;

    invoke-interface {v0, p2}, Landroidx/lifecycle/p$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/o;

    move-result-object p2

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/q;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/q;->c(Ljava/lang/String;Landroidx/lifecycle/o;)V

    return-object p2
.end method
