.class public final Lr0/l;
.super Ld0/b;
.source "WorkDatabaseMigrations.kt"


# static fields
.field public static final c:Lr0/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr0/l;

    invoke-direct {v0}, Lr0/l;-><init>()V

    sput-object v0, Lr0/l;->c:Lr0/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    "

    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
