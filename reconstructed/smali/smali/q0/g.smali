.class public final enum Lq0/g;
.super Ljava/lang/Enum;
.source "ExistingWorkPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq0/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq0/g;

.field public static final enum b:Lq0/g;

.field public static final enum c:Lq0/g;

.field public static final enum d:Lq0/g;

.field public static final synthetic e:[Lq0/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lq0/g;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq0/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/g;->a:Lq0/g;

    .line 2
    new-instance v0, Lq0/g;

    const-string v1, "KEEP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq0/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/g;->b:Lq0/g;

    .line 3
    new-instance v0, Lq0/g;

    const-string v1, "APPEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq0/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/g;->c:Lq0/g;

    .line 4
    new-instance v0, Lq0/g;

    const-string v1, "APPEND_OR_REPLACE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lq0/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/g;->d:Lq0/g;

    invoke-static {}, Lq0/g;->b()[Lq0/g;

    move-result-object v0

    sput-object v0, Lq0/g;->e:[Lq0/g;

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

.method public static final synthetic b()[Lq0/g;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lq0/g;

    sget-object v1, Lq0/g;->a:Lq0/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq0/g;->b:Lq0/g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lq0/g;->c:Lq0/g;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lq0/g;->d:Lq0/g;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq0/g;
    .locals 1

    const-class v0, Lq0/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/g;

    return-object p0
.end method

.method public static values()[Lq0/g;
    .locals 2

    sget-object v0, Lq0/g;->e:[Lq0/g;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/g;

    return-object v0
.end method
