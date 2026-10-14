.class public final Landroidx/work/multiprocess/k;
.super Ljava/lang/Object;
.source "RemoteWorkManagerInfo.java"


# static fields
.field public static final e:Ljava/lang/Object;

.field public static volatile f:Landroidx/work/multiprocess/k;


# instance fields
.field public final a:Landroidx/work/a;

.field public final b:Lc1/b;

.field public final c:Lq0/u;

.field public final d:Lq0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/k;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lr0/p0;->n()Lr0/p0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/k;->a:Landroidx/work/a;

    .line 4
    invoke-virtual {v0}, Lr0/p0;->w()Lc1/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/k;->b:Lc1/b;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroidx/work/a$c;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Landroidx/work/a$c;

    .line 8
    invoke-interface {p1}, Landroidx/work/a$c;->a()Landroidx/work/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/k;->a:Landroidx/work/a;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0}, Landroidx/work/a$a;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/a$a;->p(Ljava/lang/String;)Landroidx/work/a$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/work/a$a;->a()Landroidx/work/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/k;->a:Landroidx/work/a;

    .line 12
    :goto_0
    new-instance p1, Lc1/c;

    iget-object v0, p0, Landroidx/work/multiprocess/k;->a:Landroidx/work/a;

    invoke-virtual {v0}, Landroidx/work/a;->m()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p1, v0}, Lc1/c;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Landroidx/work/multiprocess/k;->b:Lc1/b;

    .line 13
    :goto_1
    new-instance p1, Landroidx/work/multiprocess/i;

    invoke-direct {p1}, Landroidx/work/multiprocess/i;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/k;->c:Lq0/u;

    .line 14
    new-instance p1, Landroidx/work/multiprocess/g;

    invoke-direct {p1}, Landroidx/work/multiprocess/g;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/k;->d:Lq0/i;

    return-void
.end method

.method public static c(Landroid/content/Context;)Landroidx/work/multiprocess/k;
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/multiprocess/k;->f:Landroidx/work/multiprocess/k;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Landroidx/work/multiprocess/k;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroidx/work/multiprocess/k;->f:Landroidx/work/multiprocess/k;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroidx/work/multiprocess/k;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/work/multiprocess/k;->f:Landroidx/work/multiprocess/k;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Landroidx/work/multiprocess/k;->f:Landroidx/work/multiprocess/k;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/work/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/k;->a:Landroidx/work/a;

    return-object v0
.end method

.method public b()Lq0/i;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/k;->d:Lq0/i;

    return-object v0
.end method

.method public d()Lq0/u;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/k;->c:Lq0/u;

    return-object v0
.end method

.method public e()Lc1/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/k;->b:Lc1/b;

    return-object v0
.end method
