.class public final enum Lk4/m$b;
.super Ljava/lang/Enum;
.source "SNMP4JSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk4/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk4/m$b;

.field public static final enum b:Lk4/m$b;

.field public static final enum c:Lk4/m$b;

.field public static final synthetic d:[Lk4/m$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lk4/m$b;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk4/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk4/m$b;->a:Lk4/m$b;

    .line 2
    new-instance v1, Lk4/m$b;

    const-string v3, "basic"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lk4/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk4/m$b;->b:Lk4/m$b;

    .line 3
    new-instance v3, Lk4/m$b;

    const-string v5, "extended"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lk4/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk4/m$b;->c:Lk4/m$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lk4/m$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lk4/m$b;->d:[Lk4/m$b;

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

.method public static valueOf(Ljava/lang/String;)Lk4/m$b;
    .locals 1

    const-class v0, Lk4/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk4/m$b;

    return-object p0
.end method

.method public static values()[Lk4/m$b;
    .locals 1

    sget-object v0, Lk4/m$b;->d:[Lk4/m$b;

    invoke-virtual {v0}, [Lk4/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk4/m$b;

    return-object v0
.end method
