.class public final enum Ll/f$b;
.super Ljava/lang/Enum;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ll/f$b;

.field public static final enum b:Ll/f$b;

.field public static final enum c:Ll/f$b;

.field public static final enum d:Ll/f$b;

.field public static final synthetic e:[Ll/f$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ll/f$b;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/f$b;->a:Ll/f$b;

    new-instance v1, Ll/f$b;

    const-string v3, "WRAP_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ll/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll/f$b;->b:Ll/f$b;

    new-instance v3, Ll/f$b;

    const-string v5, "MATCH_CONSTRAINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ll/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ll/f$b;->c:Ll/f$b;

    new-instance v5, Ll/f$b;

    const-string v7, "MATCH_PARENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ll/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ll/f$b;->d:Ll/f$b;

    const/4 v7, 0x4

    new-array v7, v7, [Ll/f$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Ll/f$b;->e:[Ll/f$b;

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

.method public static valueOf(Ljava/lang/String;)Ll/f$b;
    .locals 1

    const-class v0, Ll/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/f$b;

    return-object p0
.end method

.method public static values()[Ll/f$b;
    .locals 1

    sget-object v0, Ll/f$b;->e:[Ll/f$b;

    invoke-virtual {v0}, [Ll/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/f$b;

    return-object v0
.end method
