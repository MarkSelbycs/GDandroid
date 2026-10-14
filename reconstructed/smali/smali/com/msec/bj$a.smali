.class public final enum Lcom/msec/bj$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/msec/bj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/msec/bj$a;

.field public static final enum b:Lcom/msec/bj$a;

.field private static final synthetic e:[Lcom/msec/bj$a;


# instance fields
.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/msec/bj$a;

    const/16 v1, 0x2e0

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2df

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/msec/bj$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/msec/bj$a;->a:Lcom/msec/bj$a;

    new-instance v1, Lcom/msec/bj$a;

    const/16 v2, 0x2de

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x2dd

    invoke-static {v5}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v1, v2, v6, v5, v4}, Lcom/msec/bj$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/msec/bj$a;->b:Lcom/msec/bj$a;

    new-array v2, v4, [Lcom/msec/bj$a;

    aput-object v0, v2, v3

    aput-object v1, v2, v6

    sput-object v2, Lcom/msec/bj$a;->e:[Lcom/msec/bj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/msec/bj$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/msec/bj$a;->d:I

    return-void
.end method
