.class public final Lr0/d;
.super Landroidx/room/i0$b;
.source "WorkDatabase.kt"


# instance fields
.field public final a:Lq0/b;


# direct methods
.method public constructor <init>(Lq0/b;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/room/i0$b;-><init>()V

    iput-object p1, p0, Lr0/d;->a:Lq0/b;

    return-void
.end method


# virtual methods
.method public c(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/room/i0$b;->c(Lf0/g;)V

    .line 2
    invoke-interface {p1}, Lf0/g;->m()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lr0/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lf0/g;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1}, Lf0/g;->k()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lf0/g;->k()V

    throw v0
.end method

.method public final d()J
    .locals 4

    iget-object v0, p0, Lr0/d;->a:Lq0/b;

    invoke-interface {v0}, Lq0/b;->a()J

    move-result-wide v0

    sget-wide v2, Lr0/e0;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lr0/d;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
