.class public abstract enum Ls2/r;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls2/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls2/r;

.field public static final enum b:Ls2/r;

.field public static final synthetic c:[Ls2/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ls2/r$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls2/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls2/r;->a:Ls2/r;

    .line 2
    new-instance v1, Ls2/r$b;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls2/r$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls2/r;->b:Ls2/r;

    const/4 v3, 0x2

    new-array v3, v3, [Ls2/r;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ls2/r;->c:[Ls2/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILs2/r$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ls2/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls2/r;
    .locals 1

    const-class v0, Ls2/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls2/r;

    return-object p0
.end method

.method public static values()[Ls2/r;
    .locals 1

    sget-object v0, Ls2/r;->c:[Ls2/r;

    invoke-virtual {v0}, [Ls2/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls2/r;

    return-object v0
.end method
