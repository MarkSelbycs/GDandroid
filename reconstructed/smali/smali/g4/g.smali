.class public final enum Lg4/g;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg4/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg4/g;

.field public static final enum b:Lg4/g;

.field public static final enum c:Lg4/g;

.field public static final enum d:Lg4/g;

.field public static final synthetic e:[Lg4/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lg4/g;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg4/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg4/g;->a:Lg4/g;

    .line 2
    new-instance v1, Lg4/g;

    const-string v3, "SPDY_REPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg4/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg4/g;->b:Lg4/g;

    .line 3
    new-instance v3, Lg4/g;

    const-string v5, "SPDY_HEADERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg4/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg4/g;->c:Lg4/g;

    .line 4
    new-instance v5, Lg4/g;

    const-string v7, "HTTP_20_HEADERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg4/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg4/g;->d:Lg4/g;

    const/4 v7, 0x4

    new-array v7, v7, [Lg4/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lg4/g;->e:[Lg4/g;

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

.method public static valueOf(Ljava/lang/String;)Lg4/g;
    .locals 1

    const-class v0, Lg4/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg4/g;

    return-object p0
.end method

.method public static values()[Lg4/g;
    .locals 1

    sget-object v0, Lg4/g;->e:[Lg4/g;

    invoke-virtual {v0}, [Lg4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg4/g;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    sget-object v0, Lg4/g;->c:Lg4/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    sget-object v0, Lg4/g;->b:Lg4/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    sget-object v0, Lg4/g;->b:Lg4/g;

    if-eq p0, v0, :cond_1

    sget-object v0, Lg4/g;->c:Lg4/g;

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

.method public h()Z
    .locals 1

    sget-object v0, Lg4/g;->a:Lg4/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
