.class public final enum Le2/n$a;
.super Ljava/lang/Enum;
.source "ModifierUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le2/n$a;

.field public static final enum c:Le2/n$a;

.field public static final enum d:Le2/n$a;

.field public static final enum e:Le2/n$a;

.field public static final enum f:Le2/n$a;

.field public static final enum g:Le2/n$a;

.field public static final enum h:Le2/n$a;

.field public static final enum i:Le2/n$a;

.field public static final enum o:Le2/n$a;

.field public static final enum p:Le2/n$a;

.field public static final enum q:Le2/n$a;

.field public static final synthetic r:[Le2/n$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le2/n$a;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le2/n$a;->b:Le2/n$a;

    .line 2
    new-instance v1, Le2/n$a;

    const-string v4, "PRIVATE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le2/n$a;->c:Le2/n$a;

    .line 3
    new-instance v4, Le2/n$a;

    const-string v6, "PROTECTED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Le2/n$a;->d:Le2/n$a;

    .line 4
    new-instance v6, Le2/n$a;

    const-string v8, "STATIC"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Le2/n$a;->e:Le2/n$a;

    .line 5
    new-instance v8, Le2/n$a;

    const-string v11, "FINAL"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Le2/n$a;->f:Le2/n$a;

    .line 6
    new-instance v11, Le2/n$a;

    const-string v12, "SYNCHRONIZED"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Le2/n$a;->g:Le2/n$a;

    .line 7
    new-instance v12, Le2/n$a;

    const-string v14, "VOLATILE"

    const/4 v15, 0x6

    const/16 v13, 0x40

    invoke-direct {v12, v14, v15, v13}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Le2/n$a;->h:Le2/n$a;

    .line 8
    new-instance v13, Le2/n$a;

    const-string v14, "TRANSIENT"

    const/4 v15, 0x7

    const/16 v7, 0x80

    invoke-direct {v13, v14, v15, v7}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Le2/n$a;->i:Le2/n$a;

    .line 9
    new-instance v7, Le2/n$a;

    const-string v14, "NATIVE"

    const/16 v15, 0x100

    invoke-direct {v7, v14, v10, v15}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Le2/n$a;->o:Le2/n$a;

    .line 10
    new-instance v14, Le2/n$a;

    const-string v15, "ABSTRACT"

    const/16 v10, 0x9

    const/16 v9, 0x400

    invoke-direct {v14, v15, v10, v9}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Le2/n$a;->p:Le2/n$a;

    .line 11
    new-instance v9, Le2/n$a;

    const-string v15, "STRICT"

    const/16 v10, 0xa

    const/16 v5, 0x800

    invoke-direct {v9, v15, v10, v5}, Le2/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Le2/n$a;->q:Le2/n$a;

    const/16 v5, 0xb

    new-array v5, v5, [Le2/n$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v11, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v7, v5, v0

    const/16 v0, 0x9

    aput-object v14, v5, v0

    aput-object v9, v5, v10

    .line 12
    sput-object v5, Le2/n$a;->r:[Le2/n$a;

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
    iput p3, p0, Le2/n$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le2/n$a;
    .locals 1

    const-class v0, Le2/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/n$a;

    return-object p0
.end method

.method public static values()[Le2/n$a;
    .locals 1

    sget-object v0, Le2/n$a;->r:[Le2/n$a;

    invoke-virtual {v0}, [Le2/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/n$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Le2/n$a;->a:I

    return v0
.end method
