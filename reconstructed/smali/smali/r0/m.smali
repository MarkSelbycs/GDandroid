.class public final Lr0/m;
.super Ld0/b;
.source "WorkDatabaseMigrations.kt"


# static fields
.field public static final c:Lr0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/m;

    invoke-direct {v0}, Lr0/m;-><init>()V

    sput-object v0, Lr0/m;->c:Lr0/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    .line 1
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    .line 2
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
