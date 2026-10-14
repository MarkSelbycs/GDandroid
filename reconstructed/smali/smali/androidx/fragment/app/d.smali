.class public abstract Landroidx/fragment/app/d;
.super Landroidx/fragment/app/b;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/b;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:I

.field public final e:Landroidx/fragment/app/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    .line 3
    new-instance v0, Landroidx/fragment/app/f;

    invoke-direct {v0}, Landroidx/fragment/app/f;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 5
    invoke-static {p2, p1}, Lv/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/d;->b:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 6
    invoke-static {p3, p1}, Lv/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/d;->c:Landroid/os/Handler;

    .line 7
    iput p4, p0, Landroidx/fragment/app/d;->d:I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/FragmentActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/d;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method public f()Landroidx/fragment/app/f;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    return-object v0
.end method

.method public g()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract h(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract j()Landroid/view/LayoutInflater;
.end method

.method public abstract k()I
.end method

.method public abstract l()Z
.end method

.method public abstract m(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract n()V
.end method
