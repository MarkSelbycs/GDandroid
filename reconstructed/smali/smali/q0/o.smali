.class public final enum Lq0/o;
.super Ljava/lang/Enum;
.source "NetworkType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq0/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq0/o;

.field public static final enum b:Lq0/o;

.field public static final enum c:Lq0/o;

.field public static final enum d:Lq0/o;

.field public static final enum e:Lq0/o;

.field public static final enum f:Lq0/o;

.field public static final synthetic g:[Lq0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lq0/o;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq0/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/o;->a:Lq0/o;

    .line 2
    new-instance v0, Lq0/o;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq0/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/o;->b:Lq0/o;

    .line 3
    new-instance v0, Lq0/o;

    const-string v1, "UNMETERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq0/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/o;->c:Lq0/o;

    .line 4
    new-instance v0, Lq0/o;

    const-string v1, "NOT_ROAMING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lq0/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/o;->d:Lq0/o;

    .line 5
    new-instance v0, Lq0/o;

    const-string v1, "METERED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lq0/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/o;->e:Lq0/o;

    .line 6
    new-instance v0, Lq0/o;

    const-string v1, "TEMPORARILY_UNMETERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lq0/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/o;->f:Lq0/o;

    invoke-static {}, Lq0/o;->b()[Lq0/o;

    move-result-object v0

    sput-object v0, Lq0/o;->g:[Lq0/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[Lq0/o;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lq0/o;

    sget-object v1, Lq0/o;->a:Lq0/o;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq0/o;->b:Lq0/o;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lq0/o;->c:Lq0/o;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lq0/o;->d:Lq0/o;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lq0/o;->e:Lq0/o;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lq0/o;->f:Lq0/o;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq0/o;
    .locals 1

    const-class v0, Lq0/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/o;

    return-object p0
.end method

.method public static values()[Lq0/o;
    .locals 3

    sget-object v0, Lq0/o;->g:[Lq0/o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/o;

    return-object v0
.end method
