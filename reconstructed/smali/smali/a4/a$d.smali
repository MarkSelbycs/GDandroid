.class public final enum La4/a$d;
.super Ljava/lang/Enum;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La4/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La4/a$d;

.field public static final enum b:La4/a$d;

.field public static final enum c:La4/a$d;

.field public static final enum d:La4/a$d;

.field public static final enum e:La4/a$d;

.field public static final synthetic f:[La4/a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La4/a$d;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La4/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/a$d;->a:La4/a$d;

    .line 2
    new-instance v0, La4/a$d;

    const-string v1, "BLOCKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La4/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/a$d;->b:La4/a$d;

    .line 3
    new-instance v0, La4/a$d;

    const-string v1, "PARKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, La4/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/a$d;->c:La4/a$d;

    .line 4
    new-instance v0, La4/a$d;

    const-string v1, "DORMANT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, La4/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/a$d;->d:La4/a$d;

    .line 5
    new-instance v0, La4/a$d;

    const-string v1, "TERMINATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, La4/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, La4/a$d;->e:La4/a$d;

    invoke-static {}, La4/a$d;->b()[La4/a$d;

    move-result-object v0

    sput-object v0, La4/a$d;->f:[La4/a$d;

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

.method public static final synthetic b()[La4/a$d;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [La4/a$d;

    sget-object v1, La4/a$d;->a:La4/a$d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, La4/a$d;->b:La4/a$d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, La4/a$d;->c:La4/a$d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, La4/a$d;->d:La4/a$d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, La4/a$d;->e:La4/a$d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La4/a$d;
    .locals 1

    const-class v0, La4/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La4/a$d;

    return-object p0
.end method

.method public static values()[La4/a$d;
    .locals 1

    sget-object v0, La4/a$d;->f:[La4/a$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La4/a$d;

    return-object v0
.end method
