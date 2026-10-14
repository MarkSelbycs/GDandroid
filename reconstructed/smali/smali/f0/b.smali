.class public final Lf0/b;
.super Ljava/lang/Object;
.source "SupportSQLiteCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lf0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf0/b;

    invoke-direct {v0}, Lf0/b;-><init>()V

    sput-object v0, Lf0/b;->a:Lf0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/io/File;)Z
    .locals 1

    const-string v0, "file"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const-string v0, "sQLiteDatabase"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public static final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/Cursor;
    .locals 6

    const-string v0, "sQLiteDatabase"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionArgs"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationSignal"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorFactory"

    invoke-static {p5, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "sQLiteDatabase.rawQueryW\u2026ationSignal\n            )"

    invoke-static {p0, p1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V
    .locals 1

    const-string v0, "sQLiteOpenHelper"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
