.class public final La1/h;
.super Ljava/lang/Object;
.source "IdGenerator.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, La1/h;->d(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La1/h;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public static final c(Landroid/content/Context;Lf0/g;)V
    .locals 8

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const-string v1, "context"

    invoke-static {p0, v1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sqLiteDatabase"

    invoke-static {p1, v1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "androidx.work.util.id"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "next_job_scheduler_id"

    .line 2
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    :cond_0
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "next_alarm_manager_id"

    .line 5
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 6
    invoke-interface {p1}, Lf0/g;->m()V

    const/4 v6, 0x2

    :try_start_0
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    invoke-interface {p1, v0, v7}, Lf0/g;->O(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 9
    invoke-interface {p1, v0, v1}, Lf0/g;->O(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    invoke-interface {p1}, Lf0/g;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {p1}, Lf0/g;->k()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lf0/g;->k()V

    throw p0
.end method

.method public static final d(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->E()Lz0/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lz0/e;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 3
    :goto_1
    invoke-static {p0, p1, v1}, La1/h;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    return v0
.end method

.method public static final e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->E()Lz0/e;

    move-result-object p0

    new-instance v0, Lz0/d;

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lz0/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p0, v0}, Lz0/e;->b(Lz0/d;)V

    return-void
.end method
