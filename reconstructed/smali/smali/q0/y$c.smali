.class public final enum Lq0/y$c;
.super Ljava/lang/Enum;
.source "WorkInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq0/y$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq0/y$c;

.field public static final enum b:Lq0/y$c;

.field public static final enum c:Lq0/y$c;

.field public static final enum d:Lq0/y$c;

.field public static final enum e:Lq0/y$c;

.field public static final enum f:Lq0/y$c;

.field public static final synthetic g:[Lq0/y$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq0/y$c;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/y$c;->a:Lq0/y$c;

    .line 2
    new-instance v0, Lq0/y$c;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/y$c;->b:Lq0/y$c;

    .line 3
    new-instance v0, Lq0/y$c;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/y$c;->c:Lq0/y$c;

    .line 4
    new-instance v0, Lq0/y$c;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lq0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/y$c;->d:Lq0/y$c;

    .line 5
    new-instance v0, Lq0/y$c;

    const-string v1, "BLOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lq0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/y$c;->e:Lq0/y$c;

    .line 6
    new-instance v0, Lq0/y$c;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lq0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/y$c;->f:Lq0/y$c;

    invoke-static {}, Lq0/y$c;->b()[Lq0/y$c;

    move-result-object v0

    sput-object v0, Lq0/y$c;->g:[Lq0/y$c;

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

.method public static final synthetic b()[Lq0/y$c;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lq0/y$c;

    sget-object v1, Lq0/y$c;->a:Lq0/y$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq0/y$c;->b:Lq0/y$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lq0/y$c;->c:Lq0/y$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lq0/y$c;->d:Lq0/y$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lq0/y$c;->e:Lq0/y$c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lq0/y$c;->f:Lq0/y$c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq0/y$c;
    .locals 1

    const-class v0, Lq0/y$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/y$c;

    return-object p0
.end method

.method public static values()[Lq0/y$c;
    .locals 1

    sget-object v0, Lq0/y$c;->g:[Lq0/y$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/y$c;

    return-object v0
.end method


# virtual methods
.method public final e()Z
    .locals 1

    sget-object v0, Lq0/y$c;->c:Lq0/y$c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lq0/y$c;->d:Lq0/y$c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lq0/y$c;->f:Lq0/y$c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
