.class public final Lg0/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.kt"

# interfaces
.implements Lf0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lg0/c$a;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lg0/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/c$a;-><init>(Lm3/g;)V

    sput-object v0, Lg0/c;->c:Lg0/c$a;

    const-string v2, ""

    const-string v3, " OR ROLLBACK "

    const-string v4, " OR ABORT "

    const-string v5, " OR FAIL "

    const-string v6, " OR IGNORE "

    const-string v7, " OR REPLACE "

    .line 1
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lg0/c;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    sput-object v0, Lg0/c;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg0/c;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Lf0/j;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lg0/c;->i(Lf0/j;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ll3/r;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lg0/c;->h(Ll3/r;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ll3/r;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3, p4}, Ll3/r;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public static final i(Lf0/j;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    const-string p1, "$query"

    invoke-static {p0, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lg0/g;

    .line 2
    invoke-static {p4}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p1, p4}, Lg0/g;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 4
    invoke-interface {p0, p1}, Lf0/j;->c(Lf0/i;)V

    .line 5
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lf0/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public F(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1}, Lf0/j;->e()Ljava/lang/String;

    move-result-object v2

    .line 2
    sget-object v3, Lg0/c;->e:[Ljava/lang/String;

    invoke-static {p2}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 3
    new-instance v6, Lg0/a;

    invoke-direct {v6, p1}, Lg0/a;-><init>(Lf0/j;)V

    const/4 v4, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lf0/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public O(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public S(Ljava/lang/String;)Lf0/k;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg0/h;

    iget-object v1, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    const-string v1, "delegate.compileStatement(sql)"

    invoke-static {p1, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lg0/h;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

.method public U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const-string v0, "table"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez p5, :cond_1

    move v2, v0

    goto :goto_1

    .line 3
    :cond_1
    array-length v2, p5

    add-int/2addr v2, v0

    .line 4
    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE "

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v5, Lg0/c;->d:[Ljava/lang/String;

    aget-object p2, v5, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 9
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-lez v1, :cond_2

    const-string v5, ","

    goto :goto_3

    :cond_2
    const-string v5, ""

    .line 11
    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    .line 13
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "=?"

    .line 14
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v5

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_4

    move p1, v0

    :goto_4
    if-ge p1, v2, :cond_4

    sub-int p2, p1, v0

    .line 15
    aget-object p2, p5, p2

    aput-object p2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 16
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, " WHERE "

    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lg0/c;->S(Ljava/lang/String;)Lf0/k;

    move-result-object p1

    .line 21
    sget-object p2, Lf0/a;->c:Lf0/a$a;

    invoke-virtual {p2, p1, v3}, Lf0/a$a;->b(Lf0/i;[Ljava/lang/Object;)V

    .line 22
    invoke-interface {p1}, Lf0/k;->Q()I

    move-result p1

    return p1

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty values"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public final f(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public o0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf0/a;

    invoke-direct {v0, p1}, Lf0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lg0/c;->t(Lf0/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public q0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s0()Z
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public t(Lf0/j;)Landroid/database/Cursor;
    .locals 4

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg0/c$b;

    invoke-direct {v0, p1}, Lg0/c$b;-><init>(Lf0/j;)V

    .line 2
    iget-object v1, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    new-instance v2, Lg0/b;

    invoke-direct {v2, v0}, Lg0/b;-><init>(Ll3/r;)V

    invoke-interface {p1}, Lf0/j;->e()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lg0/c;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, "delegate.rawQueryWithFac\u2026EMPTY_STRING_ARRAY, null)"

    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lg0/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lg0/c;->b:Ljava/util/List;

    return-object v0
.end method
