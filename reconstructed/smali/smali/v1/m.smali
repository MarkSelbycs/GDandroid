.class public Lv1/m;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:[Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/reflect/Type;

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/m;->a:[Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Lv1/m;->b:Ljava/lang/reflect/Type;

    .line 4
    iput-object p3, p0, Lv1/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static varargs b(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    invoke-static {p2}, Le2/c;->v([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :goto_1
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 5
    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v4}, Le2/b0;->j0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lv1/m;->a:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lv1/m;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lv1/m;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lv1/m;->b:Ljava/lang/reflect/Type;

    .line 3
    iget-object v2, p0, Lv1/m;->c:Ljava/lang/reflect/Type;

    check-cast v2, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 6
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x2e

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x3c

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv1/m;->a:[Ljava/lang/reflect/Type;

    const-string v2, ", "

    invoke-static {v0, v2, v1}, Lv1/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
