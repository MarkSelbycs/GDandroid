.class public final enum Ln1/b;
.super Ljava/lang/Enum;
.source "BasicType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln1/b;

.field public static final enum b:Ln1/b;

.field public static final enum c:Ln1/b;

.field public static final enum d:Ln1/b;

.field public static final enum e:Ln1/b;

.field public static final enum f:Ln1/b;

.field public static final enum g:Ln1/b;

.field public static final enum h:Ln1/b;

.field public static final enum i:Ln1/b;

.field public static final enum o:Ln1/b;

.field public static final enum p:Ln1/b;

.field public static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final synthetic s:[Ln1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ln1/b;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/b;->a:Ln1/b;

    new-instance v1, Ln1/b;

    const-string v3, "SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln1/b;->b:Ln1/b;

    new-instance v3, Ln1/b;

    const-string v5, "INT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln1/b;->c:Ln1/b;

    new-instance v5, Ln1/b;

    const-string v7, "INTEGER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln1/b;->d:Ln1/b;

    new-instance v7, Ln1/b;

    const-string v9, "LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ln1/b;->e:Ln1/b;

    new-instance v9, Ln1/b;

    const-string v11, "DOUBLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ln1/b;->f:Ln1/b;

    new-instance v11, Ln1/b;

    const-string v13, "FLOAT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ln1/b;->g:Ln1/b;

    new-instance v13, Ln1/b;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ln1/b;->h:Ln1/b;

    new-instance v15, Ln1/b;

    const-string v14, "CHAR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ln1/b;->i:Ln1/b;

    new-instance v14, Ln1/b;

    const-string v12, "CHARACTER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ln1/b;->o:Ln1/b;

    new-instance v12, Ln1/b;

    const-string v10, "STRING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ln1/b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ln1/b;->p:Ln1/b;

    const/16 v10, 0xb

    new-array v10, v10, [Ln1/b;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v1, 0x9

    aput-object v14, v10, v1

    aput-object v12, v10, v8

    .line 2
    sput-object v10, Ln1/b;->s:[Ln1/b;

    .line 3
    new-instance v1, La2/u;

    invoke-direct {v1, v0}, La2/u;-><init>(I)V

    sput-object v1, Ln1/b;->q:Ljava/util/Map;

    .line 4
    new-instance v2, La2/u;

    invoke-direct {v2, v0}, La2/u;-><init>(I)V

    sput-object v2, Ln1/b;->r:Ljava/util/Map;

    .line 5
    const-class v0, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v0, Ljava/lang/Byte;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v0, Ljava/lang/Character;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v0, Ljava/lang/Double;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v0, Ljava/lang/Float;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v0, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v0, Ljava/lang/Long;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v0, Ljava/lang/Short;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    sget-object v2, Ln1/b;->r:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
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

.method public static b(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ln1/b;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln1/b;
    .locals 1

    const-class v0, Ln1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/b;

    return-object p0
.end method

.method public static values()[Ln1/b;
    .locals 2

    sget-object v0, Ln1/b;->s:[Ln1/b;

    invoke-virtual {v0}, [Ln1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/b;

    return-object v0
.end method
