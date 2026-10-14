.class public final enum Lo4/m$a;
.super Ljava/lang/Enum;
.source "SnmpConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo4/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lo4/m$a;

.field public static final enum c:Lo4/m$a;

.field public static final enum d:Lo4/m$a;

.field public static final enum e:Lo4/m$a;

.field public static final enum f:Lo4/m$a;

.field public static final synthetic g:[Lo4/m$a;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lo4/m$a;

    const-string v1, "other"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo4/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo4/m$a;->b:Lo4/m$a;

    .line 2
    new-instance v1, Lo4/m$a;

    const-string v4, "_volatile"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lo4/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo4/m$a;->c:Lo4/m$a;

    .line 3
    new-instance v4, Lo4/m$a;

    const-string v6, "nonVolatile"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lo4/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lo4/m$a;->d:Lo4/m$a;

    .line 4
    new-instance v6, Lo4/m$a;

    const-string v8, "permanent"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lo4/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lo4/m$a;->e:Lo4/m$a;

    .line 5
    new-instance v8, Lo4/m$a;

    const-string v10, "readOnly"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lo4/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lo4/m$a;->f:Lo4/m$a;

    new-array v10, v11, [Lo4/m$a;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 6
    sput-object v10, Lo4/m$a;->g:[Lo4/m$a;

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
    iput p3, p0, Lo4/m$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo4/m$a;
    .locals 1

    const-class v0, Lo4/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo4/m$a;

    return-object p0
.end method

.method public static values()[Lo4/m$a;
    .locals 1

    sget-object v0, Lo4/m$a;->g:[Lo4/m$a;

    invoke-virtual {v0}, [Lo4/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo4/m$a;

    return-object v0
.end method
