.class public final enum Le3/a;
.super Ljava/lang/Enum;
.source "Intrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le3/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le3/a;

.field public static final enum b:Le3/a;

.field public static final enum c:Le3/a;

.field public static final synthetic d:[Le3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Le3/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le3/a;->a:Le3/a;

    new-instance v0, Le3/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le3/a;->b:Le3/a;

    new-instance v0, Le3/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Le3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le3/a;->c:Le3/a;

    invoke-static {}, Le3/a;->b()[Le3/a;

    move-result-object v0

    sput-object v0, Le3/a;->d:[Le3/a;

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

.method public static final synthetic b()[Le3/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Le3/a;

    sget-object v1, Le3/a;->a:Le3/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Le3/a;->b:Le3/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Le3/a;->c:Le3/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Le3/a;
    .locals 1

    const-class v0, Le3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/a;

    return-object p0
.end method

.method public static values()[Le3/a;
    .locals 1

    sget-object v0, Le3/a;->d:[Le3/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/a;

    return-object v0
.end method
