.class public final enum Lb4/d;
.super Ljava/lang/Enum;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb4/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb4/d;

.field public static final enum b:Lb4/d;

.field public static final enum c:Lb4/d;

.field public static final enum d:Lb4/d;

.field public static final synthetic e:[Lb4/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb4/d;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb4/d;->a:Lb4/d;

    new-instance v0, Lb4/d;

    const-string v1, "REREGISTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lb4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb4/d;->b:Lb4/d;

    new-instance v0, Lb4/d;

    const-string v1, "CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lb4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb4/d;->c:Lb4/d;

    new-instance v0, Lb4/d;

    const-string v1, "ALREADY_SELECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lb4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb4/d;->d:Lb4/d;

    invoke-static {}, Lb4/d;->b()[Lb4/d;

    move-result-object v0

    sput-object v0, Lb4/d;->e:[Lb4/d;

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

.method public static final synthetic b()[Lb4/d;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lb4/d;

    sget-object v1, Lb4/d;->a:Lb4/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb4/d;->b:Lb4/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lb4/d;->c:Lb4/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lb4/d;->d:Lb4/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb4/d;
    .locals 1

    const-class v0, Lb4/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb4/d;

    return-object p0
.end method

.method public static values()[Lb4/d;
    .locals 3

    sget-object v0, Lb4/d;->e:[Lb4/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb4/d;

    return-object v0
.end method
