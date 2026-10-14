.class public Landroidx/lifecycle/n$a;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/h;

.field public final b:Landroidx/lifecycle/d$b;

.field public c:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h;Landroidx/lifecycle/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/n$a;->c:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/h;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/n$a;->b:Landroidx/lifecycle/d$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/n$a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/h;

    iget-object v1, p0, Landroidx/lifecycle/n$a;->b:Landroidx/lifecycle/d$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->f(Landroidx/lifecycle/d$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/n$a;->c:Z

    :cond_0
    return-void
.end method
