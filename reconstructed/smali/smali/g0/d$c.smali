.class public final Lg0/d$c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FrameworkSQLiteOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/d$c$a;,
        Lg0/d$c$b;,
        Lg0/d$c$c;,
        Lg0/d$c$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lg0/d$c$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg0/d$b;

.field public final c:Lf0/h$a;

.field public final d:Z

.field public e:Z

.field public final f:Lh0/a;

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg0/d$c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/d$c$c;-><init>(Lm3/g;)V

    sput-object v0, Lg0/d$c;->h:Lg0/d$c$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg0/d$b;Lf0/h$a;Z)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbRef"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v5, p4, Lf0/h$a;->a:I

    .line 2
    new-instance v6, Lg0/e;

    invoke-direct {v6, p4, p3}, Lg0/e;-><init>(Lf0/h$a;Lg0/d$b;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 4
    iput-object p1, p0, Lg0/d$c;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lg0/d$c;->b:Lg0/d$b;

    .line 6
    iput-object p4, p0, Lg0/d$c;->c:Lf0/h$a;

    .line 7
    iput-boolean p5, p0, Lg0/d$c;->d:Z

    .line 8
    new-instance p3, Lh0/a;

    if-nez p2, :cond_0

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "randomUUID().toString()"

    invoke-static {p2, p4}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string p4, "context.cacheDir"

    invoke-static {p1, p4}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 11
    invoke-direct {p3, p2, p1, p4}, Lh0/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    iput-object p3, p0, Lg0/d$c;->f:Lh0/a;

    return-void
.end method

.method public static synthetic c(Lf0/h$a;Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg0/d$c;->e(Lf0/h$a;Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static final e(Lf0/h$a;Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dbRef"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg0/d$c;->h:Lg0/d$c$c;

    const-string v1, "dbObj"

    .line 2
    invoke-static {p2, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lg0/d$c$c;->a(Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lf0/h$a;->c(Lf0/g;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->f:Lh0/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lh0/a;->c(Lh0/a;ZILjava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 3
    iget-object v0, p0, Lg0/d$c;->b:Lg0/d$b;

    invoke-virtual {v0, v2}, Lg0/d$b;->b(Lg0/c;)V

    .line 4
    iput-boolean v3, p0, Lg0/d$c;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lg0/d$c;->f:Lh0/a;

    invoke-virtual {v0}, Lh0/a;->d()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg0/d$c;->f:Lh0/a;

    invoke-virtual {v1}, Lh0/a;->d()V

    throw v0
.end method

.method public final f(Z)Lf0/g;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->f:Lh0/a;

    iget-boolean v1, p0, Lg0/d$c;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lh0/a;->b(Z)V

    .line 2
    iput-boolean v2, p0, Lg0/d$c;->e:Z

    .line 3
    invoke-virtual {p0, p1}, Lg0/d$c;->j(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lg0/d$c;->e:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lg0/d$c;->close()V

    .line 6
    invoke-virtual {p0, p1}, Lg0/d$c;->f(Z)Lf0/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lg0/d$c;->f:Lh0/a;

    invoke-virtual {v0}, Lh0/a;->d()V

    return-object p1

    .line 8
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lg0/d$c;->h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v0, p0, Lg0/d$c;->f:Lh0/a;

    invoke-virtual {v0}, Lh0/a;->d()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg0/d$c;->f:Lh0/a;

    invoke-virtual {v0}, Lh0/a;->d()V

    throw p1
.end method

.method public final h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;
    .locals 2

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg0/d$c;->h:Lg0/d$c$c;

    iget-object v1, p0, Lg0/d$c;->b:Lg0/d$b;

    invoke-virtual {v0, v1, p1}, Lg0/d$c$c;->a(Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    return-object p1
.end method

.method public final i(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const-string v0, "{\n                super.\u2026eDatabase()\n            }"

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2
    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 4
    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final j(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lg0/d$c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid database parent file, not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportSQLite"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lg0/d$c;->i(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 8
    :catchall_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const-wide/16 v1, 0x1f4

    .line 9
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lg0/d$c;->i(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_1
    move-exception v1

    .line 11
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 12
    instance-of v2, v1, Lg0/d$c$a;

    if-eqz v2, :cond_3

    .line 13
    check-cast v1, Lg0/d$c$a;

    invoke-virtual {v1}, Lg0/d$c$a;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Lg0/d$c$a;->b()Lg0/d$c$b;

    move-result-object v1

    sget-object v3, Lg0/d$c$d;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    .line 15
    instance-of v1, v2, Landroid/database/sqlite/SQLiteException;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    throw v2

    .line 17
    :cond_2
    throw v2

    .line 18
    :cond_3
    instance-of v2, v1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 19
    iget-boolean v2, p0, Lg0/d$c;->d:Z

    if-eqz v2, :cond_4

    .line 20
    :goto_0
    iget-object v1, p0, Lg0/d$c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 21
    :try_start_3
    invoke-virtual {p0, p1}, Lg0/d$c;->i(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_3
    .catch Lg0/d$c$a; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Lg0/d$c$a;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 23
    :cond_4
    throw v1

    .line 24
    :cond_5
    throw v1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->c:Lf0/h$a;

    invoke-virtual {p0, p1}, Lg0/d$c;->h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf0/h$a;->b(Lf0/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lg0/d$c$a;

    sget-object v1, Lg0/d$c$b;->a:Lg0/d$c$b;

    invoke-direct {v0, v1, p1}, Lg0/d$c$a;-><init>(Lg0/d$c$b;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->c:Lf0/h$a;

    invoke-virtual {p0, p1}, Lg0/d$c;->h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf0/h$a;->d(Lf0/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lg0/d$c$a;

    sget-object v1, Lg0/d$c$b;->b:Lg0/d$c$b;

    invoke-direct {v0, v1, p1}, Lg0/d$c$a;-><init>(Lg0/d$c$b;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lg0/d$c;->e:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->c:Lf0/h$a;

    invoke-virtual {p0, p1}, Lg0/d$c;->h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lf0/h$a;->e(Lf0/g;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    new-instance p2, Lg0/d$c$a;

    sget-object p3, Lg0/d$c$b;->d:Lg0/d$c$b;

    invoke-direct {p2, p3, p1}, Lg0/d$c$a;-><init>(Lg0/d$c$b;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lg0/d$c;->e:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->c:Lf0/h$a;

    invoke-virtual {p0, p1}, Lg0/d$c;->h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf0/h$a;->f(Lf0/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Lg0/d$c$a;

    sget-object v1, Lg0/d$c$b;->e:Lg0/d$c$b;

    invoke-direct {v0, v1, p1}, Lg0/d$c$a;-><init>(Lg0/d$c$b;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lg0/d$c;->g:Z

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lg0/d$c;->e:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lg0/d$c;->c:Lf0/h$a;

    invoke-virtual {p0, p1}, Lg0/d$c;->h(Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lf0/h$a;->g(Lf0/g;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    new-instance p2, Lg0/d$c$a;

    sget-object p3, Lg0/d$c$b;->c:Lg0/d$c$b;

    invoke-direct {p2, p3, p1}, Lg0/d$c$a;-><init>(Lg0/d$c$b;Ljava/lang/Throwable;)V

    throw p2
.end method
