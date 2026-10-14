.class public Lp4/g0;
.super Ljava/lang/Object;
.source "UsmTimeTable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Ln4/a;


# instance fields
.field public a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lr4/u;",
            "Lp4/f0;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Lp4/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lp4/g0;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/g0;->d:Ln4/a;

    return-void
.end method

.method public constructor <init>(Lr4/k;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lp4/g0;->a:Ljava/util/Hashtable;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lp4/g0;->b:J

    .line 4
    new-instance v0, Lp4/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lp4/f0;-><init>(Lr4/k;II)V

    invoke-virtual {p0, v0}, Lp4/g0;->u(Lp4/f0;)V

    return-void
.end method


# virtual methods
.method public b(Lp4/f0;)V
    .locals 2

    iget-object v0, p0, Lp4/g0;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lp4/f0;->c()Lr4/k;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized c(Lr4/k;ZII)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lp4/g0;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    :try_start_1
    new-instance p2, Lp4/f0;

    invoke-direct {p2, p1, p3, p4}, Lp4/f0;-><init>(Lr4/k;II)V

    invoke-virtual {p0, p2}, Lp4/g0;->b(Lp4/f0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return v1

    :cond_1
    const/16 p1, 0x582

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lp4/f0;)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 2
    iget-object v1, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v1}, Lp4/f0;->c()Lr4/k;

    move-result-object v1

    invoke-virtual {p1}, Lp4/f0;->c()Lr4/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x96

    const/16 v4, 0x583

    const v5, 0x7fffffff

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lp4/g0;->c:Lp4/f0;

    .line 4
    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result v1

    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v5

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lp4/g0;->c:Lp4/f0;

    .line 5
    invoke-virtual {v1}, Lp4/f0;->f()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lp4/f0;->e()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lp4/g0;->d:Ln4/a;

    invoke-interface {p1}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CheckTime: time ok (authoritative)"

    .line 7
    invoke-interface {p1, v0}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return v2

    .line 9
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lp4/g0;->d:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckTime: received message outside time window (authoritative):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp4/g0;->c:Lp4/f0;

    .line 11
    invoke-virtual {v3}, Lp4/f0;->b()I

    move-result v3

    .line 12
    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v5

    if-eq v3, v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engineBoots differ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v3}, Lp4/f0;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "!="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lp4/g0;->c:Lp4/f0;

    .line 13
    invoke-virtual {v5}, Lp4/f0;->f()I

    move-result v5

    add-int/2addr v0, v5

    .line 14
    invoke-virtual {p1}, Lp4/f0;->e()I

    move-result p1

    sub-int/2addr v0, p1

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > 150"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {v1, p1}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_4
    monitor-exit p0

    return v4

    .line 18
    :cond_5
    :try_start_2
    iget-object v1, p0, Lp4/g0;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lp4/f0;->c()Lr4/k;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/f0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_6

    const/16 p1, 0x582

    .line 19
    monitor-exit p0

    return p1

    .line 20
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v6

    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result v7

    if-gt v6, v7, :cond_7

    .line 21
    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v6

    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 22
    invoke-virtual {p1}, Lp4/f0;->e()I

    move-result v6

    invoke-virtual {v1}, Lp4/f0;->e()I

    move-result v7

    if-le v6, v7, :cond_8

    .line 23
    :cond_7
    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v6

    invoke-virtual {v1, v6}, Lp4/f0;->h(I)V

    .line 24
    invoke-virtual {p1}, Lp4/f0;->e()I

    move-result v6

    invoke-virtual {v1, v6}, Lp4/f0;->q(I)V

    .line 25
    invoke-virtual {p1}, Lp4/f0;->e()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lp4/f0;->u(I)V

    .line 26
    :cond_8
    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v0

    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result v6

    if-lt v0, v6, :cond_c

    .line 27
    invoke-virtual {p1}, Lp4/f0;->b()I

    move-result v0

    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result v6

    if-ne v0, v6, :cond_9

    .line 28
    invoke-virtual {v1}, Lp4/f0;->e()I

    move-result v0

    invoke-virtual {p1}, Lp4/f0;->e()I

    move-result p1

    add-int/2addr p1, v3

    if-gt v0, p1, :cond_c

    .line 29
    :cond_9
    invoke-virtual {v1}, Lp4/f0;->b()I

    move-result p1

    if-ne p1, v5, :cond_a

    goto :goto_2

    .line 30
    :cond_a
    sget-object p1, Lp4/g0;->d:Ln4/a;

    invoke-interface {p1}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "CheckTime: time ok (non authoritative)"

    .line 31
    invoke-interface {p1, v0}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :cond_b
    monitor-exit p0

    return v2

    .line 33
    :cond_c
    :goto_2
    :try_start_4
    sget-object p1, Lp4/g0;->d:Ln4/a;

    invoke-interface {p1}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CheckTime: received message outside time window (non authoritative)"

    .line 34
    invoke-interface {p1, v0}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    :cond_d
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v0}, Lp4/f0;->b()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lp4/g0;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    iget-object v2, p0, Lp4/g0;->c:Lp4/f0;

    .line 2
    invoke-virtual {v2}, Lp4/f0;->e()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide v2, 0x80000000L

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public j()Lp4/f0;
    .locals 4

    .line 1
    new-instance v0, Lp4/f0;

    iget-object v1, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v1}, Lp4/f0;->c()Lr4/k;

    move-result-object v1

    iget-object v2, p0, Lp4/g0;->c:Lp4/f0;

    .line 2
    invoke-virtual {v2}, Lp4/f0;->b()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lp4/g0;->h()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lp4/f0;-><init>(Lr4/k;II)V

    .line 4
    invoke-virtual {v0}, Lp4/f0;->f()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v2}, Lp4/f0;->f()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lp4/f0;->u(I)V

    return-object v0
.end method

.method public declared-synchronized q(Lr4/k;)Lp4/f0;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lp4/g0;->c:Lp4/f0;

    invoke-virtual {v0}, Lp4/f0;->c()Lr4/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp4/g0;->j()Lp4/f0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lp4/g0;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp4/f0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    new-instance v1, Lp4/f0;

    invoke-virtual {v0}, Lp4/f0;->b()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lp4/f0;->f()I

    move-result v0

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    div-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    invoke-direct {v1, p1, v2, v0}, Lp4/f0;-><init>(Lr4/k;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u(Lp4/f0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp4/g0;->c:Lp4/f0;

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lp4/g0;->b:J

    return-void
.end method
