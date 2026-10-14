.class public final Lg0/h;
.super Lg0/g;
.source "FrameworkSQLiteStatement.kt"

# interfaces
.implements Lf0/k;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lg0/g;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 2
    iput-object p1, p0, Lg0/h;->b:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public Q()I
    .locals 1

    iget-object v0, p0, Lg0/h;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public n0()J
    .locals 2

    iget-object v0, p0, Lg0/h;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method
