.class public Landroidx/work/impl/background/systemalarm/b;
.super Ljava/lang/Object;
.source "ConstraintsCommandHandler.java"


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lq0/b;

.field public final c:I

.field public final d:Landroidx/work/impl/background/systemalarm/d;

.field public final e:Lv0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq0/b;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/b;->b:Lq0/b;

    .line 4
    iput p3, p0, Landroidx/work/impl/background/systemalarm/b;->c:I

    .line 5
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/b;->d:Landroidx/work/impl/background/systemalarm/d;

    .line 6
    invoke-virtual {p4}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object p1

    invoke-virtual {p1}, Lr0/p0;->t()Lx0/m;

    move-result-object p1

    .line 7
    new-instance p2, Lv0/e;

    invoke-direct {p2, p1}, Lv0/e;-><init>(Lx0/m;)V

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/b;->e:Lv0/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/b;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object v0

    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lz0/v;->v()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/b;->b:Lq0/b;

    invoke-interface {v2}, Lq0/b;->a()J

    move-result-wide v2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz0/u;

    .line 8
    invoke-virtual {v4}, Lz0/u;->c()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    .line 9
    invoke-virtual {v4}, Lz0/u;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/b;->e:Lv0/e;

    .line 10
    invoke-virtual {v5, v4}, Lv0/e;->a(Lz0/u;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/u;

    .line 13
    iget-object v2, v1, Lz0/u;->a:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;

    move-result-object v1

    .line 15
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/b;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating a delay_met command for workSpec with id ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/b;->d:Landroidx/work/impl/background/systemalarm/d;

    invoke-virtual {v2}, Landroidx/work/impl/background/systemalarm/d;->f()Lc1/b;

    move-result-object v2

    invoke-interface {v2}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/background/systemalarm/d$b;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/b;->d:Landroidx/work/impl/background/systemalarm/d;

    iget v5, p0, Landroidx/work/impl/background/systemalarm/b;->c:I

    invoke-direct {v3, v4, v1, v5}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void
.end method
