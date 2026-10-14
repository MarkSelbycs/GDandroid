.class public Lz0/w$i;
.super Landroidx/room/i;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/w;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/i<",
        "Lz0/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lz0/w;


# direct methods
.method public constructor <init>(Lz0/w;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/w$i;->d:Lz0/w;

    invoke-direct {p0, p2}, Landroidx/room/i;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Lf0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lz0/u;

    invoke-virtual {p0, p1, p2}, Lz0/w$i;->k(Lf0/k;Lz0/u;)V

    return-void
.end method

.method public k(Lf0/k;Lz0/u;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lz0/u;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1, v0}, Lf0/i;->E(ILjava/lang/String;)V

    .line 4
    :goto_0
    sget-object v0, Lz0/b0;->a:Lz0/b0;

    iget-object v0, p2, Lz0/u;->b:Lq0/y$c;

    invoke-static {v0}, Lz0/b0;->j(Lq0/y$c;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 5
    invoke-interface {p1, v1, v2, v3}, Lf0/i;->G(IJ)V

    .line 6
    iget-object v0, p2, Lz0/u;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1, v1, v0}, Lf0/i;->E(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p2, Lz0/u;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p1, v1, v0}, Lf0/i;->E(ILjava/lang/String;)V

    .line 12
    :goto_2
    iget-object v0, p2, Lz0/u;->e:Landroidx/work/b;

    invoke-static {v0}, Landroidx/work/b;->q(Landroidx/work/b;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {p1, v1, v0}, Lf0/i;->a0(I[B)V

    .line 15
    :goto_3
    iget-object v0, p2, Lz0/u;->f:Landroidx/work/b;

    invoke-static {v0}, Landroidx/work/b;->q(Landroidx/work/b;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 16
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_4

    .line 17
    :cond_4
    invoke-interface {p1, v1, v0}, Lf0/i;->a0(I[B)V

    :goto_4
    const/4 v0, 0x7

    .line 18
    iget-wide v1, p2, Lz0/u;->g:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0x8

    .line 19
    iget-wide v1, p2, Lz0/u;->h:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0x9

    .line 20
    iget-wide v1, p2, Lz0/u;->i:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0xa

    .line 21
    iget v1, p2, Lz0/u;->k:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    .line 22
    iget-object v0, p2, Lz0/u;->l:Lq0/a;

    invoke-static {v0}, Lz0/b0;->a(Lq0/a;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 23
    invoke-interface {p1, v1, v2, v3}, Lf0/i;->G(IJ)V

    const/16 v0, 0xc

    .line 24
    iget-wide v1, p2, Lz0/u;->m:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0xd

    .line 25
    iget-wide v1, p2, Lz0/u;->n:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0xe

    .line 26
    iget-wide v1, p2, Lz0/u;->o:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0xf

    .line 27
    iget-wide v1, p2, Lz0/u;->p:J

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    .line 28
    iget-boolean v0, p2, Lz0/u;->q:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 29
    invoke-interface {p1, v1, v2, v3}, Lf0/i;->G(IJ)V

    .line 30
    iget-object v0, p2, Lz0/u;->r:Lq0/s;

    invoke-static {v0}, Lz0/b0;->h(Lq0/s;)I

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    .line 31
    invoke-interface {p1, v1, v2, v3}, Lf0/i;->G(IJ)V

    const/16 v0, 0x12

    .line 32
    invoke-virtual {p2}, Lz0/u;->i()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0x13

    .line 33
    invoke-virtual {p2}, Lz0/u;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0x14

    .line 34
    invoke-virtual {p2}, Lz0/u;->g()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0x15

    .line 35
    invoke-virtual {p2}, Lz0/u;->h()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/16 v0, 0x16

    .line 36
    invoke-virtual {p2}, Lz0/u;->j()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    .line 37
    iget-object p2, p2, Lz0/u;->j:Lq0/d;

    const/16 v0, 0x1d

    const/16 v1, 0x1c

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    const/16 v4, 0x19

    const/16 v5, 0x18

    const/16 v6, 0x17

    const/16 v7, 0x1e

    if-eqz p2, :cond_6

    .line 38
    invoke-virtual {p2}, Lq0/d;->d()Lq0/o;

    move-result-object v8

    invoke-static {v8}, Lz0/b0;->g(Lq0/o;)I

    move-result v8

    int-to-long v8, v8

    .line 39
    invoke-interface {p1, v6, v8, v9}, Lf0/i;->G(IJ)V

    .line 40
    invoke-virtual {p2}, Lq0/d;->g()Z

    move-result v6

    int-to-long v8, v6

    .line 41
    invoke-interface {p1, v5, v8, v9}, Lf0/i;->G(IJ)V

    .line 42
    invoke-virtual {p2}, Lq0/d;->h()Z

    move-result v5

    int-to-long v5, v5

    .line 43
    invoke-interface {p1, v4, v5, v6}, Lf0/i;->G(IJ)V

    .line 44
    invoke-virtual {p2}, Lq0/d;->f()Z

    move-result v4

    int-to-long v4, v4

    .line 45
    invoke-interface {p1, v3, v4, v5}, Lf0/i;->G(IJ)V

    .line 46
    invoke-virtual {p2}, Lq0/d;->i()Z

    move-result v3

    int-to-long v3, v3

    .line 47
    invoke-interface {p1, v2, v3, v4}, Lf0/i;->G(IJ)V

    .line 48
    invoke-virtual {p2}, Lq0/d;->b()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lf0/i;->G(IJ)V

    .line 49
    invoke-virtual {p2}, Lq0/d;->a()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    .line 50
    invoke-virtual {p2}, Lq0/d;->c()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lz0/b0;->i(Ljava/util/Set;)[B

    move-result-object p2

    if-nez p2, :cond_5

    .line 51
    invoke-interface {p1, v7}, Lf0/i;->d0(I)V

    goto :goto_5

    .line 52
    :cond_5
    invoke-interface {p1, v7, p2}, Lf0/i;->a0(I[B)V

    goto :goto_5

    .line 53
    :cond_6
    invoke-interface {p1, v6}, Lf0/i;->d0(I)V

    .line 54
    invoke-interface {p1, v5}, Lf0/i;->d0(I)V

    .line 55
    invoke-interface {p1, v4}, Lf0/i;->d0(I)V

    .line 56
    invoke-interface {p1, v3}, Lf0/i;->d0(I)V

    .line 57
    invoke-interface {p1, v2}, Lf0/i;->d0(I)V

    .line 58
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    .line 59
    invoke-interface {p1, v0}, Lf0/i;->d0(I)V

    .line 60
    invoke-interface {p1, v7}, Lf0/i;->d0(I)V

    :goto_5
    return-void
.end method
