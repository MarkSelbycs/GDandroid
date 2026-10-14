.class public final enum Le2/s;
.super Ljava/lang/Enum;
.source "ReferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le2/s;

.field public static final enum b:Le2/s;

.field public static final enum c:Le2/s;

.field public static final synthetic d:[Le2/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le2/s;

    const-string v1, "SOFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/s;->a:Le2/s;

    .line 2
    new-instance v1, Le2/s;

    const-string v3, "WEAK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le2/s;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/s;->b:Le2/s;

    .line 3
    new-instance v3, Le2/s;

    const-string v5, "PHANTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le2/s;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le2/s;->c:Le2/s;

    const/4 v5, 0x3

    new-array v5, v5, [Le2/s;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le2/s;->d:[Le2/s;

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

.method public static valueOf(Ljava/lang/String;)Le2/s;
    .locals 1

    const-class v0, Le2/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/s;

    return-object p0
.end method

.method public static values()[Le2/s;
    .locals 3

    sget-object v0, Le2/s;->d:[Le2/s;

    invoke-virtual {v0}, [Le2/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/s;

    return-object v0
.end method
