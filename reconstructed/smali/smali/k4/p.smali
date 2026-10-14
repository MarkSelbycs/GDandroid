.class public Lk4/p;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lk4/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/p$d;,
        Lk4/p$a;,
        Lk4/p$c;,
        Lk4/p$b;
    }
.end annotation


# static fields
.field public static final k:Ln4/a;


# instance fields
.field public a:Lk4/g;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo4/i;",
            "Lk4/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo4/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lt4/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk4/c;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lk4/r;

.field public g:Lk4/p$b;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr4/b;",
            "Lr4/k;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lk4/p;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lk4/p;->k:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lk4/p;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lk4/p;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Lk4/f;

    invoke-direct {v0}, Lk4/f;-><init>()V

    iput-object v0, p0, Lk4/p;->f:Lk4/r;

    .line 5
    new-instance v0, Lk4/p$c;

    invoke-direct {v0, p0}, Lk4/p$c;-><init>(Lk4/p;)V

    iput-object v0, p0, Lk4/p;->g:Lk4/p$b;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lk4/p;->h:Ljava/util/Map;

    .line 8
    new-instance v0, Lk4/h;

    invoke-direct {v0}, Lk4/h;-><init>()V

    iput-object v0, p0, Lk4/p;->a:Lk4/g;

    .line 9
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object v0

    sget-object v1, Lk4/m$b;->a:Lk4/m$b;

    if-eq v0, v1, :cond_0

    .line 10
    invoke-static {}, Lo4/a;->b()Lo4/a;

    move-result-object v0

    iput-object v0, p0, Lk4/p;->j:Lo4/a;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lk4/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/s<",
            "+",
            "Lr4/b;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lk4/p;-><init>()V

    .line 12
    invoke-virtual {p0}, Lk4/p;->u()V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lk4/p;->o(Lk4/s;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lk4/p;)Z
    .locals 0

    iget-boolean p0, p0, Lk4/p;->i:Z

    return p0
.end method

.method public static synthetic h(Lk4/p;)Lk4/g;
    .locals 0

    iget-object p0, p0, Lk4/p;->a:Lk4/g;

    return-object p0
.end method

.method public static synthetic i(Lk4/p;)Lk4/r;
    .locals 0

    iget-object p0, p0, Lk4/p;->f:Lk4/r;

    return-object p0
.end method

.method public static synthetic j(Lk4/p;)Lt4/a;
    .locals 0

    iget-object p0, p0, Lk4/p;->d:Lt4/a;

    return-object p0
.end method

.method public static synthetic k()Ln4/a;
    .locals 3

    sget-object v0, Lk4/p;->k:Ln4/a;

    return-object v0
.end method

