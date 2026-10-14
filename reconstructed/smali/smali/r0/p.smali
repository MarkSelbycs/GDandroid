.class public final Lr0/p;
.super Ld0/b;
.source "WorkDatabaseMigrations.kt"


# static fields
.field public static final c:Lr0/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/p;

    invoke-direct {v0}, Lr0/p;-><init>()V

    sput-object v0, Lr0/p;->c:Lr0/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
