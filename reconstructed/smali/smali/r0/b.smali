.class public final Lr0/b;
.super Ljava/lang/Object;
.source "WorkDatabaseMigrations.kt"

# interfaces
.implements Ld0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 7

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

    .line 1
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    .line 2
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_enqueue_time"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v2, "WorkSpec"

    const/4 v3, 0x3

    const-string v5, "last_enqueue_time = 0 AND interval_duration <> 0 "

    move-object v1, p1

    .line 4
    invoke-interface/range {v1 .. v6}, Lf0/g;->U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
