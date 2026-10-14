.class public final Lg0/c$b;
.super Lm3/l;
.source "FrameworkSQLiteDatabase.kt"

# interfaces
.implements Ll3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/c;->t(Lf0/j;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/r<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "Landroid/database/sqlite/SQLiteCursorDriver;",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteQuery;",
        "Landroid/database/sqlite/SQLiteCursor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic b:Lf0/j;


# direct methods
.method public constructor <init>(Lf0/j;)V
    .locals 0

    iput-object p1, p0, Lg0/c$b;->b:Lf0/j;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/sqlite/SQLiteCursor;
    .locals 1

    .line 1
    iget-object p1, p0, Lg0/c$b;->b:Lf0/j;

    .line 2
    new-instance v0, Lg0/g;

    .line 3
    invoke-static {p4}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-direct {v0, p4}, Lg0/g;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 5
    invoke-interface {p1, v0}, Lf0/j;->c(Lf0/i;)V

    .line 6
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg0/c$b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/sqlite/SQLiteCursor;

    move-result-object p1

    return-object p1
.end method
