.class public final enum Ly2/b;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly2/b;

.field public static final enum b:Ly2/b;

.field public static final enum c:Ly2/b;

.field public static final enum d:Ly2/b;

.field public static final enum e:Ly2/b;

.field public static final enum f:Ly2/b;

.field public static final enum g:Ly2/b;

.field public static final enum h:Ly2/b;

.field public static final enum i:Ly2/b;

.field public static final enum o:Ly2/b;

.field public static final synthetic p:[Ly2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ly2/b;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/b;->a:Ly2/b;

    .line 2
    new-instance v1, Ly2/b;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/b;->b:Ly2/b;

    .line 3
    new-instance v3, Ly2/b;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly2/b;->c:Ly2/b;

    .line 4
    new-instance v5, Ly2/b;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly2/b;->d:Ly2/b;

    .line 5
    new-instance v7, Ly2/b;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ly2/b;->e:Ly2/b;

    .line 6
    new-instance v9, Ly2/b;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly2/b;->f:Ly2/b;

    .line 7
    new-instance v11, Ly2/b;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ly2/b;->g:Ly2/b;

    .line 8
    new-instance v13, Ly2/b;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ly2/b;->h:Ly2/b;

    .line 9
    new-instance v15, Ly2/b;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ly2/b;->i:Ly2/b;

    .line 10
    new-instance v14, Ly2/b;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ly2/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ly2/b;->o:Ly2/b;

    const/16 v12, 0xa

    new-array v12, v12, [Ly2/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Ly2/b;->p:[Ly2/b;

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

.method public static valueOf(Ljava/lang/String;)Ly2/b;
    .locals 1

    const-class v0, Ly2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/b;

    return-object p0
.end method

.method public static values()[Ly2/b;
    .locals 3

    sget-object v0, Ly2/b;->p:[Ly2/b;

    invoke-virtual {v0}, [Ly2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/b;

    return-object v0
.end method
