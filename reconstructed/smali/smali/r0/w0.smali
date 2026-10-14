.class public Lr0/w0;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/w0$c;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:Landroidx/work/WorkerParameters$a;

.field public d:Lz0/u;

.field public e:Landroidx/work/c;

.field public f:Lc1/b;

.field public g:Landroidx/work/c$a;

.field public h:Landroidx/work/a;

.field public i:Lq0/b;

.field public o:Ly0/a;

.field public p:Landroidx/work/impl/WorkDatabase;

.field public q:Lz0/v;

.field public r:Lz0/b;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field public u:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/w0;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lr0/w0$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/work/c$a;->a()Landroidx/work/c$a;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->g:Landroidx/work/c$a;

    .line 3
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->u:Lb1/c;

    .line 4
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->v:Lb1/c;

    const/16 v0, -0x100

    .line 5
    iput v0, p0, Lr0/w0;->w:I

    .line 6
    iget-object v0, p1, Lr0/w0$c;->a:Landroid/content/Context;

    iput-object v0, p0, Lr0/w0;->a:Landroid/content/Context;

    .line 7
    iget-object v0, p1, Lr0/w0$c;->d:Lc1/b;

    iput-object v0, p0, Lr0/w0;->f:Lc1/b;

    .line 8
    iget-object v0, p1, Lr0/w0$c;->c:Ly0/a;

    iput-object v0, p0, Lr0/w0;->o:Ly0/a;

    .line 9
    iget-object v0, p1, Lr0/w0$c;->g:Lz0/u;

    iput-object v0, p0, Lr0/w0;->d:Lz0/u;

    .line 10
    iget-object v0, v0, Lz0/u;->a:Ljava/lang/String;

    iput-object v0, p0, Lr0/w0;->b:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lr0/w0$c;->i:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, Lr0/w0;->c:Landroidx/work/WorkerParameters$a;

    .line 12
    iget-object v0, p1, Lr0/w0$c;->b:Landroidx/work/c;

    iput-object v0, p0, Lr0/w0;->e:Landroidx/work/c;

    .line 13
    iget-object v0, p1, Lr0/w0$c;->e:Landroidx/work/a;

    iput-object v0, p0, Lr0/w0;->h:Landroidx/work/a;

    .line 14
    invoke-virtual {v0}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->i:Lq0/b;

    .line 15
    iget-object v0, p1, Lr0/w0$c;->f:Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->q:Lz0/v;

    .line 17
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->D()Lz0/b;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->r:Lz0/b;

    .line 18
    invoke-static {p1}, Lr0/w0$c;->a(Lr0/w0$c;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr0/w0;->s:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lr0/w0;Lr2/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lr0/w0;->i(Lr2/a;)V

    return-void
.end method

.method private synthetic i(Lr2/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/w0;->v:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " } ]"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/w0;->u:Lb1/c;

    return-object v0
.end method

.method public d()Lz0/m;
    .locals 1

    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    invoke-static {v0}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v0

    return-object v0
.end method

.method public e()Lz0/u;
    .locals 1

    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    return-object v0
.end method

.method public final f(Landroidx/work/c$a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/work/c$a$c;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Lr0/w0;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result SUCCESS for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr0/w0;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lr0/w0;->d:Lz0/u;

    invoke-virtual {p1}, Lz0/u;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lr0/w0;->l()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lr0/w0;->q()V

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p1, Landroidx/work/c$a$b;

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Lr0/w0;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result RETRY for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr0/w0;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lr0/w0;->k()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Lr0/w0;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result FAILURE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr0/w0;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lr0/w0;->d:Lz0/u;

    invoke-virtual {p1}, Lz0/u;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lr0/w0;->l()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lr0/w0;->p()V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iput p1, p0, Lr0/w0;->w:I

    .line 2
    invoke-virtual {p0}, Lr0/w0;->r()Z

    .line 3
    iget-object v0, p0, Lr0/w0;->v:Lb1/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb1/a;->cancel(Z)Z

    .line 4
    iget-object v0, p0, Lr0/w0;->e:Landroidx/work/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr0/w0;->v:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lr0/w0;->e:Landroidx/work/c;

    invoke-virtual {v0, p1}, Landroidx/work/c;->stop(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WorkSpec "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already done. Not interrupting."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    invoke-interface {v1, p1}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v1

    sget-object v2, Lq0/y$c;->f:Lq0/y$c;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    sget-object v2, Lq0/y$c;->d:Lq0/y$c;

    invoke-interface {v1, v2, p1}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Lr0/w0;->r:Lz0/b;

    invoke-interface {v1, p1}, Lz0/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr0/w0;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->I()Lz0/r;

    move-result-object v1

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lz0/r;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lq0/y$c;->b:Lq0/y$c;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lr0/w0;->g:Landroidx/work/c$a;

    invoke-virtual {p0, v0}, Lr0/w0;->f(Landroidx/work/c$a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lq0/y$c;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x200

    .line 9
    iput v0, p0, Lr0/w0;->w:I

    .line 10
    invoke-virtual {p0}, Lr0/w0;->k()V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 13
    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    sget-object v2, Lq0/y$c;->a:Lq0/y$c;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    iget-object v3, p0, Lr0/w0;->i:Lq0/b;

    invoke-interface {v3}, Lq0/b;->a()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lz0/v;->i(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    .line 5
    invoke-virtual {v3}, Lz0/u;->h()I

    move-result v3

    .line 6
    invoke-interface {v1, v2, v3}, Lz0/v;->u(Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lz0/v;->t(Ljava/lang/String;J)I

    .line 8
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 10
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    iget-object v2, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/i0;->i()V

    .line 12
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    .line 13
    throw v1
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    iget-object v3, p0, Lr0/w0;->i:Lq0/b;

    invoke-interface {v3}, Lq0/b;->a()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lz0/v;->i(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    sget-object v2, Lq0/y$c;->a:Lq0/y$c;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lz0/v;->h(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    .line 6
    invoke-virtual {v3}, Lz0/u;->h()I

    move-result v3

    .line 7
    invoke-interface {v1, v2, v3}, Lz0/v;->u(Ljava/lang/String;I)V

    .line 8
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lz0/v;->o(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lz0/v;->t(Ljava/lang/String;J)I

    .line 10
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 12
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/i0;->i()V

    .line 14
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    .line 15
    throw v1
.end method

.method public final m(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    invoke-interface {v0}, Lz0/v;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lr0/w0;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La1/l;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    sget-object v1, Lq0/y$c;->a:Lq0/y$c;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    iget v2, p0, Lr0/w0;->w:I

    invoke-interface {v0, v1, v2}, Lz0/v;->g(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lz0/v;->t(Ljava/lang/String;J)I

    .line 7
    :cond_1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 9
    iget-object v0, p0, Lr0/w0;->u:Lb1/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 11
    throw p1
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v0

    .line 2
    sget-object v1, Lq0/y$c;->b:Lq0/y$c;

    const-string v2, "Status for "

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v3, Lr0/w0;->x:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lr0/w0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    iget-object v1, v0, Lz0/u;->b:Lq0/y$c;

    sget-object v2, Lq0/y$c;->a:Lq0/y$c;

    if-eq v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lr0/w0;->n()V

    .line 5
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->B()V

    .line 6
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    iget-object v3, v3, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    .line 8
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lz0/u;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    invoke-virtual {v0}, Lz0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Lr0/w0;->i:Lq0/b;

    invoke-interface {v0}, Lq0/b;->a()J

    move-result-wide v0

    .line 10
    iget-object v2, p0, Lr0/w0;->d:Lz0/u;

    invoke-virtual {v2}, Lz0/u;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 11
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lr0/w0;->d:Lz0/u;

    iget-object v6, v6, Lz0/u;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 12
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v3}, Lr0/w0;->m(Z)V

    .line 15
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    .line 17
    :cond_3
    :try_start_2
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 19
    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    invoke-virtual {v0}, Lz0/u;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lr0/w0;->d:Lz0/u;

    iget-object v0, v0, Lz0/u;->e:Landroidx/work/b;

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p0, Lr0/w0;->h:Landroidx/work/a;

    invoke-virtual {v0}, Landroidx/work/a;->f()Lq0/k;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lr0/w0;->d:Lz0/u;

    iget-object v1, v1, Lz0/u;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Lq0/k;->b(Ljava/lang/String;)Lq0/j;

    move-result-object v0

    if-nez v0, :cond_5

    .line 24
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create Input Merger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    iget-object v3, v3, Lz0/u;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lr0/w0;->p()V

    return-void

    .line 26
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v2, p0, Lr0/w0;->d:Lz0/u;

    iget-object v2, v2, Lz0/u;->e:Landroidx/work/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v2, p0, Lr0/w0;->q:Lz0/v;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lz0/v;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {v0, v1}, Lq0/j;->a(Ljava/util/List;)Landroidx/work/b;

    move-result-object v0

    goto :goto_0

    .line 30
    :goto_1
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v4, p0, Lr0/w0;->s:Ljava/util/List;

    iget-object v5, p0, Lr0/w0;->c:Landroidx/work/WorkerParameters$a;

    iget-object v1, p0, Lr0/w0;->d:Lz0/u;

    iget v6, v1, Lz0/u;->k:I

    .line 32
    invoke-virtual {v1}, Lz0/u;->f()I

    move-result v7

    iget-object v1, p0, Lr0/w0;->h:Landroidx/work/a;

    .line 33
    invoke-virtual {v1}, Landroidx/work/a;->d()Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v9, p0, Lr0/w0;->f:Lc1/b;

    iget-object v1, p0, Lr0/w0;->h:Landroidx/work/a;

    .line 34
    invoke-virtual {v1}, Landroidx/work/a;->n()Lq0/c0;

    move-result-object v10

    new-instance v11, La1/z;

    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    iget-object v12, p0, Lr0/w0;->f:Lc1/b;

    invoke-direct {v11, v1, v12}, La1/z;-><init>(Landroidx/work/impl/WorkDatabase;Lc1/b;)V

    new-instance v12, La1/y;

    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    iget-object v13, p0, Lr0/w0;->o:Ly0/a;

    iget-object v14, p0, Lr0/w0;->f:Lc1/b;

    invoke-direct {v12, v1, v13, v14}, La1/y;-><init>(Landroidx/work/impl/WorkDatabase;Ly0/a;Lc1/b;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;IILjava/util/concurrent/Executor;Lc1/b;Lq0/c0;Lq0/u;Lq0/i;)V

    .line 35
    iget-object v1, p0, Lr0/w0;->e:Landroidx/work/c;

    if-nez v1, :cond_6

    .line 36
    iget-object v1, p0, Lr0/w0;->h:Landroidx/work/a;

    invoke-virtual {v1}, Landroidx/work/a;->n()Lq0/c0;

    move-result-object v1

    iget-object v2, p0, Lr0/w0;->a:Landroid/content/Context;

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    iget-object v3, v3, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lq0/c0;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/c;

    move-result-object v1

    iput-object v1, p0, Lr0/w0;->e:Landroidx/work/c;

    .line 37
    :cond_6
    iget-object v1, p0, Lr0/w0;->e:Landroidx/work/c;

    if-nez v1, :cond_7

    .line 38
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create Worker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    iget-object v3, v3, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lr0/w0;->p()V

    return-void

    .line 40
    :cond_7
    invoke-virtual {v1}, Landroidx/work/c;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 41
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an already-used Worker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lr0/w0;->d:Lz0/u;

    iget-object v3, v3, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Worker Factory should return new instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lr0/w0;->p()V

    return-void

    .line 43
    :cond_8
    iget-object v1, p0, Lr0/w0;->e:Landroidx/work/c;

    invoke-virtual {v1}, Landroidx/work/c;->setUsed()V

    .line 44
    invoke-virtual {p0}, Lr0/w0;->s()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 45
    invoke-virtual {p0}, Lr0/w0;->r()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 46
    :cond_9
    new-instance v1, La1/x;

    iget-object v3, p0, Lr0/w0;->a:Landroid/content/Context;

    iget-object v4, p0, Lr0/w0;->d:Lz0/u;

    iget-object v5, p0, Lr0/w0;->e:Landroidx/work/c;

    .line 47
    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->b()Lq0/i;

    move-result-object v6

    iget-object v7, p0, Lr0/w0;->f:Lc1/b;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, La1/x;-><init>(Landroid/content/Context;Lz0/u;Landroidx/work/c;Lq0/i;Lc1/b;)V

    .line 48
    iget-object v0, p0, Lr0/w0;->f:Lc1/b;

    invoke-interface {v0}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v1}, La1/x;->b()Lr2/a;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lr0/w0;->v:Lb1/c;

    new-instance v2, Lr0/v0;

    invoke-direct {v2, p0, v0}, Lr0/v0;-><init>(Lr0/w0;Lr2/a;)V

    new-instance v3, La1/t;

    invoke-direct {v3}, La1/t;-><init>()V

    invoke-virtual {v1, v2, v3}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 51
    new-instance v1, Lr0/w0$a;

    invoke-direct {v1, p0, v0}, Lr0/w0$a;-><init>(Lr0/w0;Lr2/a;)V

    iget-object v2, p0, Lr0/w0;->f:Lc1/b;

    .line 52
    invoke-interface {v2}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2}, Lr2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 54
    iget-object v0, p0, Lr0/w0;->t:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lr0/w0;->v:Lb1/c;

    new-instance v2, Lr0/w0$b;

    invoke-direct {v2, p0, v0}, Lr0/w0$b;-><init>(Lr0/w0;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/w0;->f:Lc1/b;

    .line 56
    invoke-interface {v0}, Lc1/b;->c()Lc1/a;

    move-result-object v0

    .line 57
    invoke-virtual {v1, v2, v0}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 58
    :cond_a
    invoke-virtual {p0}, Lr0/w0;->n()V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 59
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 60
    throw v0
.end method

.method public p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lr0/w0;->h(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lr0/w0;->g:Landroidx/work/c$a;

    check-cast v1, Landroidx/work/c$a$a;

    .line 4
    invoke-virtual {v1}, Landroidx/work/c$a$a;->c()Landroidx/work/b;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lr0/w0;->q:Lz0/v;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    iget-object v4, p0, Lr0/w0;->d:Lz0/u;

    .line 6
    invoke-virtual {v4}, Lz0/u;->h()I

    move-result v4

    .line 7
    invoke-interface {v2, v3, v4}, Lz0/v;->u(Ljava/lang/String;I)V

    .line 8
    iget-object v2, p0, Lr0/w0;->q:Lz0/v;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lz0/v;->x(Ljava/lang/String;Landroidx/work/b;)V

    .line 9
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 11
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/i0;->i()V

    .line 13
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    .line 14
    throw v1
.end method

.method public final q()V
    .locals 9

    .line 1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr0/w0;->q:Lz0/v;

    sget-object v2, Lq0/y$c;->c:Lq0/y$c;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lr0/w0;->g:Landroidx/work/c$a;

    check-cast v1, Landroidx/work/c$a$c;

    .line 4
    invoke-virtual {v1}, Landroidx/work/c$a$c;->c()Landroidx/work/b;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lr0/w0;->q:Lz0/v;

    iget-object v3, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lz0/v;->x(Ljava/lang/String;Landroidx/work/b;)V

    .line 6
    iget-object v1, p0, Lr0/w0;->i:Lq0/b;

    invoke-interface {v1}, Lq0/b;->a()J

    move-result-wide v1

    .line 7
    iget-object v3, p0, Lr0/w0;->r:Lz0/b;

    iget-object v4, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lz0/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lr0/w0;->q:Lz0/v;

    invoke-interface {v5, v4}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v5

    sget-object v6, Lq0/y$c;->e:Lq0/y$c;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lr0/w0;->r:Lz0/b;

    .line 10
    invoke-interface {v5, v4}, Lz0/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v5

    sget-object v6, Lr0/w0;->x:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting status to enqueued for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lq0/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lr0/w0;->q:Lz0/v;

    sget-object v6, Lq0/y$c;->a:Lq0/y$c;

    invoke-interface {v5, v6, v4}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 13
    iget-object v5, p0, Lr0/w0;->q:Lz0/v;

    invoke-interface {v5, v4, v1, v2}, Lz0/v;->i(Ljava/lang/String;J)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 16
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 17
    iget-object v2, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/i0;->i()V

    .line 18
    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    .line 19
    throw v1
.end method

.method public final r()Z
    .locals 5

    .line 1
    iget v0, p0, Lr0/w0;->w:I

    const/4 v1, 0x0

    const/16 v2, -0x100

    if-eq v0, v2, :cond_1

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v2, Lr0/w0;->x:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Work interrupted for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lr0/w0;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lr0/w0;->m(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lq0/y$c;->e()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lr0/w0;->m(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/w0;->s:Ljava/util/List;

    invoke-virtual {p0, v0}, Lr0/w0;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr0/w0;->t:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lr0/w0;->o()V

    return-void
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v0

    .line 3
    sget-object v1, Lq0/y$c;->a:Lq0/y$c;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    sget-object v1, Lq0/y$c;->b:Lq0/y$c;

    iget-object v2, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lz0/v;->c(Lq0/y$c;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lz0/v;->n(Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lr0/w0;->q:Lz0/v;

    iget-object v1, p0, Lr0/w0;->b:Ljava/lang/String;

    const/16 v2, -0x100

    invoke-interface {v0, v1, v2}, Lz0/v;->g(Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr0/w0;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 9
    throw v0
.end method
