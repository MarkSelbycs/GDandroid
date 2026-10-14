.class public Lk4/p$a;
.super Ljava/util/TimerTask;
.source "Snmp.java"

# interfaces
.implements Lo4/j;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TimerTask;",
        "Lo4/j<",
        "Lk4/k;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:Lo4/i;

.field public b:I

.field public c:Lm4/f;

.field public d:Ljava/lang/Object;

.field public e:Lk4/k;

.field public f:Lk4/q;

.field public g:Lk4/s;

.field public h:I

.field public i:I

.field public volatile o:Z

.field public volatile p:Z

.field public volatile q:Z

.field public volatile r:Z

.field public s:Lm4/c;

.field public t:Lm4/c;

.field public u:Lk4/k;

.field public final synthetic v:Lk4/p;


# direct methods
.method public constructor <init>(Lk4/p;Lk4/p$a;)V
    .locals 1

    .line 24
    iput-object p1, p0, Lk4/p$a;->v:Lk4/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lk4/p$a;->h:I

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lk4/p$a;->i:I

    .line 27
    iput-boolean p1, p0, Lk4/p$a;->o:Z

    .line 28
    iput-boolean p1, p0, Lk4/p$a;->p:Z

    .line 29
    iput-boolean p1, p0, Lk4/p$a;->q:Z

    .line 30
    iput-boolean p1, p0, Lk4/p$a;->r:Z

    .line 31
    iget-object p1, p2, Lk4/p$a;->d:Ljava/lang/Object;

    iput-object p1, p0, Lk4/p$a;->d:Ljava/lang/Object;

    .line 32
    iget-object p1, p2, Lk4/p$a;->c:Lm4/f;

    iput-object p1, p0, Lk4/p$a;->c:Lm4/f;

    .line 33
    iget p1, p2, Lk4/p$a;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lk4/p$a;->b:I

    .line 34
    iget-object p1, p2, Lk4/p$a;->e:Lk4/k;

    iput-object p1, p0, Lk4/p$a;->e:Lk4/k;

    .line 35
    iget-object p1, p2, Lk4/p$a;->f:Lk4/q;

    iput-object p1, p0, Lk4/p$a;->f:Lk4/q;

    .line 36
    iget p1, p2, Lk4/p$a;->h:I

    iput p1, p0, Lk4/p$a;->h:I

    .line 37
    iget-boolean p1, p2, Lk4/p$a;->p:Z

    iput-boolean p1, p0, Lk4/p$a;->p:Z

    .line 38
    iget-object p1, p2, Lk4/p$a;->g:Lk4/s;

    iput-object p1, p0, Lk4/p$a;->g:Lk4/s;

    .line 39
    iget-object p1, p2, Lk4/p$a;->u:Lk4/k;

    iput-object p1, p0, Lk4/p$a;->u:Lk4/k;

    .line 40
    iget-object p1, p2, Lk4/p$a;->s:Lm4/c;

    iput-object p1, p0, Lk4/p$a;->s:Lm4/c;

    return-void
.end method

