.class public final Landroidx/room/l0$a;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/l0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroidx/room/l0;
    .locals 3

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/room/l0;->o:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/l0;

    .line 5
    invoke-virtual {v1, p1, p2}, Landroidx/room/l0;->i(Ljava/lang/String;I)V

    const-string p1, "sqliteQuery"

    .line 6
    invoke-static {v1, p1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    :try_start_1
    sget-object v1, La3/o;->a:La3/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    new-instance v0, Landroidx/room/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/room/l0;-><init>(ILm3/g;)V

    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/room/l0;->i(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/room/l0;->o:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "queryPool.descendingKeySet().iterator()"

    invoke-static {v0, v2}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
