.class public final enum Lp4/v;
.super Ljava/lang/Enum;
.source "SecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp4/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lp4/v;

.field public static final enum c:Lp4/v;

.field public static final enum d:Lp4/v;

.field public static final enum e:Lp4/v;

.field public static final synthetic f:[Lp4/v;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lp4/v;

    const-string v1, "undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lp4/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lp4/v;->b:Lp4/v;

    .line 2
    new-instance v1, Lp4/v;

    const-string v3, "noAuthNoPriv"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lp4/v;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lp4/v;->c:Lp4/v;

    .line 3
    new-instance v3, Lp4/v;

    const-string v5, "authNoPriv"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lp4/v;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lp4/v;->d:Lp4/v;

    .line 4
    new-instance v5, Lp4/v;

    const-string v7, "authPriv"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lp4/v;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lp4/v;->e:Lp4/v;

    const/4 v7, 0x4

    new-array v7, v7, [Lp4/v;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lp4/v;->f:[Lp4/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lp4/v;->a:I

    return-void
.end method

.method public static b(I)Lp4/v;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lp4/v;->b:Lp4/v;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lp4/v;->e:Lp4/v;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lp4/v;->d:Lp4/v;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lp4/v;->c:Lp4/v;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lp4/v;
    .locals 1

    const-class v0, Lp4/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp4/v;

    return-object p0
.end method

.method public static values()[Lp4/v;
    .locals 1

    sget-object v0, Lp4/v;->f:[Lp4/v;

    invoke-virtual {v0}, [Lp4/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp4/v;

    return-object v0
.end method
