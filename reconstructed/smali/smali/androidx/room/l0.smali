.class public final Landroidx/room/l0;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.kt"

# interfaces
.implements Lf0/j;
.implements Lf0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/l0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Landroidx/room/l0$a;

.field public static final o:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroidx/room/l0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public volatile b:Ljava/lang/String;

.field public final c:[J

.field public final d:[D

.field public final e:[Ljava/lang/String;

.field public final f:[[B

.field public final g:[I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/l0$a;-><init>(Lm3/g;)V

    sput-object v0, Landroidx/room/l0;->i:Landroidx/room/l0$a;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroidx/room/l0;->o:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/room/l0;->a:I

    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/l0;->g:[I

    .line 4
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/l0;->c:[J

    .line 5
    new-array v0, p1, [D

    iput-object v0, p0, Landroidx/room/l0;->d:[D

    .line 6
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/room/l0;->e:[Ljava/lang/String;

    .line 7
    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/room/l0;->f:[[B

    return-void
.end method

.method public synthetic constructor <init>(ILm3/g;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/l0;-><init>(I)V

    return-void
.end method

.method public static final f(Ljava/lang/String;I)Landroidx/room/l0;
    .locals 1

    sget-object v0, Landroidx/room/l0;->i:Landroidx/room/l0$a;

    invoke-virtual {v0, p0, p1}, Landroidx/room/l0$a;->a(Ljava/lang/String;I)Landroidx/room/l0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E(ILjava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/l0;->g:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Landroidx/room/l0;->e:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public G(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/l0;->g:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Landroidx/room/l0;->c:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public a0(I[B)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/l0;->g:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Landroidx/room/l0;->f:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public c(Lf0/i;)V
    .locals 6

    const-string v0, "statement"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/room/l0;->h()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_7

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/room/l0;->g:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    const-string v5, "Required value was null."

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Landroidx/room/l0;->f:[[B

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-interface {p1, v2, v3}, Lf0/i;->a0(I[B)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iget-object v3, p0, Landroidx/room/l0;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-interface {p1, v2, v3}, Lf0/i;->E(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    iget-object v3, p0, Landroidx/room/l0;->d:[D

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Lf0/i;->g0(ID)V

    goto :goto_1

    .line 6
    :cond_5
    iget-object v3, p0, Landroidx/room/l0;->c:[J

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Lf0/i;->G(IJ)V

    goto :goto_1

    .line 7
    :cond_6
    invoke-interface {p1, v2}, Lf0/i;->d0(I)V

    :goto_1
    if-eq v2, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d0(I)V
    .locals 2

    iget-object v0, p0, Landroidx/room/l0;->g:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/room/l0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g0(ID)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/l0;->g:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Landroidx/room/l0;->d:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroidx/room/l0;->h:I

    return v0
.end method

.method public final i(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/room/l0;->b:Ljava/lang/String;

    .line 2
    iput p2, p0, Landroidx/room/l0;->h:I

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/room/l0;->o:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroidx/room/l0;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Landroidx/room/l0;->i:Landroidx/room/l0$a;

    invoke-virtual {v1}, Landroidx/room/l0$a;->b()V

    .line 4
    sget-object v1, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
