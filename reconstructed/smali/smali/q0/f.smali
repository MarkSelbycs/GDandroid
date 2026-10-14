.class public final enum Lq0/f;
.super Ljava/lang/Enum;
.source "ExistingPeriodicWorkPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq0/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq0/f;

.field public static final enum b:Lq0/f;

.field public static final enum c:Lq0/f;

.field public static final enum d:Lq0/f;

.field public static final synthetic e:[Lq0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lq0/f;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq0/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/f;->a:Lq0/f;

    .line 2
    new-instance v0, Lq0/f;

    const-string v1, "KEEP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq0/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/f;->b:Lq0/f;

    .line 3
    new-instance v0, Lq0/f;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq0/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/f;->c:Lq0/f;

    .line 4
    new-instance v0, Lq0/f;

    const-string v1, "CANCEL_AND_REENQUEUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lq0/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/f;->d:Lq0/f;

    invoke-static {}, Lq0/f;->b()[Lq0/f;

    move-result-object v0

    sput-object v0, Lq0/f;->e:[Lq0/f;

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

.method public static final synthetic b()[Lq0/f;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lq0/f;

    sget-object v1, Lq0/f;->a:Lq0/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq0/f;->b:Lq0/f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lq0/f;->c:Lq0/f;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lq0/f;->d:Lq0/f;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq0/f;
    .locals 1

    const-class v0, Lq0/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/f;

    return-object p0
.end method

.method public static values()[Lq0/f;
    .locals 2

    sget-object v0, Lq0/f;->e:[Lq0/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/f;

    return-object v0
.end method
