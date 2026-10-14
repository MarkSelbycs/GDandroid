.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$j;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/app/h;

.field public b:Z

.field public c:Landroid/content/BroadcastReceiver;

.field public d:Landroid/content/IntentFilter;

.field public final synthetic e:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->e:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Landroidx/appcompat/app/h;

    .line 3
    invoke-virtual {p2}, Landroidx/appcompat/app/h;->d()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->e:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->d()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Z

    if-eq v0, v1, :cond_0

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->e:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d()Z

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->d()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$j$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$j$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$j;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroid/content/BroadcastReceiver;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->e:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
