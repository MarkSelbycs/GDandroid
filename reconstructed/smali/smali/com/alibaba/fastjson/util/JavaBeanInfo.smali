.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public kotlin:Z

.field public kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 5
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 6
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 7
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 8
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 9
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p2, 0x0

    if-eqz p7, :cond_3

    .line 10
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p6

    .line 11
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 13
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p6

    .line 17
    array-length p7, p6

    if-nez p7, :cond_2

    move-object p6, p2

    :cond_2
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 21
    :goto_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 22
    invoke-interface {p8, p6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    array-length p7, p6

    new-array p7, p7, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p8

    invoke-direct {v0, p8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 26
    array-length p8, p6

    move v2, v1

    :goto_3
    if-ge v2, p8, :cond_4

    aget-object v3, p6, v2

    .line 27
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_4
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length p8, p6

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, p8, :cond_6

    aget-object v4, p6, v2

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_5

    add-int/lit8 v6, v3, 0x1

    .line 30
    aput-object v5, p7, v3

    .line 31
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 32
    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_5
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_8

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/alibaba/fastjson/util/FieldInfo;

    add-int/lit8 v0, v3, 0x1

    .line 33
    aput-object p8, p7, v3

    move v3, v0

    goto :goto_5

    .line 34
    :cond_7
    array-length p8, p6

    invoke-static {p6, v1, p7, v1, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-static {p7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 36
    :cond_8
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {p6, p7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_9

    .line 37
    iget-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 38
    :cond_9
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p3, :cond_a

    .line 39
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_6

    :cond_a
    if-eqz p5, :cond_b

    .line 40
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_6

    .line 41
    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    :goto_6
    if-eqz p4, :cond_13

    .line 42
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz p3, :cond_f

    .line 44
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :try_start_0
    new-array p3, v1, [Ljava/lang/Class;

    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    move p3, v1

    .line 47
    :goto_7
    iget-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    array-length p4, p4

    if-ge p3, p4, :cond_13

    array-length p4, p1

    if-ge p3, p4, :cond_13

    .line 48
    aget-object p4, p1, p3

    .line 49
    array-length p5, p4

    move p6, v1

    :goto_8
    if-ge p6, p5, :cond_d

    aget-object p7, p4, p6

    .line 50
    instance-of p8, p7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p8, :cond_c

    .line 51
    check-cast p7, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_9

    :cond_c
    add-int/lit8 p6, p6, 0x1

    goto :goto_8

    :cond_d
    move-object p7, p2

    :goto_9
    if-eqz p7, :cond_e

    .line 52
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_e

    .line 54
    iget-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    aput-object p4, p5, p3

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 55
    :cond_f
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p1, p1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p2

    if-eq p1, p2, :cond_10

    goto :goto_b

    :cond_10
    move p1, v1

    .line 56
    :goto_a
    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p3, p2

    if-ge p1, p3, :cond_12

    .line 57
    aget-object p2, p2, p1

    iget-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object p3, p3, p1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq p2, p3, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x1

    :goto_b
    if-nez v1, :cond_13

    .line 58
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 3
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 7
    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    if-gez v2, :cond_2

    .line 8
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 1
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v9, p5

    .line 3
    const-class v15, Ljava/lang/String;

    const-class v12, Ljava/lang/Object;

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v11, :cond_0

    .line 4
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    .line 6
    :goto_0
    invoke-static {v13, v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v8

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 9
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v16

    .line 10
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v17

    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/16 v18, 0x0

    const/4 v5, 0x1

    if-eqz v17, :cond_2

    .line 12
    array-length v1, v0

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v19, v18

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    .line 13
    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_2
    move-object/from16 v19, v1

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_6

    move-object v0, v13

    :goto_4
    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 17
    invoke-static {v13, v14, v10, v4, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-eqz v19, :cond_5

    .line 19
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 20
    :cond_5
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, v19

    move-object v8, v4

    move-object v4, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move-object v7, v11

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    .line 21
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v5

    :goto_6
    move-object/from16 p2, v10

    if-nez v19, :cond_9

    if-eqz v8, :cond_a

    :cond_9
    if-eqz v1, :cond_38

    .line 22
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 23
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_b

    .line 24
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 26
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    :cond_b
    move-object/from16 v2, v18

    :goto_7
    if-nez v2, :cond_c

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :cond_c
    move-object/from16 v23, v2

    if-eqz v23, :cond_19

    if-nez v1, :cond_19

    .line 28
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 29
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 30
    array-length v0, v9

    if-lez v0, :cond_17

    .line 31
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v0, v18

    const/4 v2, 0x0

    .line 32
    :goto_8
    array-length v1, v9

    if-ge v2, v1, :cond_17

    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 33
    aget-object v1, v3, v2

    .line 34
    array-length v5, v1

    const/4 v10, 0x0

    :goto_9
    move-object/from16 p5, v3

    if-ge v10, v5, :cond_e

    aget-object v3, v1, v10

    move-object/from16 v26, v1

    .line 35
    instance-of v1, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_d

    .line 36
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_a

    :cond_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p5

    move-object/from16 v1, v26

    goto :goto_9

    :cond_e
    move-object/from16 v3, v18

    .line 37
    :goto_a
    aget-object v5, v9, v2

    .line 38
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v10, v1, v2

    if-eqz v3, :cond_f

    .line 39
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v26

    .line 41
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v27

    .line 42
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v28

    .line 43
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_f
    move-object/from16 v1, v18

    move-object v3, v1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_b
    if-eqz v3, :cond_10

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_12

    :cond_10
    if-nez v0, :cond_11

    .line 45
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_11
    aget-object v3, v0, v2

    :cond_12
    if-nez v1, :cond_15

    if-nez v0, :cond_14

    if-eqz v17, :cond_13

    .line 47
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 48
    :cond_13
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_c
    move-object/from16 v29, v1

    .line 49
    array-length v1, v0

    if-le v1, v2, :cond_16

    .line 50
    aget-object v1, v0, v2

    .line 51
    invoke-static {v13, v1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    goto :goto_d

    :cond_15
    move-object/from16 v29, v1

    :cond_16
    move-object/from16 v30, v29

    move-object/from16 v29, v0

    .line 52
    :goto_d
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v1

    move-object/from16 v31, v9

    move-object v9, v1

    move-object v1, v3

    move/from16 v32, v2

    const/4 v3, 0x2

    move-object/from16 v2, p0

    move-object/from16 v22, p5

    move v14, v3

    move-object v3, v5

    move-object v5, v4

    move-object v4, v10

    move-object v10, v5

    move-object/from16 v5, v30

    move-object v14, v6

    move/from16 v6, v26

    move-object/from16 v26, v12

    move-object v12, v7

    move/from16 v7, v27

    move-object/from16 v27, v8

    move/from16 v8, v28

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 53
    invoke-static {v10, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v2, v32, 0x1

    move-object v4, v10

    move-object v7, v12

    move-object v6, v14

    move-object/from16 v3, v22

    move-object/from16 v12, v26

    move-object/from16 v8, v27

    move-object/from16 v0, v29

    move-object/from16 v9, v31

    const/4 v5, 0x1

    move-object/from16 v14, p1

    goto/16 :goto_8

    :cond_17
    move-object v10, v4

    move-object v14, v6

    move-object/from16 v27, v8

    move-object/from16 v26, v12

    move-object v12, v7

    :cond_18
    move-object/from16 v32, v26

    const/16 v25, 0x3

    const/16 v29, 0x1

    goto/16 :goto_21

    :cond_19
    move-object v10, v4

    move-object v14, v6

    move-object/from16 v27, v8

    move-object/from16 v26, v12

    move-object v12, v7

    .line 54
    invoke-static {v13, v14, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v21

    if-eqz v21, :cond_23

    .line 55
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 56
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 57
    array-length v0, v8

    if-lez v0, :cond_18

    .line 58
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v14

    move-object/from16 v0, v18

    const/4 v15, 0x0

    .line 59
    :goto_e
    array-length v1, v8

    if-ge v15, v1, :cond_22

    .line 60
    aget-object v1, v14, v15

    .line 61
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 62
    instance-of v5, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_1a

    .line 63
    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_10

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    move-object/from16 v4, v18

    :goto_10
    if-nez v4, :cond_1d

    if-eqz v9, :cond_1c

    .line 64
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_11

    .line 65
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_11
    if-eqz v4, :cond_1e

    .line 66
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 68
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    .line 69
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v4

    move v6, v2

    move v7, v3

    move/from16 v16, v4

    goto :goto_12

    :cond_1e
    move-object/from16 v1, v18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_12
    if-eqz v1, :cond_20

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_14

    :cond_1f
    :goto_13
    move-object/from16 v17, v0

    goto :goto_15

    :cond_20
    :goto_14
    if-nez v0, :cond_21

    .line 71
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_21
    aget-object v1, v0, v15

    goto :goto_13

    .line 73
    :goto_15
    aget-object v3, v8, v15

    .line 74
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v4, v0, v15

    .line 75
    invoke-static {v13, v1, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 76
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v2

    move-object v9, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 77
    invoke-static {v10, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, p5

    move-object/from16 v0, v17

    move-object/from16 v8, v19

    goto/16 :goto_e

    .line 78
    :cond_22
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v5, v21

    move-object v7, v11

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    :cond_23
    if-nez v1, :cond_18

    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v17, :cond_24

    .line 80
    array-length v1, v0

    if-lez v1, :cond_24

    .line 81
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v23, v0

    move-object v8, v1

    :goto_16
    move-object/from16 v6, v26

    goto/16 :goto_1b

    .line 84
    :cond_24
    array-length v1, v0

    move-object/from16 v2, v18

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_2e

    aget-object v4, v0, v3

    .line 85
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const-string v6, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    .line 86
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 87
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_25

    const/4 v6, 0x0

    aget-object v7, v5, v6

    if-ne v7, v15, :cond_25

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-ne v5, v15, :cond_25

    .line 88
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 89
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object/from16 v23, v4

    goto :goto_16

    :cond_25
    move-object/from16 v6, v26

    goto/16 :goto_1a

    :cond_26
    const-string v6, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    .line 90
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 91
    array-length v6, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_25

    const/4 v6, 0x0

    aget-object v7, v5, v6

    move-object/from16 v6, v26

    if-ne v7, v6, :cond_2d

    const/4 v7, 0x1

    aget-object v8, v5, v7

    if-ne v8, v6, :cond_2d

    const/4 v8, 0x2

    aget-object v5, v5, v8

    const-class v8, Ljava/util/Collection;

    if-ne v5, v8, :cond_2d

    .line 92
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-string v0, "principal"

    const-string v1, "credentials"

    const-string v2, "authorities"

    .line 93
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_27
    move-object/from16 v6, v26

    const-string v7, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    .line 94
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 95
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2d

    const/4 v7, 0x0

    aget-object v5, v5, v7

    if-ne v5, v15, :cond_2d

    const-string v0, "authority"

    .line 96
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    :goto_18
    move-object v8, v1

    move-object/from16 v23, v4

    goto :goto_1b

    :cond_28
    const/4 v8, 0x1

    .line 97
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v5, :cond_29

    move v5, v8

    goto :goto_19

    :cond_29
    const/4 v5, 0x0

    :goto_19
    if-nez v5, :cond_2a

    goto :goto_1a

    .line 98
    :cond_2a
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 99
    array-length v7, v5

    if-nez v7, :cond_2b

    goto :goto_1a

    :cond_2b
    if-eqz v23, :cond_2c

    if-eqz v2, :cond_2c

    .line 100
    array-length v7, v5

    array-length v8, v2

    if-gt v7, v8, :cond_2c

    goto :goto_1a

    :cond_2c
    move-object/from16 v23, v4

    move-object v2, v5

    :cond_2d
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v6

    goto/16 :goto_17

    :cond_2e
    move-object/from16 v6, v26

    move-object v8, v2

    :goto_1b
    if-eqz v8, :cond_2f

    .line 101
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    move-object v7, v0

    goto :goto_1c

    :cond_2f
    move-object/from16 v7, v18

    :goto_1c
    if-eqz v8, :cond_37

    .line 102
    array-length v0, v7

    array-length v1, v8

    if-ne v0, v1, :cond_37

    .line 103
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v22

    const/4 v5, 0x0

    .line 104
    :goto_1d
    array-length v0, v7

    if-ge v5, v0, :cond_36

    .line 105
    aget-object v0, v22, v5

    .line 106
    aget-object v1, v8, v5

    .line 107
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_31

    aget-object v4, v0, v3

    move-object/from16 p5, v0

    .line 108
    instance-of v0, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_30

    .line 109
    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1f

    :cond_30
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p5

    goto :goto_1e

    :cond_31
    move-object/from16 v4, v18

    .line 110
    :goto_1f
    aget-object v3, v7, v5

    .line 111
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v26, v0, v5

    .line 112
    invoke-static {v13, v1, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_32

    if-nez v4, :cond_32

    .line 113
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_32
    if-nez v4, :cond_34

    const-string v0, "org.springframework.security.core.userdetails.User"

    .line 114
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "password"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 116
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v31, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    goto :goto_20

    :cond_33
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    goto :goto_20

    .line 117
    :cond_34
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_35

    move-object v1, v0

    .line 119
    :cond_35
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v0

    .line 120
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v28

    .line 121
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v4

    move/from16 v31, v4

    move/from16 v29, v28

    move/from16 v28, v0

    .line 122
    :goto_20
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v4

    move-object/from16 v32, v2

    move-object/from16 v2, p0

    move-object/from16 p5, v9

    move-object v9, v4

    move-object/from16 v4, v26

    move/from16 v26, v5

    move-object/from16 v5, v32

    move-object/from16 v32, v6

    move/from16 v6, v28

    move-object/from16 v28, v7

    move/from16 v7, v29

    move-object/from16 v24, v8

    const/16 v25, 0x3

    const/16 v29, 0x1

    move/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 123
    invoke-static {v10, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v5, v26, 0x1

    move-object/from16 v9, p5

    move-object/from16 v8, v24

    move-object/from16 v7, v28

    move-object/from16 v6, v32

    goto/16 :goto_1d

    :cond_36
    move-object/from16 v32, v6

    const/16 v25, 0x3

    const/16 v29, 0x1

    if-nez v17, :cond_39

    .line 124
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 125
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v4, v23

    move-object v7, v11

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    .line 126
    :cond_37
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move-object v10, v4

    move/from16 v29, v5

    move-object v14, v6

    move-object/from16 v27, v8

    move-object/from16 v32, v12

    const/16 v25, 0x3

    move-object v12, v7

    move-object/from16 v23, v18

    :cond_39
    :goto_21
    if-eqz v19, :cond_3a

    .line 127
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_3a
    const-string v9, "set"

    move-object/from16 v8, v27

    if-eqz v8, :cond_4f

    .line 128
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-static {v8, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_3b

    .line 129
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_3b
    move-object/from16 v0, v18

    :goto_22
    if-nez v0, :cond_3c

    const-string v0, "with"

    :cond_3c
    move-object v7, v0

    .line 130
    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v5, :cond_49

    aget-object v2, v6, v4

    .line 131
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    :goto_24
    move-object/from16 v40, p2

    move/from16 v28, v4

    move/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v27, v7

    move-object/from16 v37, v8

    move-object/from16 v43, v9

    move-object/from16 v25, v11

    move-object/from16 v41, v12

    move-object/from16 v22, v15

    move-object/from16 v13, v32

    move-object v15, v10

    goto/16 :goto_2b

    .line 132
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_24

    .line 133
    :cond_3e
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_3f

    .line 134
    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    :cond_3f
    move-object/from16 v22, v0

    if-eqz v22, :cond_42

    .line 135
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_24

    .line 136
    :cond_40
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v24

    .line 137
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v26

    .line 138
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v27

    .line 139
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_41

    .line 140
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object v0, v3

    move-object/from16 v34, v3

    move-object/from16 v3, v28

    move/from16 v28, v4

    move-object/from16 v4, p0

    move/from16 v35, v5

    move-object/from16 v5, p1

    move-object/from16 v36, v6

    move/from16 v6, v24

    move-object/from16 p5, v7

    move/from16 v7, v26

    move-object/from16 v37, v8

    move/from16 v8, v27

    move-object/from16 v38, v9

    move-object/from16 v9, v22

    move-object/from16 v40, p2

    move-object/from16 v39, v10

    move-object/from16 v10, v31

    move-object/from16 v25, v11

    move-object/from16 v11, v33

    move-object/from16 v41, v12

    move-object/from16 v13, v32

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v34

    move-object/from16 v12, v39

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object/from16 v27, p5

    move-object/from16 v22, v15

    move-object/from16 v43, v38

    :goto_25
    move-object v15, v12

    goto/16 :goto_2b

    :cond_41
    move-object/from16 v40, p2

    move/from16 v28, v4

    move/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 p5, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v25, v11

    move-object/from16 v41, v12

    move-object/from16 v13, v32

    move-object v12, v10

    move/from16 v6, v24

    move/from16 v7, v26

    move/from16 v8, v27

    goto :goto_26

    :cond_42
    move-object/from16 v40, p2

    move/from16 v28, v4

    move/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 p5, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v25, v11

    move-object/from16 v41, v12

    move-object/from16 v13, v32

    move-object v12, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 142
    :goto_26
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v38

    .line 143
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x3

    if-le v1, v10, :cond_44

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_43
    const/4 v10, 0x3

    .line 145
    :cond_44
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_27
    move-object/from16 v9, p5

    :goto_28
    const/4 v0, 0x0

    goto :goto_2a

    :cond_45
    move-object/from16 v9, p5

    .line 147
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    :goto_29
    move-object/from16 v27, v9

    move-object/from16 v43, v11

    move-object/from16 v22, v15

    goto :goto_25

    .line 148
    :cond_46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_47

    goto :goto_29

    .line 149
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    .line 150
    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 151
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_29

    .line 152
    :cond_48
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v42, v5

    move-object/from16 v5, p1

    move-object/from16 v27, v9

    move-object/from16 v9, v22

    move-object/from16 v10, v24

    move-object/from16 v43, v11

    move-object/from16 v11, v26

    move-object/from16 v22, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v42

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_2b
    add-int/lit8 v4, v28, 0x1

    move-object/from16 v32, v13

    move-object v10, v15

    move-object/from16 v15, v22

    move-object/from16 v11, v25

    move-object/from16 v7, v27

    move/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 p2, v40

    move-object/from16 v12, v41

    move-object/from16 v9, v43

    const/16 v25, 0x3

    const/16 v29, 0x1

    move-object/from16 v13, p0

    goto/16 :goto_23

    :cond_49
    move-object/from16 v40, p2

    move-object/from16 v37, v8

    move-object/from16 v43, v9

    move-object/from16 v25, v11

    move-object/from16 v41, v12

    move-object/from16 v22, v15

    move-object/from16 v13, v32

    move-object v15, v10

    .line 155
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    move-object/from16 v12, v37

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_4a

    .line 156
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_4a
    move-object/from16 v0, v18

    :goto_2c
    if-eqz v0, :cond_4b

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4c

    :cond_4b
    const-string v0, "build"

    :cond_4c
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 158
    invoke-virtual {v12, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v20, :cond_4d

    :try_start_2
    const-string v0, "create"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 159
    invoke-virtual {v12, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4d
    if-eqz v20, :cond_4e

    .line 160
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_2d

    .line 161
    :cond_4e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    move-object/from16 v40, p2

    move-object/from16 v43, v9

    move-object/from16 v25, v11

    move-object/from16 v41, v12

    move-object/from16 v22, v15

    move-object/from16 v13, v32

    move-object v12, v8

    move-object v15, v10

    .line 162
    :goto_2d
    array-length v11, v14

    const/4 v10, 0x0

    :goto_2e
    const-string v9, "get"

    const/4 v8, 0x4

    if-ge v10, v11, :cond_77

    aget-object v2, v14, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v24, 0x0

    .line 163
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_50
    :goto_2f
    move/from16 v30, v10

    move-object/from16 v27, v12

    move-object/from16 v31, v13

    move-object/from16 v35, v14

    move-object/from16 v28, v22

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    move-object/from16 v36, v43

    const/16 v29, 0x2

    :goto_30
    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v13, p0

    move/from16 v22, v11

    goto/16 :goto_41

    .line 165
    :cond_51
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 166
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_2f

    .line 167
    :cond_52
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v13, :cond_53

    goto :goto_2f

    .line 168
    :cond_53
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 169
    array-length v3, v1

    if-eqz v3, :cond_50

    array-length v3, v1

    const/4 v5, 0x2

    if-le v3, v5, :cond_54

    move/from16 v29, v5

    move/from16 v30, v10

    move-object/from16 v27, v12

    move-object/from16 v31, v13

    move-object/from16 v35, v14

    move-object/from16 v28, v22

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    move-object/from16 v36, v43

    goto :goto_30

    .line 170
    :cond_54
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v26, :cond_57

    .line 171
    array-length v3, v1

    if-ne v3, v5, :cond_57

    const/4 v3, 0x0

    aget-object v4, v1, v3

    move-object/from16 v3, v22

    if-ne v4, v3, :cond_56

    const/4 v4, 0x1

    aget-object v5, v1, v4

    if-ne v5, v13, :cond_55

    .line 172
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const-string v1, ""

    move-object v0, v9

    move-object/from16 v28, v3

    move-object v3, v5

    move v8, v4

    move-object/from16 v4, p0

    const/16 v29, 0x2

    move-object/from16 v5, p1

    move/from16 v8, v24

    move-object/from16 v44, v9

    move-object/from16 v9, v26

    move/from16 v30, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v44

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object/from16 v31, v13

    move-object/from16 v35, v14

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    move-object/from16 v36, v43

    const/16 v33, 0x1

    goto :goto_33

    :cond_55
    move-object/from16 v28, v3

    move/from16 v30, v10

    move/from16 v22, v11

    move-object/from16 v27, v12

    const/16 v29, 0x2

    goto :goto_31

    :cond_56
    move-object/from16 v28, v3

    move/from16 v29, v5

    move/from16 v30, v10

    move/from16 v22, v11

    move-object/from16 v27, v12

    goto :goto_31

    :cond_57
    move/from16 v29, v5

    move/from16 v30, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v22

    move/from16 v22, v11

    .line 173
    :goto_31
    array-length v3, v1

    const/4 v12, 0x1

    if-eq v3, v12, :cond_58

    move/from16 v33, v12

    move-object/from16 v31, v13

    :goto_32
    move-object/from16 v35, v14

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    move-object/from16 v36, v43

    :goto_33
    const/16 v34, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_41

    :cond_58
    move-object/from16 v31, v13

    move-object/from16 v13, p0

    if-nez v26, :cond_59

    .line 174
    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    move-object/from16 v26, v3

    :cond_59
    if-nez v26, :cond_5a

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_5a

    :goto_34
    move/from16 v33, v12

    move-object/from16 v35, v14

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    move-object/from16 v36, v43

    :goto_35
    const/16 v34, 0x0

    goto/16 :goto_41

    :cond_5a
    if-eqz v26, :cond_5d

    .line 176
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_34

    .line 177
    :cond_5b
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 178
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 179
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 180
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5c

    .line 181
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v24, 0x0

    const/16 v32, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v10

    move-object/from16 v9, v26

    move-object/from16 v10, v24

    move-object/from16 v45, v11

    move-object/from16 v11, v32

    move v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move/from16 v33, v13

    goto :goto_32

    :cond_5c
    move v13, v12

    move/from16 v24, v10

    goto :goto_36

    :cond_5d
    move v13, v12

    :goto_36
    move-object/from16 v12, v43

    if-nez v26, :cond_5f

    .line 183
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_38

    :cond_5e
    :goto_37
    move-object/from16 v36, v12

    move/from16 v33, v13

    move-object/from16 v35, v14

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    goto/16 :goto_33

    :cond_5f
    :goto_38
    if-eqz v27, :cond_60

    goto :goto_37

    :cond_60
    const/4 v11, 0x3

    .line 184
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v17, :cond_62

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 186
    :goto_39
    array-length v10, v14

    if-ge v5, v10, :cond_63

    .line 187
    aget-object v10, v14, v5

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 188
    aget-object v10, v14, v5

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_62
    move-object/from16 v4, v18

    .line 189
    :cond_63
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    const-string v9, "is"

    const-string v10, "g"

    if-nez v5, :cond_6c

    const/16 v5, 0x200

    if-le v3, v5, :cond_64

    goto/16 :goto_3b

    :cond_64
    const/16 v5, 0x5f

    if-ne v3, v5, :cond_69

    if-eqz v17, :cond_66

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 192
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 193
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    move v4, v13

    move-object/from16 v5, v41

    move-object/from16 v13, p0

    .line 194
    invoke-static {v13, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto/16 :goto_3d

    :cond_66
    move v4, v13

    move-object/from16 v5, v41

    move-object/from16 v13, p0

    .line 195
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v13, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-nez v8, :cond_67

    .line 197
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v13, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-nez v8, :cond_68

    :cond_67
    move-object v0, v3

    :cond_68
    move-object v3, v8

    goto/16 :goto_3d

    :cond_69
    move v4, v13

    move-object/from16 v5, v41

    move-object/from16 v13, p0

    const/16 v10, 0x66

    if-ne v3, v10, :cond_6a

    .line 199
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 200
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v10, 0x5

    if-lt v3, v10, :cond_6b

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 201
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 202
    :cond_6b
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v13, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_6f

    move/from16 v33, v4

    move-object/from16 v46, v5

    move-object/from16 v36, v12

    move-object/from16 v35, v14

    move-object/from16 v48, v40

    goto/16 :goto_35

    :cond_6c
    :goto_3b
    move v4, v13

    move-object/from16 v5, v41

    move-object/from16 v13, p0

    if-eqz v17, :cond_6d

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    move-object/from16 v3, v18

    goto :goto_3d

    .line 206
    :cond_6d
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v3, :cond_6e

    .line 207
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 208
    :cond_6e
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_6f
    :goto_3d
    if-nez v3, :cond_70

    .line 209
    invoke-static {v13, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    :cond_70
    const/4 v10, 0x0

    if-nez v3, :cond_71

    .line 210
    aget-object v1, v1, v10

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_71

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v13, v1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    :cond_71
    if-eqz v3, :cond_75

    .line 213
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v32, :cond_74

    .line 214
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_72

    move/from16 v33, v4

    move-object/from16 v46, v5

    move/from16 v34, v10

    move-object/from16 v36, v12

    move-object/from16 v35, v14

    :goto_3e
    move-object/from16 v48, v40

    goto/16 :goto_41

    .line 215
    :cond_72
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 216
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 217
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 218
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_73

    .line 219
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    move-object v0, v9

    move/from16 v33, v4

    move-object/from16 v4, p0

    move-object/from16 v46, v5

    move-object/from16 v5, p1

    move-object/from16 v47, v9

    move-object/from16 v9, v26

    move/from16 v34, v10

    move-object/from16 v10, v32

    move-object/from16 v35, v14

    move v14, v11

    move-object/from16 v11, v24

    move-object/from16 v36, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v47

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_3e

    :cond_73
    move/from16 v33, v4

    move-object/from16 v46, v5

    move/from16 v34, v10

    move-object/from16 v36, v12

    move-object/from16 v35, v14

    move v14, v11

    goto :goto_3f

    :cond_74
    move/from16 v33, v4

    move-object/from16 v46, v5

    move/from16 v34, v10

    move-object/from16 v36, v12

    move-object/from16 v35, v14

    move v14, v11

    move/from16 v8, v24

    :goto_3f
    move-object/from16 v10, v32

    goto :goto_40

    :cond_75
    move/from16 v33, v4

    move-object/from16 v46, v5

    move/from16 v34, v10

    move-object/from16 v36, v12

    move-object/from16 v35, v14

    move v14, v11

    move-object/from16 v10, v18

    move/from16 v8, v24

    :goto_40
    move-object/from16 v12, v40

    if-eqz v12, :cond_76

    .line 221
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_76
    move-object v1, v0

    .line 222
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v26

    move-object v14, v11

    move-object/from16 v11, v24

    move-object/from16 v48, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v15, v14}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_41
    add-int/lit8 v10, v30, 0x1

    move/from16 v11, v22

    move-object/from16 v12, v27

    move-object/from16 v22, v28

    move-object/from16 v13, v31

    move-object/from16 v14, v35

    move-object/from16 v43, v36

    move-object/from16 v41, v46

    move-object/from16 v40, v48

    goto/16 :goto_2e

    :cond_77
    move-object/from16 v13, p0

    move-object/from16 v27, v12

    move-object/from16 v48, v40

    move-object/from16 v46, v41

    const/16 v33, 0x1

    const/16 v34, 0x0

    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v14, p1

    move/from16 v1, v34

    move-object/from16 v12, v48

    .line 224
    invoke-static {v13, v14, v12, v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v10, v11

    move v7, v1

    :goto_42
    if-ge v7, v10, :cond_85

    aget-object v2, v11, v7

    .line 226
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_79

    :cond_78
    :goto_43
    move/from16 v22, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    move/from16 v17, v10

    move-object/from16 v28, v11

    move-object/from16 v51, v12

    move-object/from16 v50, v46

    const/16 v30, 0x3

    goto/16 :goto_48

    .line 228
    :cond_79
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_43

    :cond_7a
    if-nez v27, :cond_78

    .line 229
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 230
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_7b

    :goto_44
    goto/16 :goto_47

    .line 231
    :cond_7b
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-class v1, Ljava/util/Map;

    .line 232
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 234
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 235
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_84

    .line 236
    :cond_7c
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v17, :cond_7d

    .line 237
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_44

    :cond_7d
    if-eqz v17, :cond_7e

    .line 238
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7e

    .line 239
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    move-object/from16 v5, v46

    goto :goto_45

    .line 240
    :cond_7e
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v46

    .line 241
    invoke-static {v13, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 242
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_7f

    .line 243
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_7f

    goto :goto_46

    .line 244
    :cond_7f
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_80

    const-class v3, Ljava/util/Map;

    .line 245
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_81

    :cond_80
    move-object v3, v1

    goto :goto_45

    :cond_81
    move-object/from16 v3, v18

    :goto_45
    if-eqz v12, :cond_82

    .line 246
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_82
    move-object v1, v0

    .line 247
    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    if-eqz v0, :cond_83

    :goto_46
    move-object/from16 v50, v5

    move/from16 v30, v6

    move/from16 v22, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    move/from16 v17, v10

    move-object/from16 v28, v11

    move-object/from16 v51, v12

    goto :goto_48

    .line 248
    :cond_83
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v0, v4

    move-object/from16 v49, v4

    move-object/from16 v4, p0

    move-object/from16 v50, v5

    move-object/from16 v5, p1

    move/from16 v30, v6

    move/from16 v6, v22

    move/from16 v22, v7

    move/from16 v7, v24

    move/from16 v24, v8

    move/from16 v8, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v28

    move-object/from16 v28, v11

    move-object/from16 v11, v29

    move-object/from16 v51, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v49

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_48

    :cond_84
    :goto_47
    move/from16 v30, v6

    move/from16 v22, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    move/from16 v17, v10

    move-object/from16 v28, v11

    move-object/from16 v51, v12

    move-object/from16 v50, v46

    :goto_48
    add-int/lit8 v7, v22, 0x1

    move/from16 v10, v17

    move/from16 v8, v24

    move-object/from16 v9, v26

    move-object/from16 v11, v28

    move-object/from16 v46, v50

    move-object/from16 v12, v51

    goto/16 :goto_42

    :cond_85
    move-object/from16 v51, v12

    move-object/from16 v50, v46

    .line 249
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_87

    .line 250
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isXmlField(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_86

    goto :goto_49

    :cond_86
    move/from16 v33, p3

    :goto_49
    if-eqz v33, :cond_87

    move-object v0, v13

    :goto_4a
    if-eqz v0, :cond_87

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    .line 251
    invoke-static {v13, v14, v2, v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4a

    .line 253
    :cond_87
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v3, v19

    move-object/from16 v4, v23

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move-object/from16 v7, v25

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9
.end method

.method private static buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    if-eqz p0, :cond_4

    .line 2
    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_4

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 10
    aget-object v5, v2, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_2
    aget-object v4, v2, v3

    aget-object v5, v0, v3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v15

    .line 2
    array-length v14, v1

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    if-ge v13, v14, :cond_b

    aget-object v5, v1, v13

    .line 3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_0

    :goto_1
    move-object/from16 v2, p3

    move/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_6

    :cond_0
    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 5
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/Collection;

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v2, v16

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v3

    :goto_3
    if-nez v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 11
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_5
    move/from16 v3, v16

    :goto_4
    if-eqz v3, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 13
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v12, :cond_9

    .line 14
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v3

    .line 16
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 17
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v6

    .line 18
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 19
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    :cond_8
    move v8, v3

    move v9, v4

    move v10, v6

    goto :goto_5

    :cond_9
    move/from16 v8, v16

    move v9, v8

    move v10, v9

    :goto_5
    if-eqz v0, :cond_a

    .line 20
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    move-object v3, v2

    .line 21
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v11

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    move/from16 v18, v14

    move-object v14, v15

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_6
    add-int/lit8 v13, v17, 0x1

    move/from16 v14, v18

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    const-string v4, "multi-JSONCreator"

    if-ge v3, v0, :cond_2

    aget-object v5, p0, v3

    .line 2
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v6, :cond_1

    if-nez v2, :cond_0

    move-object v2, v5

    goto :goto_1

    .line 3
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    return-object v2

    .line 4
    :cond_3
    array-length v0, p0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_b

    aget-object v5, p0, v3

    .line 5
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 6
    array-length v7, v6

    if-nez v7, :cond_4

    goto :goto_7

    .line 7
    :cond_4
    array-length v7, v6

    move v8, v1

    :goto_3
    const/4 v9, 0x1

    if-ge v8, v7, :cond_8

    aget-object v10, v6, v8

    .line 8
    array-length v11, v10

    move v12, v1

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 9
    instance-of v13, v13, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    move v9, v1

    :goto_5
    if-nez v9, :cond_7

    move v9, v1

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    if-eqz v9, :cond_a

    if-nez v2, :cond_9

    move-object v2, v5

    goto :goto_7

    .line 10
    :cond_9
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return-object v2
.end method

.method public static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    array-length v0, p1

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-object v5, v5, v2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v5, :cond_3

    if-nez v2, :cond_2

    move-object v2, v4

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    .line 6
    array-length p0, p1

    :goto_2
    if-ge v1, p0, :cond_6

    aget-object p2, p1, v1

    .line 7
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v2, p2

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
