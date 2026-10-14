.class public final Lr0/g0;
.super Ljava/lang/Object;
.source "WorkDatabasePathHelper.kt"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "WrkDbPathHelper"

    .line 1
    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WrkDbPathHelper\")"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lr0/g0;->a:Ljava/lang/String;

    const-string v0, "-journal"

    const-string v1, "-shm"

    const-string v2, "-wal"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/g0;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lr0/g0;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lr0/g0;->a:Ljava/lang/String;

    return-object v0
.end method