.method public constructor <init>(Lk4/p;Lm4/f;Ljava/lang/Object;Lk4/k;Lk4/q;Lk4/s;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lk4/p$a;->v:Lk4/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk4/p$a;->h:I

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lk4/p$a;->i:I

    .line 4
    iput-boolean v0, p0, Lk4/p$a;->o:Z

    .line 5
    iput-boolean v0, p0, Lk4/p$a;->p:Z

    .line 6
    iput-boolean v0, p0, Lk4/p$a;->q:Z

    .line 7
    iput-boolean v0, p0, Lk4/p$a;->r:Z

    .line 8
    iput-object p3, p0, Lk4/p$a;->d:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lk4/p$a;->c:Lm4/f;

    .line 10
    invoke-interface {p5}, Lk4/q;->s()I

    move-result p2

    iput p2, p0, Lk4/p$a;->b:I

    .line 11
    iput-object p4, p0, Lk4/p$a;->e:Lk4/k;

    .line 12
    invoke-interface {p5}, Lk4/q;->K()Lk4/q;

    move-result-object p2

    iput-object p2, p0, Lk4/p$a;->f:Lk4/q;

    .line 13
    iput-object p6, p0, Lk4/p$a;->g:Lk4/s;

    .line 14
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object p2

    sget-object p3, Lk4/m$b;->a:Lk4/m$b;

    if-eq p2, p3, :cond_0

    .line 15
    new-instance p2, Lm4/c;

    sget-object p3, Lo4/m;->x0:Lr4/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p2, p0, p3, v0, v1}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;J)V

    iput-object p2, p0, Lk4/p$a;->s:Lm4/c;

    .line 16
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object p2

    sget-object p3, Lk4/m$b;->c:Lk4/m$b;

    if-ne p2, p3, :cond_0

    .line 17
    new-instance p2, Lm4/c;

    sget-object v2, Lo4/m;->B0:Lr4/j;

    .line 18
    invoke-interface {p5}, Lk4/q;->c0()Lr4/b;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;Ljava/lang/Object;J)V

    iput-object p2, p0, Lk4/p$a;->t:Lm4/c;

    .line 19
    :cond_0
    invoke-static {p1, p4}, Lk4/p;->m(Lk4/p;Lk4/k;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    invoke-static {p1}, Lk4/p;->n(Lk4/p;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p5}, Lk4/q;->c0()Lr4/b;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/k;

    if-eqz p2, :cond_1

    .line 21
    check-cast p4, Lk4/n;

    invoke-virtual {p4, p2}, Lk4/n;->l0(Lr4/k;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1}, Lk4/p;->g(Lk4/p;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 23
    invoke-virtual {p0}, Lk4/p$a;->m()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lk4/p$a;)I
    .locals 0

    iget p0, p0, Lk4/p$a;->i:I

    return p0
.end method

.method public static synthetic d(Lk4/p$a;I)I
    .locals 0

    iput p1, p0, Lk4/p$a;->i:I

    return p1
.end method

.method public static synthetic e(Lk4/p$a;)Z
    .locals 0

    iget-boolean p0, p0, Lk4/p$a;->o:Z

    return p0
.end method

.method public static synthetic f(Lk4/p$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lk4/p$a;->p:Z

    return p1
.end method

.method public static synthetic g(Lk4/p$a;)Lo4/i;
    .locals 0

    iget-object p0, p0, Lk4/p$a;->a:Lo4/i;

    return-object p0
.end method

.method public static synthetic h(Lk4/p$a;Lo4/i;)Lo4/i;
    .locals 0

    iput-object p1, p0, Lk4/p$a;->a:Lo4/i;

    return-object p1
.end method

.method public static synthetic j(Lk4/p$a;)I
    .locals 0

    iget p0, p0, Lk4/p$a;->h:I

    return p0
.end method

.method public static synthetic k(Lk4/p$a;)I
    .locals 2

    iget v0, p0, Lk4/p$a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk4/p$a;->h:I

    return v0
.end method


# virtual methods
.method public bridge synthetic a(Lo4/i;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lk4/k;

    invoke-virtual {p0, p1, p2}, Lk4/p$a;->u(Lo4/i;Lk4/k;)V

    return-void
.end method

.method public cancel()Z
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk4/p$a;->r:Z

    .line 2
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lk4/p$a;->f:Lk4/q;

    .line 4
    iget-object v2, p0, Lk4/p$a;->s:Lm4/c;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lk4/p$a;->t()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lk4/p$a;->v:Lk4/p;

    invoke-virtual {v2}, Lk4/p;->s()Lo4/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lm4/c;

    iget-object v4, p0, Lk4/p$a;->v:Lk4/p;

    sget-object v5, Lo4/m;->v0:Lr4/j;

    invoke-direct {v3, v4, v5}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    invoke-virtual {v2, v3}, Lo4/a;->a(Lm4/c;)V

    .line 7
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object v3

    sget-object v4, Lk4/m$b;->c:Lk4/m$b;

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    .line 8
    new-instance v3, Lm4/c;

    iget-object v6, p0, Lk4/p$a;->v:Lk4/p;

    sget-object v7, Lo4/m;->z0:Lr4/j;

    .line 9
    invoke-interface {v1}, Lk4/q;->c0()Lr4/b;

    move-result-object v8

    const-wide/16 v9, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;Ljava/lang/Object;J)V

    .line 10
    invoke-virtual {v2, v3}, Lo4/a;->a(Lm4/c;)V

    .line 11
    :cond_0
    iget-boolean v1, p0, Lk4/p$a;->q:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lk4/p$a;->a:Lo4/i;

    .line 13
    iput-object v1, p0, Lk4/p$a;->e:Lk4/k;

    .line 14
    iput-object v1, p0, Lk4/p$a;->f:Lk4/q;

    .line 15
    iput-object v1, p0, Lk4/p$a;->g:Lk4/s;

    .line 16
    iput-object v1, p0, Lk4/p$a;->c:Lm4/f;

    .line 17
    iput-object v1, p0, Lk4/p$a;->d:Ljava/lang/Object;

    :cond_1
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/p$a;->v:Lk4/p;

    invoke-static {v0}, Lk4/p;->h(Lk4/p;)Lk4/g;

    move-result-object v0

    iget-object v1, p0, Lk4/p$a;->f:Lk4/q;

    invoke-interface {v1}, Lk4/q;->b0()I

    move-result v1

    invoke-interface {v0, v1}, Lk4/g;->c(I)Lo4/g;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lo4/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk4/p$a;->f:Lk4/q;

    instance-of v2, v1, Lk4/o;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lo4/e;

    .line 4
    check-cast v1, Lk4/o;

    .line 5
    invoke-virtual {v1}, Lk4/a;->r0()I

    move-result v1

    invoke-virtual {v0, v1}, Lo4/e;->q(I)Lp4/w;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lp4/w;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing RFC 5343 contextEngineID discovery on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk4/p$a;->f:Lk4/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->g(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    new-instance v0, Lk4/n;

    invoke-direct {v0}, Lk4/n;-><init>()V

    .line 10
    sget-object v1, Lo4/e;->l:Lr4/k;

    invoke-virtual {v0, v1}, Lk4/n;->l0(Lr4/k;)V

    .line 11
    new-instance v1, Lr4/v;

    sget-object v2, Lo4/m;->r:Lr4/j;

    invoke-direct {v1, v2}, Lr4/v;-><init>(Lr4/j;)V

    invoke-virtual {v0, v1}, Lk4/k;->h(Lr4/v;)V

    .line 12
    invoke-virtual {p0, v0}, Lk4/p$a;->p(Lk4/k;)V

    :cond_1
    return-void
.end method

.method public p(Lk4/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/p$a;->e:Lk4/k;

    iput-object v0, p0, Lk4/p$a;->u:Lk4/k;

    .line 2
    iput-object p1, p0, Lk4/p$a;->e:Lk4/k;

    return-void
.end method

.method public declared-synchronized run()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, Lk4/p$a;->a:Lo4/i;

    .line 2
    iget-object v6, v1, Lk4/p$a;->e:Lk4/k;

    .line 3
    iget-object v3, v1, Lk4/p$a;->f:Lk4/q;

    .line 4
    iget-object v0, v1, Lk4/p$a;->g:Lk4/s;

    .line 5
    iget-object v9, v1, Lk4/p$a;->c:Lm4/f;

    .line 6
    iget-object v8, v1, Lk4/p$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    :try_start_1
    iget-object v4, v1, Lk4/p$a;->v:Lk4/p;

    invoke-static {v4}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    iget-boolean v5, v1, Lk4/p$a;->o:Z

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-nez v5, :cond_1

    iget v5, v1, Lk4/p$a;->b:I

    if-lez v5, :cond_1

    iget-boolean v5, v1, Lk4/p$a;->p:Z

    if-nez v5, :cond_1

    move v5, v10

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    iput-boolean v5, v1, Lk4/p$a;->q:Z

    .line 9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget-boolean v4, v1, Lk4/p$a;->q:Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 11
    :try_start_4
    new-instance v4, Lk4/p$a;

    iget-object v5, v1, Lk4/p$a;->v:Lk4/p;

    invoke-direct {v4, v5, v1}, Lk4/p$a;-><init>(Lk4/p;Lk4/p$a;)V

    .line 12
    iget-object v5, v1, Lk4/p$a;->v:Lk4/p;

    invoke-virtual {v5, v6, v3, v0, v4}, Lk4/p;->B(Lk4/k;Lk4/q;Lk4/s;Lo4/j;)Lo4/i;

    .line 13
    iput-boolean v7, v1, Lk4/p$a;->q:Z

    .line 14
    iget-object v0, v1, Lk4/p$a;->s:Lm4/c;

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, v1, Lk4/p$a;->v:Lk4/p;

    invoke-virtual {v0}, Lk4/p;->s()Lo4/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    new-instance v4, Lm4/c;

    iget-object v5, v1, Lk4/p$a;->v:Lk4/p;

    sget-object v7, Lo4/m;->w0:Lr4/j;

    invoke-direct {v4, v5, v7}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    invoke-virtual {v0, v4}, Lo4/a;->a(Lm4/c;)V

    .line 17
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object v4

    sget-object v5, Lk4/m$b;->c:Lk4/m$b;

    if-ne v4, v5, :cond_5

    .line 18
    new-instance v4, Lm4/c;

    iget-object v12, v1, Lk4/p$a;->v:Lk4/p;

    sget-object v13, Lo4/m;->A0:Lr4/j;

    .line 19
    invoke-interface {v3}, Lk4/q;->c0()Lr4/b;

    move-result-object v14

    const-wide/16 v15, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;Ljava/lang/Object;J)V

    .line 20
    invoke-virtual {v0, v4}, Lo4/a;->a(Lm4/c;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 21
    :try_start_5
    iget-object v0, v1, Lk4/p$a;->c:Lm4/f;

    .line 22
    iput-boolean v10, v1, Lk4/p$a;->o:Z

    .line 23
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send SNMP message to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-interface {v4, v5}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 26
    iget-object v4, v1, Lk4/p$a;->v:Lk4/p;

    invoke-static {v4}, Lk4/p;->h(Lk4/p;)Lk4/g;

    move-result-object v4

    invoke-interface {v3}, Lk4/q;->b0()I

    move-result v3

    invoke-interface {v4, v3, v2}, Lk4/g;->b(ILo4/i;)V

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, v1, Lk4/p$a;->c:Lm4/f;

    new-instance v10, Lm4/e;

    iget-object v4, v1, Lk4/p$a;->v:Lk4/p;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v0, v10}, Lm4/f;->c(Lm4/e;)V

    goto :goto_1

    .line 28
    :cond_2
    iget-boolean v0, v1, Lk4/p$a;->o:Z

    if-nez v0, :cond_4

    .line 29
    iput-boolean v10, v1, Lk4/p$a;->o:Z

    .line 30
    iget-object v0, v1, Lk4/p$a;->v:Lk4/p;

    invoke-static {v0}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-boolean v0, v1, Lk4/p$a;->r:Z

    if-nez v0, :cond_5

    .line 32
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request timed out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo4/i;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 34
    :cond_3
    iget-object v0, v1, Lk4/p$a;->v:Lk4/p;

    invoke-static {v0}, Lk4/p;->h(Lk4/p;)Lk4/g;

    move-result-object v0

    invoke-interface {v3}, Lk4/q;->b0()I

    move-result v3

    invoke-interface {v0, v3, v2}, Lk4/g;->b(ILo4/i;)V

    .line 35
    new-instance v0, Lm4/e;

    iget-object v4, v1, Lk4/p$a;->v:Lk4/p;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;)V

    invoke-interface {v9, v0}, Lm4/f;->c(Lm4/e;)V

    goto :goto_1

    .line 36
    :cond_4
    iget-object v0, v1, Lk4/p$a;->v:Lk4/p;

    invoke-static {v0}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 37
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 38
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v0

    .line 39
    :try_start_8
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to process pending request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-interface {v3, v2, v0}, Ln4/a;->b(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 42
    throw v0

    :catch_2
    move-exception v0

    .line 43
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to process pending request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-interface {v3, v2, v0}, Ln4/a;->h(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 46
    throw v0

    .line 47
    :cond_6
    :goto_2
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v4

    invoke-interface {v4}, Ln4/a;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 48
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PendingRequest canceled key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pdu="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", target="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", transport="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listener="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 49
    :cond_7
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lk4/p$a;->p:Z

    return v0
.end method

.method public declared-synchronized u(Lo4/i;Lk4/k;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lk4/p$a;->a:Lo4/i;

    if-nez p2, :cond_3

    .line 2
    iput-object p1, p0, Lk4/p$a;->a:Lo4/i;

    .line 3
    iget-object p2, p0, Lk4/p$a;->f:Lk4/q;

    if-eqz p2, :cond_3

    .line 4
    iget-boolean v0, p0, Lk4/p$a;->r:Z

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lk4/p$a;->v:Lk4/p;

    invoke-static {v0}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lk4/p$a;->v(Lo4/i;)V

    .line 7
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running pending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk4/p$a;->c:Lm4/f;

    instance-of v2, v2, Lk4/p$d;

    if-eqz v2, :cond_0

    const-string v2, "sync"

    goto :goto_0

    :cond_0
    const-string v2, "async"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request with handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and retry count left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk4/p$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lk4/p$a;->v:Lk4/p;

    .line 10
    invoke-static {v0}, Lk4/p;->i(Lk4/p;)Lk4/r;

    move-result-object v0

    invoke-interface {p2}, Lk4/q;->s()I

    move-result v1

    iget v2, p0, Lk4/p$a;->b:I

    sub-int/2addr v1, v2

    .line 11
    invoke-interface {p2}, Lk4/q;->s()I

    move-result v2

    .line 12
    invoke-interface {p2}, Lk4/q;->n()J

    move-result-wide v3

    .line 13
    invoke-interface {v0, v1, v2, v3, v4}, Lk4/r;->b(IIJ)J

    move-result-wide v0

    .line 14
    iget-boolean p2, p0, Lk4/p$a;->o:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lk4/p$a;->p:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lk4/p$a;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 15
    :try_start_1
    iget-object p1, p0, Lk4/p$a;->v:Lk4/p;

    invoke-static {p1}, Lk4/p;->j(Lk4/p;)Lt4/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p1, p0, v0, v1}, Lt4/a;->a(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 17
    :cond_2
    :try_start_2
    iget-object p2, p0, Lk4/p$a;->v:Lk4/p;

    invoke-static {p2}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :catch_0
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public v(Lo4/i;)V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk4/p$a;->p:Z

    .line 2
    iget-object v0, p0, Lk4/p$a;->s:Lm4/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk4/p$a;->v:Lk4/p;

    invoke-virtual {v0}, Lk4/p;->s()Lo4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lk4/p$a;->s:Lm4/c;

    invoke-virtual {v3}, Lm4/c;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 5
    iget-object v3, p0, Lk4/p$a;->s:Lm4/c;

    invoke-virtual {v3, v1, v2}, Lm4/c;->f(J)V

    .line 6
    iget-object v3, p0, Lk4/p$a;->s:Lm4/c;

    invoke-virtual {v0, v3}, Lo4/a;->a(Lm4/c;)V

    .line 7
    iget-object v3, p0, Lk4/p$a;->t:Lm4/c;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3, v1, v2}, Lm4/c;->f(J)V

    .line 9
    iget-object v1, p0, Lk4/p$a;->t:Lm4/c;

    invoke-virtual {v0, v1}, Lo4/a;->a(Lm4/c;)V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk4/p$a;->o:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lk4/p$a;->o:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/p$a;->u:Lk4/k;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lk4/p$a;->e:Lk4/k;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk4/p$a;->u:Lk4/k;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
