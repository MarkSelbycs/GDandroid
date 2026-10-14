.class public Lr0/k0;
.super Ld0/b;
.source "WorkDatabase_AutoMigration_17_18_Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x11

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807"

    .line 1
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0"

    .line 2
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
