.class public Landroidx/room/k0;
.super Lf0/h$a;
.source "RoomOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/k0$b;,
        Landroidx/room/k0$c;,
        Landroidx/room/k0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Landroidx/room/k0$a;


# instance fields
.field public c:Landroidx/room/f;

.field public final d:Landroidx/room/k0$b;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/k0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/k0$a;-><init>(Lm3/g;)V

    sput-object v0, Landroidx/room/k0;->g:Landroidx/room/k0$a;

    return-void
.end method

.method public constructor <init>(Landroidx/room/f;Landroidx/room/k0$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityHash"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyHash"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p2, Landroidx/room/k0$b;->a:I

    invoke-direct {p0, v0}, Lf0/h$a;-><init>(I)V

    .line 2
    iput-object p1, p0, Landroidx/room/k0;->c:Landroidx/room/f;

    .line 3
    iput-object p2, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    .line 4
    iput-object p3, p0, Landroidx/room/k0;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/room/k0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lf0/h$a;->b(Lf0/g;)V

    return-void
.end method

.method public d(Lf0/g;)V
    .locals 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/room/k0;->g:Landroidx/room/k0$a;

    invoke-virtual {v0, p1}, Landroidx/room/k0$a;->a(Lf0/g;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v1, p1}, Landroidx/room/k0$b;->a(Lf0/g;)V

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->g(Lf0/g;)Landroidx/room/k0$c;

    move-result-object v0

    .line 4
    iget-boolean v1, v0, Landroidx/room/k0$c;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/k0$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/room/k0;->j(Lf0/g;)V

    .line 9
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->c(Lf0/g;)V

    return-void
.end method

.method public e(Lf0/g;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/k0;->g(Lf0/g;II)V

    return-void
.end method

.method public f(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lf0/h$a;->f(Lf0/g;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/room/k0;->h(Lf0/g;)V

    .line 3
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->d(Lf0/g;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/room/k0;->c:Landroidx/room/f;

    return-void
.end method

.method public g(Lf0/g;II)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/k0;->c:Landroidx/room/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Landroidx/room/f;->d:Landroidx/room/i0$e;

    invoke-virtual {v0, p2, p3}, Landroidx/room/i0$e;->d(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v1, p1}, Landroidx/room/k0$b;->f(Lf0/g;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld0/b;

    .line 5
    invoke-virtual {v1, p1}, Ld0/b;->a(Lf0/g;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->g(Lf0/g;)Landroidx/room/k0$c;

    move-result-object v0

    .line 7
    iget-boolean v1, v0, Landroidx/room/k0$c;->a:Z

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->e(Lf0/g;)V

    .line 9
    invoke-virtual {p0, p1}, Landroidx/room/k0;->j(Lf0/g;)V

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Migration didn\'t properly handle: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p3, v0, Landroidx/room/k0$c;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 15
    iget-object v0, p0, Landroidx/room/k0;->c:Landroidx/room/f;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0, p2, p3}, Landroidx/room/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object p2, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {p2, p1}, Landroidx/room/k0$b;->b(Lf0/g;)V

    .line 18
    iget-object p2, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {p2, p1}, Landroidx/room/k0$b;->a(Lf0/g;)V

    goto :goto_2

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final h(Lf0/g;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/room/k0;->g:Landroidx/room/k0$a;

    invoke-virtual {v0, p1}, Landroidx/room/k0$a;->b(Lf0/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lf0/a;

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v1}, Lf0/a;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, v0}, Lf0/g;->t(Lf0/j;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 6
    :goto_0
    invoke-static {p1, v1}, Lj3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Landroidx/room/k0;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/room/k0;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p0, Landroidx/room/k0;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lj3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->g(Lf0/g;)Landroidx/room/k0$c;

    move-result-object v0

    .line 15
    iget-boolean v1, v0, Landroidx/room/k0$c;->a:Z

    if-eqz v1, :cond_4

    .line 16
    iget-object v0, p0, Landroidx/room/k0;->d:Landroidx/room/k0$b;

    invoke-virtual {v0, p1}, Landroidx/room/k0$b;->e(Lf0/g;)V

    .line 17
    invoke-virtual {p0, p1}, Landroidx/room/k0;->j(Lf0/g;)V

    :cond_3
    :goto_1
    return-void

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/k0$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lf0/g;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lf0/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/k0;->i(Lf0/g;)V

    .line 2
    iget-object v0, p0, Landroidx/room/k0;->e:Ljava/lang/String;

    invoke-static {v0}, Landroidx/room/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
