.class public Lr0/l0;
.super Ld0/b;
.source "WorkDatabase_AutoMigration_18_19_Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x12

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256"

    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
