.class public Landroidx/work/impl/foreground/a;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Lv0/d;
.implements Lr0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/a$b;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lr0/p0;

.field public final c:Lc1/b;

.field public final d:Ljava/lang/Object;

.field public e:Lz0/m;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Lq0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Lz0/u;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Lt3/h1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lv0/e;

.field public o:Landroidx/work/impl/foreground/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/foreground/a;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->d:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    .line 5
    invoke-virtual {p1}, Lr0/p0;->w()Lc1/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->c:Lc1/b;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->h:Ljava/util/Map;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->g:Ljava/util/Map;

    .line 10
    new-instance p1, Lv0/e;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->t()Lx0/m;

    move-result-object v0

    invoke-direct {p1, v0}, Lv0/e;-><init>(Lx0/m;)V

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->i:Lv0/e;

    .line 11
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    invoke-virtual {p1}, Lr0/p0;->q()Lr0/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr0/u;->e(Lr0/f;)V

    return-void
.end method

.method public static synthetic b(Landroidx/work/impl/foreground/a;)Lr0/p0;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    return-object p0
.end method

.method public static synthetic d(Landroidx/work/impl/foreground/a;)Lc1/b;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/foreground/a;->c:Lc1/b;

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lz0/m;Lq0/h;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p2}, Lq0/h;->c()I

    move-result p0

    const-string v1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Lq0/h;->a()I

    move-result p0

    const-string v1, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Lq0/h;->b()Landroid/app/Notification;

    move-result-object p0

    const-string p2, "KEY_NOTIFICATION"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Lz0/m;->a()I

    move-result p0

    const-string p1, "KEY_GENERATION"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static f(Landroid/content/Context;Lz0/m;Lq0/h;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Lz0/m;->a()I

    move-result p0

    const-string p1, "KEY_GENERATION"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Lq0/h;->c()I

    move-result p0

    const-string p1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2}, Lq0/h;->a()I

    move-result p0

    const-string p1, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p2}, Lq0/h;->b()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "KEY_NOTIFICATION"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_FOREGROUND"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Lz0/u;Lv0/b;)V
    .locals 4

    .line 1
    instance-of p2, p2, Lv0/b$b;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lz0/u;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints unmet for WorkSpec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    invoke-static {p1}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr0/p0;->A(Lz0/m;)V

    :cond_0
    return-void
.end method

.method public c(Lz0/m;Z)V
    .locals 5

    .line 1
    iget-object p2, p0, Landroidx/work/impl/foreground/a;->d:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/h1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, v1}, Lt3/h1;->e(Ljava/util/concurrent/CancellationException;)V

    .line 5
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq0/h;

    .line 7
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    invoke-virtual {p1, v0}, Lz0/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/m;

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    .line 15
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    if-eqz v0, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/h;

    .line 17
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    .line 18
    invoke-virtual {v0}, Lq0/h;->c()I

    move-result v2

    .line 19
    invoke-virtual {v0}, Lq0/h;->a()I

    move-result v3

    .line 20
    invoke-virtual {v0}, Lq0/h;->b()Landroid/app/Notification;

    move-result-object v4

    .line 21
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/foreground/a$b;->c(IILandroid/app/Notification;)V

    .line 22
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    invoke-virtual {v0}, Lq0/h;->c()I

    move-result v0

    invoke-interface {v1, v0}, Landroidx/work/impl/foreground/a$b;->a(I)V

    goto :goto_2

    .line 23
    :cond_3
    iput-object v1, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    .line 24
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 25
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Notification (id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Lq0/h;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", workSpecId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationType: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Lq0/h;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v1, v2, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lq0/h;->c()I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/work/impl/foreground/a$b;->a(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping foreground work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/p0;->j(Ljava/util/UUID;)Lq0/r;

    :cond_0
    return-void
.end method

.method public final i(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    .line 4
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 5
    new-instance v5, Lz0/m;

    invoke-direct {v5, v3, v4}, Lz0/m;-><init>(Ljava/lang/String;I)V

    const-string v4, "KEY_NOTIFICATION"

    .line 6
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 7
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v4

    sget-object v6, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying with (id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", workSpecId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notificationType :"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 8
    iget-object v3, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    if-eqz v3, :cond_2

    .line 9
    new-instance v3, Lq0/h;

    invoke-direct {v3, v0, p1, v2}, Lq0/h;-><init>(ILandroid/app/Notification;I)V

    .line 10
    iget-object v4, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    if-nez v3, :cond_0

    .line 12
    iput-object v5, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    .line 13
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    invoke-interface {v1, v0, v2, p1}, Landroidx/work/impl/foreground/a$b;->c(IILandroid/app/Notification;)V

    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    invoke-interface {v3, v0, p1}, Landroidx/work/impl/foreground/a$b;->d(ILandroid/app/Notification;)V

    if-eqz v2, :cond_2

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    .line 16
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/h;

    .line 18
    invoke-virtual {v0}, Lq0/h;->a()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->f:Ljava/util/Map;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->e:Lz0/m;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq0/h;

    if-eqz p1, :cond_2

    .line 21
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    .line 22
    invoke-virtual {p1}, Lq0/h;->c()I

    move-result v2

    .line 23
    invoke-virtual {p1}, Lq0/h;->b()Landroid/app/Notification;

    move-result-object p1

    .line 24
    invoke-interface {v0, v2, v1, p1}, Landroidx/work/impl/foreground/a$b;->c(IILandroid/app/Notification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started foreground service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->c:Lc1/b;

    new-instance v1, Landroidx/work/impl/foreground/a$a;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/a$a;-><init>(Landroidx/work/impl/foreground/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    const-string v1, "Stopping foreground service"

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Landroidx/work/impl/foreground/a$b;->stop()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    .line 2
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/foreground/a;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt3/h1;

    .line 4
    invoke-interface {v3, v0}, Lt3/h1;->e(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->b:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->q()Lr0/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr0/u;->p(Lr0/f;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->j(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->i(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "ACTION_NOTIFY"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->i(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_CANCEL_WORK"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->h(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_STOP_FOREGROUND"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->k(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public n(Landroidx/work/impl/foreground/a$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    const-string v1, "A callback already exists."

    invoke-virtual {p1, v0, v1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/work/impl/foreground/a;->o:Landroidx/work/impl/foreground/a$b;

    return-void
.end method
