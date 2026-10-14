.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/lifecycle/a;


# virtual methods
.method public d(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroidx/lifecycle/a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/lifecycle/a;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;Ljava/lang/Object;)V

    return-void
.end method