.method public static synthetic l(Lk4/p;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lk4/p;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic m(Lk4/p;Lk4/k;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lk4/p;->v(Lk4/k;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lk4/p;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lk4/p;->h:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final A(Lk4/k;Lk4/q;Lk4/s;I)Lm4/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lk4/k;->V()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p4, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lk4/p;->B(Lk4/k;Lk4/q;Lk4/s;Lo4/j;)Lo4/i;

    return-object p4

    .line 3
    :cond_0
    iget-object v0, p0, Lk4/p;->d:Lt4/a;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lk4/p;->q()V

    .line 5
    :cond_1
    new-instance v0, Lk4/p$d;

    invoke-direct {v0}, Lk4/p$d;-><init>()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v8, Lk4/p$a;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lk4/p$a;-><init>(Lk4/p;Lm4/f;Ljava/lang/Object;Lk4/k;Lk4/q;Lk4/s;)V

    .line 8
    invoke-static {v8, p4}, Lk4/p$a;->d(Lk4/p$a;I)I

    .line 9
    iget-object p4, v8, Lk4/p$a;->e:Lk4/k;

    invoke-virtual {p0, p4, p2, p3, v8}, Lk4/p;->B(Lk4/k;Lk4/q;Lk4/s;Lo4/j;)Lo4/i;

    move-result-object p3

    .line 10
    iget-object p4, p0, Lk4/p;->f:Lk4/r;

    .line 11
    invoke-interface {p2}, Lk4/q;->s()I

    move-result v1

    .line 12
    invoke-interface {p2}, Lk4/q;->n()J

    move-result-wide v2

    .line 13
    invoke-interface {p4, v1, v2, v3}, Lk4/r;->a(IJ)J

    move-result-wide v1

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/32 v5, 0xf4240

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lk4/p$d;->i()Lm4/e;

    move-result-object p2

    if-nez p2, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v3, v1

    div-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long p2, v1, v9

    if-lez p2, :cond_2

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p2, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk4/p$a;

    .line 19
    sget-object p4, Lk4/p;->k:Ln4/a;

    invoke-interface {p4}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed pending request with handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 21
    :cond_3
    invoke-virtual {v8}, Lk4/p$a;->x()Z

    .line 22
    invoke-virtual {v8}, Lk4/p$a;->cancel()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-static {v8}, Lk4/p$a;->e(Lk4/p$a;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 24
    iget-object p2, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk4/p$a;

    if-eqz p2, :cond_5

    .line 25
    invoke-virtual {p2}, Lk4/p$a;->x()Z

    .line 26
    :goto_1
    invoke-virtual {p2}, Lk4/p$a;->cancel()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 27
    :try_start_3
    sget-object p4, Lk4/p;->k:Ln4/a;

    invoke-interface {p4, p2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 28
    invoke-virtual {v8}, Lk4/p$a;->x()Z

    .line 29
    invoke-virtual {v8}, Lk4/p$a;->cancel()Z

    .line 30
    iget-object p2, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk4/p$a;

    if-eqz p2, :cond_4

    .line 31
    invoke-virtual {p2}, Lk4/p$a;->x()Z

    .line 32
    invoke-virtual {p2}, Lk4/p$a;->cancel()Z

    .line 33
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    invoke-static {v8}, Lk4/p$a;->e(Lk4/p$a;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 35
    iget-object p2, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk4/p$a;

    if-eqz p2, :cond_5

    .line 36
    invoke-virtual {p2}, Lk4/p$a;->x()Z

    goto :goto_1

    .line 37
    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_6

    .line 38
    invoke-virtual {p2}, Lk4/p$a;->x()Z

    .line 39
    invoke-virtual {p2}, Lk4/p$a;->cancel()Z

    .line 40
    :cond_6
    invoke-virtual {v0}, Lk4/p$d;->i()Lm4/e;

    move-result-object p2

    if-nez p2, :cond_7

    .line 41
    new-instance p2, Lm4/e;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lk4/p$d;->h(Lk4/p$d;Lm4/e;)Lm4/e;

    .line 42
    :cond_7
    invoke-static {v0}, Lk4/p$d;->g(Lk4/p$d;)Lm4/e;

    move-result-object p1

    return-object p1

    .line 43
    :goto_3
    :try_start_5
    invoke-static {v8}, Lk4/p$a;->e(Lk4/p$a;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 44
    iget-object p2, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk4/p$a;

    if-eqz p2, :cond_8

    .line 45
    invoke-virtual {p2}, Lk4/p$a;->x()Z

    .line 46
    invoke-virtual {p2}, Lk4/p$a;->cancel()Z

    .line 47
    :cond_8
    throw p1

    :catchall_1
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public B(Lk4/k;Lk4/q;Lk4/s;Lo4/j;)Lo4/i;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/k;",
            "Lk4/q;",
            "Lk4/s;",
            "Lo4/j<",
            "Lk4/k;",
            ">;)",
            "Lo4/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lk4/p;->w(Lk4/q;)Lk4/s;

    move-result-object p3

    :cond_0
    move-object v1, p3

    .line 2
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    const/4 v4, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lk4/g;->g(Lk4/s;Lk4/q;Lk4/k;ZLo4/j;)Lo4/i;

    move-result-object p1

    return-object p1
.end method

.method public d(Lk4/d;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lk4/d;->c()Lo4/i;

    move-result-object v0

    .line 2
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object v1

    sget-object v2, Lk4/m$b;->c:Lk4/m$b;

    if-ne v1, v2, :cond_0

    instance-of v1, v0, Lo4/k;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lo4/k;

    .line 4
    iget-object v2, p0, Lk4/p;->j:Lo4/a;

    new-instance v3, Lm4/c;

    sget-object v4, Lo4/m;->y0:Lr4/j;

    .line 5
    invoke-interface {v1}, Lo4/k;->d()J

    move-result-wide v5

    invoke-direct {v3, p0, v4, v5, v6}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;J)V

    .line 6
    invoke-virtual {v2, v3}, Lo4/a;->a(Lm4/c;)V

    .line 7
    new-instance v2, Lm4/c;

    sget-object v9, Lo4/m;->C0:Lr4/j;

    .line 8
    invoke-virtual {p1}, Lk4/d;->e()Lr4/b;

    move-result-object v10

    .line 9
    invoke-interface {v1}, Lo4/k;->d()J

    move-result-wide v11

    move-object v7, v2

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;Ljava/lang/Object;J)V

    .line 10
    iget-object v1, p0, Lk4/p;->j:Lo4/a;

    invoke-virtual {v1, v2}, Lo4/a;->a(Lm4/c;)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Lk4/d;->b()Lk4/k;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Lk4/k;->M()I

    move-result v1

    const/16 v2, -0x58

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 13
    invoke-virtual {p1, v3}, Lk4/d;->D(Z)V

    .line 14
    iget-object v1, p0, Lk4/p;->g:Lk4/p$b;

    invoke-interface {v1, v0, p1}, Lk4/p$b;->a(Lo4/i;Lk4/d;)V

    goto/16 :goto_0

    .line 15
    :cond_1
    invoke-virtual {v7}, Lk4/k;->M()I

    move-result v1

    const/16 v2, -0x5e

    if-ne v1, v2, :cond_5

    .line 16
    invoke-virtual {p1, v3}, Lk4/d;->D(Z)V

    .line 17
    sget-object v1, Lk4/p;->k:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up pending request with handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 19
    :cond_2
    iget-object v2, p0, Lk4/p;->b:Ljava/util/Map;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/p$a;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lk4/p$a;->w()V

    .line 22
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 23
    invoke-interface {v1}, Ln4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received response that cannot be matched to any outstanding request, address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Lk4/d;->e()Lr4/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", requestID="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v7}, Lk4/k;->I()Lr4/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-interface {v1, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {p0, v0, v7}, Lk4/p;->x(Lk4/p$a;Lk4/k;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 29
    iget-object v1, v0, Lk4/p$a;->c:Lm4/f;

    if-eqz v1, :cond_7

    .line 30
    new-instance v2, Lm4/e;

    .line 31
    invoke-virtual {p1}, Lk4/d;->e()Lr4/b;

    move-result-object v5

    iget-object v6, v0, Lk4/p$a;->e:Lk4/k;

    iget-object v8, v0, Lk4/p$a;->d:Ljava/lang/Object;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;)V

    .line 32
    invoke-interface {v1, v2}, Lm4/f;->c(Lm4/e;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 34
    :cond_5
    sget-object v0, Lk4/p;->k:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fire process PDU event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk4/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 36
    :cond_6
    invoke-virtual {p0, p1}, Lk4/p;->r(Lk4/d;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public o(Lk4/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/s<",
            "+",
            "Lr4/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    invoke-interface {v0, p1}, Lk4/g;->e(Lk4/s;)V

    .line 2
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    invoke-interface {p1, v0}, Lk4/s;->e(Ls4/c;)V

    return-void
.end method

.method public p()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    invoke-interface {v0}, Lk4/g;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/s;

    .line 2
    invoke-interface {v1}, Lk4/s;->close()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk4/p;->d:Lt4/a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lk4/p;->d:Lt4/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lt4/a;->cancel()V

    .line 6
    :cond_1
    iget-object v0, p0, Lk4/p;->b:Ljava/util/Map;

    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/p$a;

    .line 10
    invoke-virtual {v1}, Lk4/p$a;->cancel()Z

    .line 11
    new-instance v9, Lm4/e;

    const/4 v4, 0x0

    iget-object v5, v1, Lk4/p$a;->e:Lk4/k;

    const/4 v6, 0x0

    iget-object v7, v1, Lk4/p$a;->d:Ljava/lang/Object;

    new-instance v8, Ljava/lang/InterruptedException;

    const-string v2, "Snmp session has been closed"

    invoke-direct {v8, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 12
    iget-object v1, v1, Lk4/p$a;->c:Lm4/f;

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1, v9}, Lm4/f;->c(Lm4/e;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    iget-object v0, p0, Lk4/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized q()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk4/p;->d:Lt4/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lk4/m;->h()Lt4/i;

    move-result-object v0

    invoke-interface {v0}, Lt4/i;->a()Lt4/a;

    move-result-object v0

    iput-object v0, p0, Lk4/p;->d:Lt4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r(Lk4/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/p;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/c;

    .line 3
    invoke-interface {v1, p1}, Lk4/c;->d(Lk4/d;)V

    .line 4
    invoke-virtual {p1}, Lk4/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public s()Lo4/a;
    .locals 1

    iget-object v0, p0, Lk4/p;->j:Lo4/a;

    return-object v0
.end method

.method public t(Lk4/k;Lk4/k;Lr4/b;)V
    .locals 2

    .line 1
    sget-object v0, Lo4/m;->r:Lr4/j;

    invoke-virtual {p1, v0}, Lk4/k;->T(Lr4/j;)Lr4/u;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lr4/k;

    if-eqz v0, :cond_0

    .line 3
    instance-of v0, p2, Lk4/n;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Lk4/n;

    move-object v0, p1

    check-cast v0, Lr4/k;

    invoke-virtual {p2, v0}, Lk4/n;->l0(Lr4/k;)V

    .line 5
    sget-object p2, Lk4/p;->k:Ln4/a;

    invoke-interface {p2}, Ln4/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discovered contextEngineID \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' by RFC 5343 for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->g(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    invoke-interface {v0, p0}, Lk4/g;->d(Lk4/c;)V

    .line 2
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    new-instance v1, Lo4/d;

    invoke-direct {v1}, Lo4/d;-><init>()V

    invoke-interface {v0, v1}, Lk4/g;->f(Lo4/g;)V

    .line 3
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    new-instance v1, Lo4/c;

    invoke-direct {v1}, Lo4/c;-><init>()V

    invoke-interface {v0, v1}, Lk4/g;->f(Lo4/g;)V

    .line 4
    iget-object v0, p0, Lk4/p;->a:Lk4/g;

    new-instance v1, Lo4/e;

    invoke-direct {v1}, Lo4/e;-><init>()V

    invoke-interface {v0, v1}, Lk4/g;->f(Lo4/g;)V

    .line 5
    invoke-static {}, Lp4/z;->h()Lp4/z;

    move-result-object v0

    invoke-virtual {v0}, Lp4/z;->c()Lp4/z;

    return-void
.end method

.method public final v(Lk4/k;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lk4/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lk4/n;

    .line 3
    invoke-virtual {p1}, Lk4/n;->j0()Lr4/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lk4/n;->j0()Lr4/k;

    move-result-object p1

    invoke-virtual {p1}, Lr4/k;->e0()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public w(Lk4/q;)Lk4/s;
    .locals 4

    .line 1
    invoke-interface {p1}, Lk4/q;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/s;

    .line 3
    invoke-interface {v1}, Lk4/s;->f()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lk4/q;->c0()Lr4/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Lk4/p$a;Lk4/k;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lk4/p$a;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1, v1}, Lk4/p$a;->f(Lk4/p$a;Z)Z

    .line 3
    iget-object v0, p0, Lk4/p;->b:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lk4/p;->b:Ljava/util/Map;

    invoke-static {p1}, Lk4/p$a;->g(Lk4/p$a;)Lo4/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lk4/p$a;->g(Lk4/p$a;)Lo4/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2}, Lk4/p$a;->h(Lk4/p$a;Lo4/i;)Lo4/i;

    .line 7
    iget-object v2, p1, Lk4/p$a;->e:Lk4/k;

    iget-object v3, p1, Lk4/p$a;->f:Lk4/q;

    invoke-interface {v3}, Lk4/q;->c0()Lr4/b;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lk4/p;->t(Lk4/k;Lk4/k;Lr4/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object p2, p1, Lk4/p$a;->e:Lk4/k;

    iget-object v2, p1, Lk4/p$a;->f:Lk4/q;

    iget-object v3, p1, Lk4/p$a;->g:Lk4/s;

    invoke-virtual {p0, p2, v2, v3, p1}, Lk4/p;->B(Lk4/k;Lk4/q;Lk4/s;Lo4/j;)Lo4/i;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    sget-object p2, Lk4/p;->k:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while resending request after RFC 5343 context engine ID discovery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {p2, v2, p1}, Ln4/a;->h(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    sget-object p1, Lk4/p;->k:Ln4/a;

    invoke-interface {p1}, Ln4/a;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing PDU handle "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 14
    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    return v1
.end method

.method public y(Lk4/k;Lk4/q;)Lm4/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lk4/p;->z(Lk4/k;Lk4/q;Lk4/s;)Lm4/e;

    move-result-object p1

    return-object p1
.end method

.method public z(Lk4/k;Lk4/q;Lk4/s;)Lm4/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lk4/p;->A(Lk4/k;Lk4/q;Lk4/s;I)Lm4/e;

    move-result-object p1

    return-object p1
.end method
