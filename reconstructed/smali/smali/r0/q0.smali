.class public final Lr0/q0;
.super Ld0/b;
.source "WorkDatabaseMigrations.kt"


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    iput-object p1, p0, Lr0/q0;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 1
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lr0/q0;->c:Landroid/content/Context;

    invoke-static {v0, p1}, La1/m;->c(Landroid/content/Context;Lf0/g;)V

    .line 3
    iget-object v0, p0, Lr0/q0;->c:Landroid/content/Context;

    invoke-static {v0, p1}, La1/h;->c(Landroid/content/Context;Lf0/g;)V

    return-void
.end method
