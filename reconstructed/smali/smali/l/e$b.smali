.class public final enum Ll/e$b;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ll/e$b;

.field public static final enum b:Ll/e$b;

.field public static final synthetic c:[Ll/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ll/e$b;

    const-string v1, "RELAXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/e$b;->a:Ll/e$b;

    new-instance v1, Ll/e$b;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ll/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll/e$b;->b:Ll/e$b;

    const/4 v3, 0x2

    new-array v3, v3, [Ll/e$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ll/e$b;->c:[Ll/e$b;

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

.method public static valueOf(Ljava/lang/String;)Ll/e$b;
    .locals 1

    const-class v0, Ll/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/e$b;

    return-object p0
.end method

.method public static values()[Ll/e$b;
    .locals 1

    sget-object v0, Ll/e$b;->c:[Ll/e$b;

    invoke-virtual {v0}, [Ll/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/e$b;

    return-object v0
.end method
