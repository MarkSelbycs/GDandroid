.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fieldDeserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient hashArray:[J

.field private transient hashArrayMapping:[S

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[S

.field public final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .locals 9

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 8
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    if-eq v0, v2, :cond_0

    .line 9
    :try_start_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    .line 11
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 12
    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 13
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v3

    .line 14
    invoke-virtual {p1, p1, p2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v5, v6, v3

    const/16 v6, 0x80

    if-le v0, v6, :cond_2

    .line 16
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 17
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    .line 18
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    iget-object v7, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v6, v4

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    if-nez v1, :cond_3

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    :cond_3
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_5
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 23
    iget-object p1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p1

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 24
    array-length p1, p1

    :goto_3
    if-ge v2, p1, :cond_6

    .line 25
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v0, v0, v2

    .line 26
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    iget-boolean v4, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isJacksonCompatible()Z

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-void
.end method

.method private createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_2

    .line 5
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 6
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 7
    iget-object v5, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    .line 8
    :cond_1
    invoke-static {p0, v4, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static isSetFlag(I[I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    div-int/lit8 v1, p0, 0x20

    .line 2
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    aget p1, p1, v1

    rem-int/lit8 p0, p0, 0x20

    shl-int p0, v3, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p4, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p4, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 4
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    return-void

    :cond_0
    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 6
    :cond_1
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2

    .line 7
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 8
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 10
    :goto_0
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_3

    .line 11
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 13
    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v1, :cond_5

    .line 15
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    if-ne v5, v3, :cond_4

    .line 16
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 17
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result p0

    if-eq p0, v4, :cond_6

    .line 20
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 21
    :cond_6
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_7

    .line 22
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 23
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 10

    const-string v0, "create instance error, class "

    .line 1
    instance-of v1, p2, Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    new-array v1, v2, [Ljava/lang/Class;

    aput-object p2, v1, v3

    .line 6
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-object v6, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_1

    return-object v5

    .line 8
    :cond_1
    iget-object v6, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    iget v7, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v7, :cond_2

    return-object v5

    .line 9
    :cond_2
    :try_start_0
    iget v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    new-array p2, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_1

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v6, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_1

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "can\'t create non-static inner class instance."

    if-eqz v1, :cond_e

    .line 13
    :try_start_1
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v7, :cond_e

    .line 14
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_d

    .line 15
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v7, 0x24

    .line 16
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 17
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 19
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 21
    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v1, :cond_6

    .line 22
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v9, :cond_6

    const-string v9, "java.util.ArrayList"

    .line 23
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.List"

    .line 24
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.Collection"

    .line 25
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.Map"

    .line 26
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.HashMap"

    .line 27
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 28
    :cond_5
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 30
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    move-object v5, v7

    :cond_7
    :goto_0
    move-object v7, v5

    :cond_8
    if-eqz v7, :cond_c

    .line 31
    instance-of p2, v7, Ljava/util/Collection;

    if-eqz p2, :cond_9

    move-object p2, v7

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_9
    new-array p2, v2, [Ljava/lang/Object;

    aput-object v7, p2, v3

    .line 32
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz p1, :cond_b

    .line 33
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 34
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_b

    aget-object v2, p1, v3

    .line 36
    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_a

    :try_start_2
    const-string v4, ""

    .line 37
    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 38
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return-object p2

    .line 39
    :cond_c
    :try_start_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 42
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 43
    throw p1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_14

    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 51
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 52
    iget-object v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 53
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 54
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v10

    .line 55
    iget-object v11, v6, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eqz v11, :cond_3

    .line 56
    invoke-virtual {v9, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v10, :cond_3

    .line 57
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Void;

    if-eq v9, v10, :cond_3

    .line 58
    :cond_1
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 59
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONValidator;->from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;

    move-result-object v7

    .line 60
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONValidator;->validate()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 61
    :cond_2
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 62
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5, v1, v0, v8, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_e

    .line 64
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v9, :cond_e

    .line 65
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 66
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_5

    .line 67
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v9, :cond_4

    .line 68
    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 69
    :cond_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v9, :cond_e

    .line 70
    invoke-virtual {v7, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 71
    :cond_5
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_6

    .line 72
    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_e

    .line 73
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 74
    :cond_6
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_7

    .line 75
    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_e

    .line 76
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 77
    :cond_7
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v11, 0xa

    if-ne v9, v10, :cond_a

    .line 78
    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_8

    .line 79
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 80
    :cond_8
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_9

    .line 83
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    .line 84
    :cond_9
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 85
    :goto_2
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 86
    :cond_a
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_d

    .line 87
    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_b

    .line 88
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    .line 89
    :cond_b
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_c

    .line 92
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_3

    .line 93
    :cond_c
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 94
    :goto_3
    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    :cond_d
    if-eqz v1, :cond_e

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_e

    .line 96
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 97
    :cond_e
    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 98
    const-class v7, Ljava/util/Date;

    if-ne v8, v7, :cond_f

    .line 99
    invoke-static {v1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    .line 100
    instance-of v7, v8, Ljava/lang/Class;

    if-eqz v7, :cond_10

    move-object v7, v8

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.time.LocalDateTime"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 101
    invoke-static {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 102
    :cond_10
    instance-of v6, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_11

    .line 103
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 104
    :cond_11
    invoke-static {v1, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    :goto_4
    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 106
    :cond_12
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_13

    :try_start_0
    new-array p2, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "build object error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_13
    return-object v0

    .line 109
    :cond_14
    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 110
    array-length v1, v0

    .line 111
    new-array v5, v1, [Ljava/lang/Object;

    move-object v7, v3

    move v6, v4

    :goto_5
    if-ge v6, v1, :cond_1f

    .line 112
    aget-object v8, v0, v6

    .line 113
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1e

    .line 114
    iget-object v10, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 115
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_15

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    .line 117
    :cond_15
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_16

    const-wide/16 v9, 0x0

    .line 118
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_6

    .line 119
    :cond_16
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_17

    .line 120
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    goto :goto_6

    .line 121
    :cond_17
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_18

    .line 122
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    goto :goto_6

    .line 123
    :cond_18
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_19

    const/4 v9, 0x0

    .line 124
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_6

    .line 125
    :cond_19
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1a

    const-wide/16 v9, 0x0

    .line 126
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_6

    .line 127
    :cond_1a
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1b

    const/16 v9, 0x30

    .line 128
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    goto :goto_6

    .line 129
    :cond_1b
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1c

    .line 130
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1c
    :goto_6
    if-nez v7, :cond_1d

    .line 131
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 132
    :cond_1d
    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1e
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_1f
    if-eqz v7, :cond_21

    .line 134
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 138
    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_20

    .line 139
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-object v0, v5, v6

    goto :goto_7

    .line 140
    :cond_21
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_29

    .line 141
    iget-boolean p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz p1, :cond_24

    move p1, v4

    move v0, p1

    :goto_8
    if-ge p1, v1, :cond_25

    .line 142
    aget-object v3, v5, p1

    if-nez v3, :cond_22

    .line 143
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v3, :cond_23

    array-length v6, v3

    if-ge p1, v6, :cond_23

    .line 144
    aget-object v3, v3, p1

    .line 145
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-ne v3, v6, :cond_23

    move v0, v2

    goto :goto_9

    .line 146
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v8, v7, p1

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v6, v8, :cond_23

    .line 147
    aget-object v6, v7, p1

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, p1

    :cond_23
    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_24
    move v0, v4

    :cond_25
    const-string p1, "create instance error, "

    if-eqz v0, :cond_28

    .line 148
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_28

    :try_start_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_a
    if-ge v4, v1, :cond_27

    .line 150
    aget-object v0, v5, v4

    if-eqz v0, :cond_26

    .line 151
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v2, :cond_26

    array-length v3, v2

    if-ge v4, v3, :cond_26

    .line 152
    aget-object v2, v2, v4

    .line 153
    invoke-virtual {v2, p2, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_27
    move-object v3, p2

    goto :goto_b

    :catch_1
    move-exception p2

    .line 154
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 155
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 156
    :cond_28
    :try_start_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, p1

    goto :goto_b

    :catch_2
    move-exception p2

    .line 157
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 158
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 159
    :cond_29
    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2a

    .line 160
    :try_start_3
    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception p1

    .line 161
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create factory method error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2a
    :goto_b
    return-object v3
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I[I)TT;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    .line 3
    const-class v11, Ljava/lang/Integer;

    const-class v12, Ljava/lang/String;

    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-eq v0, v1, :cond_9b

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v1, :cond_0

    goto/16 :goto_48

    .line 4
    :cond_0
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v13, v1

    check-cast v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v14

    .line 6
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x8

    const/16 v15, 0x10

    const/4 v7, 0x0

    if-ne v1, v2, :cond_1

    .line 7
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-object v7

    .line 8
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    if-eqz p4, :cond_2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2
    move-object v6, v2

    const/16 v5, 0xd

    if-ne v1, v5, :cond_4

    .line 10
    :try_start_0
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    if-nez p4, :cond_3

    .line 11
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p4

    .line 12
    :goto_0
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v12, p4

    :goto_2
    move-object v3, v6

    goto/16 :goto_47

    :cond_4
    const/16 v2, 0xe

    if-ne v1, v2, :cond_7

    .line 13
    :try_start_1
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 14
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    .line 15
    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_6

    and-int v3, p5, v4

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_7

    .line 16
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_7
    const/16 v3, 0xc

    const/4 v5, 0x4

    if-eq v1, v3, :cond_10

    if-eq v1, v15, :cond_10

    .line 18
    :try_start_2
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v7

    :cond_8
    if-ne v1, v5, :cond_b

    .line 20
    :try_start_3
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_9

    .line 22
    :try_start_4
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v7

    .line 24
    :cond_9
    :try_start_5
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v3, :cond_b

    .line 25
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v3

    array-length v15, v3

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v15, :cond_b

    aget-object v4, v3, v5

    .line 26
    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_a

    .line 27
    :try_start_6
    invoke-static {v4, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 28
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_0
    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v12, p4

    move-object v3, v6

    const/4 v7, 0x0

    goto/16 :goto_47

    :cond_b
    if-ne v1, v2, :cond_c

    .line 29
    :try_start_7
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_c

    .line 30
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 31
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 32
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v7, 0x0

    return-object v7

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    .line 33
    :try_start_8
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_e

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x0

    .line 34
    :try_start_9
    aget-object v0, v0, v2

    .line 35
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v0, v11, :cond_d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 36
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->intValue()I

    move-result v0

    .line 37
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v14, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 39
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_d
    if-ne v0, v12, :cond_e

    const/4 v0, 0x4

    if-ne v1, v0, :cond_e

    .line 40
    :try_start_a
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 42
    invoke-direct {v8, v14, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 43
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_1
    move-exception v0

    .line 44
    :try_start_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 45
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pos "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    instance-of v1, v10, Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, ", fieldName "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, ", fastjson-version "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.83"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 55
    :cond_10
    :try_start_c
    iget v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_11

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    const/4 v4, 0x0

    .line 56
    :try_start_d
    iput v4, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    .line 57
    :goto_6
    :try_start_e
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_11

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move v3, v4

    move-object/from16 v19, v7

    move-object/from16 v4, v19

    move v7, v3

    .line 58
    :goto_7
    :try_start_f
    iget-object v15, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    if-ge v3, v0, :cond_14

    const/16 v0, 0x10

    if-ge v7, v0, :cond_14

    .line 59
    :try_start_10
    aget-object v0, v15, v3

    .line 60
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move/from16 p4, v3

    .line 61
    iget-object v3, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 62
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v20

    if-eqz v20, :cond_12

    move-object/from16 p6, v3

    .line 63
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v3, :cond_13

    .line 64
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->customDeserilizer:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_8

    :cond_12
    move-object/from16 p6, v3

    :cond_13
    const/4 v3, 0x0

    :goto_8
    move-object/from16 v32, v15

    move-object/from16 v15, p6

    move-object/from16 p6, v2

    move-object/from16 v2, v32

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v12, v1

    goto/16 :goto_26

    :cond_14
    move/from16 p4, v3

    move-object/from16 p6, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_9
    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    if-eqz v0, :cond_3c

    move-object/from16 v26, v1

    .line 65
    :try_start_11
    iget-object v1, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    if-eqz v3, :cond_15

    .line 66
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v27, v14

    :goto_a
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_17

    .line 67
    :cond_15
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v27, v14

    const/4 v14, -0x2

    if-eq v15, v3, :cond_39

    if-ne v15, v11, :cond_16

    goto/16 :goto_14

    .line 68
    :cond_16
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v15, v3, :cond_36

    const-class v3, Ljava/lang/Long;

    if-ne v15, v3, :cond_17

    goto/16 :goto_12

    :cond_17
    if-ne v15, v12, :cond_19

    .line 69
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_18

    :goto_b
    const/4 v3, 0x1

    const/4 v14, 0x1

    goto/16 :goto_18

    :cond_18
    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 71
    :cond_19
    const-class v3, Ljava/util/Date;

    if-ne v15, v3, :cond_1b

    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 72
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v1

    .line 73
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_1a

    goto :goto_b

    :cond_1a
    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 74
    :cond_1b
    const-class v3, Ljava/math/BigDecimal;

    if-ne v15, v3, :cond_1d

    .line 75
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v1

    .line 76
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_1c

    goto :goto_b

    :cond_1c
    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 77
    :cond_1d
    const-class v3, Ljava/math/BigInteger;

    if-ne v15, v3, :cond_1f

    .line 78
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v1

    .line 79
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_1e

    goto :goto_b

    :cond_1e
    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 80
    :cond_1f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v15, v3, :cond_33

    const-class v3, Ljava/lang/Boolean;

    if-ne v15, v3, :cond_20

    goto/16 :goto_10

    .line 81
    :cond_20
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v15, v3, :cond_30

    const-class v3, Ljava/lang/Float;

    if-ne v15, v3, :cond_21

    goto/16 :goto_e

    .line 82
    :cond_21
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v15, v3, :cond_2d

    const-class v3, Ljava/lang/Double;

    if-ne v15, v3, :cond_22

    goto/16 :goto_c

    .line 83
    :cond_22
    invoke-virtual {v15}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v3, :cond_25

    if-eqz v20, :cond_23

    .line 85
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v3

    const-class v14, Ljava/lang/Void;

    if-ne v3, v14, :cond_25

    .line 86
    :cond_23
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v3, :cond_3d

    .line 87
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 88
    invoke-virtual {v8, v13, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v1

    .line 89
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_24

    goto/16 :goto_b

    :cond_24
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 90
    :cond_25
    const-class v3, [I

    if-ne v15, v3, :cond_27

    .line 91
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v1

    .line 92
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_26

    goto/16 :goto_b

    :cond_26
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 93
    :cond_27
    const-class v3, [F

    if-ne v15, v3, :cond_29

    .line 94
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v1

    .line 95
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_28

    goto/16 :goto_b

    :cond_28
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 96
    :cond_29
    const-class v3, [[F

    if-ne v15, v3, :cond_2b

    .line 97
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v1

    .line 98
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_2a

    goto/16 :goto_b

    :cond_2a
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 99
    :cond_2b
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_a

    :cond_2c
    move/from16 v20, v7

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1a

    .line 100
    :cond_2d
    :goto_c
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v29

    cmpl-double v1, v29, v21

    if-nez v1, :cond_2e

    .line 101
    iget v1, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2e

    const/4 v1, 0x0

    goto :goto_d

    .line 102
    :cond_2e
    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 103
    :goto_d
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_2f

    goto/16 :goto_b

    :cond_2f
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto/16 :goto_16

    .line 104
    :cond_30
    :goto_e
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v1

    cmpl-float v3, v1, v23

    if-nez v3, :cond_31

    .line 105
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x5

    if-ne v3, v14, :cond_31

    const/4 v1, 0x0

    goto :goto_f

    .line 106
    :cond_31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 107
    :goto_f
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_32

    goto/16 :goto_b

    :cond_32
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto :goto_16

    .line 108
    :cond_33
    :goto_10
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v1

    .line 109
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x5

    if-ne v3, v14, :cond_34

    const/4 v1, 0x0

    goto :goto_11

    .line 110
    :cond_34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 111
    :goto_11
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_35

    goto/16 :goto_b

    :cond_35
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto :goto_16

    .line 112
    :cond_36
    :goto_12
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v29

    cmp-long v1, v29, v24

    if-nez v1, :cond_37

    .line 113
    iget v1, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_37

    const/4 v1, 0x0

    goto :goto_13

    .line 114
    :cond_37
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 115
    :goto_13
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v3, :cond_38

    goto/16 :goto_b

    :cond_38
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    goto :goto_16

    .line 116
    :cond_39
    :goto_14
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v1

    if-nez v1, :cond_3a

    .line 117
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x5

    if-ne v3, v14, :cond_3a

    const/4 v1, 0x0

    goto :goto_15

    .line 118
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 119
    :goto_15
    iget v3, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-lez v3, :cond_3b

    goto/16 :goto_b

    :cond_3b
    const/4 v14, -0x2

    if-ne v3, v14, :cond_3e

    :goto_16
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, p2

    move/from16 v15, p4

    move-object v0, v4

    move-object/from16 v16, v5

    move-object v3, v6

    move-object/from16 v28, v11

    move-object v11, v12

    move-object/from16 v17, v19

    move-object/from16 v18, v27

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v12, 0xd

    const/16 v27, 0x4

    move-object/from16 v19, p6

    goto/16 :goto_43

    :catchall_4
    move-exception v0

    move-object v7, v4

    move-object v3, v6

    move-object/from16 v12, v26

    goto/16 :goto_47

    :cond_3c
    move-object/from16 v26, v1

    move-object/from16 v27, v14

    :cond_3d
    const/4 v1, 0x0

    :cond_3e
    const/4 v3, 0x0

    :goto_17
    const/4 v14, 0x0

    :goto_18
    if-nez v3, :cond_5f

    move/from16 v20, v7

    .line 120
    :try_start_12
    iget-object v7, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v13, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-nez v7, :cond_40

    move-object/from16 v28, v11

    .line 121
    :try_start_13
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    move-object/from16 v29, v12

    const/16 v12, 0xd

    if-ne v11, v12, :cond_3f

    const/16 v12, 0x10

    .line 122
    invoke-virtual {v13, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    :goto_19
    move-object/from16 v12, v26

    goto/16 :goto_24

    :cond_3f
    const/16 v12, 0x10

    if-ne v11, v12, :cond_41

    .line 123
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v13, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v11, :cond_41

    :goto_1a
    move-object/from16 v12, v26

    move-object/from16 v11, v27

    const/16 v1, 0xd

    goto/16 :goto_25

    :cond_40
    move-object/from16 v28, v11

    move-object/from16 v29, v12

    :cond_41
    :try_start_14
    const-string v11, "$ref"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-ne v11, v7, :cond_4f

    if-eqz v6, :cond_4f

    const/4 v11, 0x4

    .line 124
    :try_start_15
    invoke-virtual {v13, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 125
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    if-ne v0, v11, :cond_4e

    .line 126
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 128
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_1f

    :cond_42
    const-string v1, ".."

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 130
    iget-object v1, v6, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 131
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v2, :cond_43

    :goto_1b
    move-object v1, v2

    goto/16 :goto_1f

    .line 132
    :cond_43
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 133
    iput v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_1e

    :cond_44
    const-string v1, "$"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    move-object v1, v6

    .line 135
    :goto_1c
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_45

    move-object v1, v2

    goto :goto_1c

    .line 136
    :cond_45
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v2, :cond_46

    goto :goto_1b

    .line 137
    :cond_46
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 138
    iput v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_1e

    :cond_47
    const/16 v1, 0x5c

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_4a

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 141
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_49

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_48

    add-int/lit8 v3, v3, 0x1

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 144
    :cond_48
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_1d

    .line 145
    :cond_49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_4a
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4b

    goto :goto_1f

    .line 147
    :cond_4b
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v1, v6, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 148
    iput v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :goto_1e
    move-object/from16 v1, v26

    :goto_1f
    const/16 v0, 0xd

    .line 149
    :try_start_16
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 150
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    if-ne v2, v0, :cond_4d

    const/16 v0, 0x10

    .line 151
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 152
    invoke-virtual {v9, v6, v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v4, :cond_4c

    .line 153
    iput-object v1, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 154
    :cond_4c
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 155
    :cond_4d
    :try_start_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 156
    :cond_4e
    :try_start_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    if-eqz v5, :cond_50

    .line 157
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-nez v11, :cond_51

    :cond_50
    :try_start_19
    sget-object v11, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v11, v7, :cond_5e

    :cond_51
    const/4 v0, 0x4

    .line 158
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 159
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-ne v1, v0, :cond_5d

    .line 160
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 161
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 162
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto/16 :goto_23

    .line 163
    :cond_52
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v11, v27

    invoke-static {v11, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-nez v1, :cond_58

    .line 164
    :try_start_1a
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 165
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    if-eqz v2, :cond_53

    .line 166
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;->handler(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    goto :goto_20

    :cond_53
    const/4 v2, 0x0

    :goto_20
    if-nez v2, :cond_56

    const-string v3, "java.util.HashMap"

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "java.util.LinkedHashMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 168
    :cond_54
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_55

    .line 169
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_19

    :cond_55
    move-object/from16 v12, v26

    goto :goto_25

    :cond_56
    if-nez v2, :cond_57

    .line 170
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    move-object v7, v1

    goto :goto_21

    :cond_57
    move-object v7, v2

    .line 171
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_22

    :cond_58
    const/4 v7, 0x0

    .line 172
    :goto_22
    :try_start_1b
    invoke-interface {v1, v9, v7, v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    instance-of v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-eqz v3, :cond_59

    .line 174
    :try_start_1c
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v5, :cond_59

    .line 175
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 176
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :cond_59
    if-eqz v4, :cond_5a

    move-object/from16 v12, v26

    .line 177
    iput-object v12, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 178
    :cond_5a
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v2

    :cond_5b
    :goto_23
    move-object/from16 v12, v26

    move-object/from16 v11, v27

    .line 179
    :try_start_1d
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5c

    .line 180
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_24
    move-object/from16 v14, p2

    move-object v7, v4

    move-object/from16 v31, v6

    move-object/from16 v0, v19

    move-object/from16 v11, v29

    const/16 p4, 0x0

    goto/16 :goto_33

    :cond_5c
    :goto_25
    move-object/from16 v14, p2

    move/from16 v15, p4

    move-object v0, v4

    move-object/from16 v16, v5

    move-object v3, v6

    move-object/from16 v18, v11

    move-object/from16 v26, v12

    move-object/from16 v17, v19

    move/from16 v7, v20

    move-object/from16 v11, v29

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v27, 0x4

    move-object/from16 v19, p6

    move v12, v1

    const/4 v1, 0x0

    goto/16 :goto_43

    :cond_5d
    move-object/from16 v12, v26

    .line 181
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :cond_5e
    move-object/from16 v12, v26

    move-object/from16 v11, v27

    const/16 v16, 0xd

    goto :goto_27

    :catchall_5
    move-exception v0

    move-object/from16 v12, v26

    :goto_26
    move-object v7, v4

    goto/16 :goto_2

    :cond_5f
    move/from16 v20, v7

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v12, v26

    move-object/from16 v11, v27

    const/16 v16, 0xd

    const/4 v7, 0x0

    :goto_27
    if-nez v12, :cond_62

    if-nez v19, :cond_62

    .line 182
    :try_start_1e
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-nez v12, :cond_60

    move-object/from16 v26, v4

    .line 183
    :try_start_1f
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v27, v5

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v19, v4

    goto :goto_28

    :cond_60
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    .line 184
    :goto_28
    invoke-virtual {v9, v6, v12, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-nez p6, :cond_61

    .line 185
    :try_start_20
    iget-object v5, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    div-int/lit8 v5, v5, 0x20

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-object/from16 v26, v4

    move-object/from16 v32, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v32

    goto :goto_2a

    :catchall_6
    move-exception v0

    goto :goto_26

    :cond_61
    move-object/from16 v26, v4

    goto :goto_29

    :catchall_7
    move-exception v0

    goto/16 :goto_45

    :cond_62
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    :goto_29
    move-object/from16 v5, v19

    move-object/from16 v19, p6

    :goto_2a
    if-eqz v3, :cond_6b

    if-nez v14, :cond_63

    move-object/from16 v14, p2

    .line 186
    :try_start_21
    invoke-virtual {v0, v9, v12, v14, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move/from16 v15, p4

    move-object/from16 v17, v5

    move-object/from16 v31, v6

    move-object/from16 v18, v11

    move/from16 v0, v20

    move-object/from16 v11, v29

    const/16 p4, 0x0

    move-object/from16 v29, v12

    move/from16 v12, v16

    move-object/from16 v16, v27

    const/16 v27, 0x4

    goto/16 :goto_31

    :cond_63
    move-object/from16 v14, p2

    if-nez v12, :cond_64

    .line 187
    iget-object v0, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_64
    if-nez v1, :cond_66

    .line 188
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v15, v2, :cond_65

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v15, v2, :cond_65

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v15, v2, :cond_65

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v15, v2, :cond_65

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v15, v2, :cond_65

    .line 189
    invoke-virtual {v0, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    :goto_2b
    move-object/from16 v4, v29

    goto :goto_2c

    :cond_66
    move-object/from16 v4, v29

    if-ne v15, v4, :cond_68

    .line 190
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int v7, p5, v3

    if-nez v7, :cond_67

    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v7, v3

    if-nez v7, :cond_67

    iget v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_68

    .line 191
    :cond_67
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_68
    invoke-virtual {v0, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2c
    if-eqz v19, :cond_69

    .line 193
    div-int/lit8 v3, p4, 0x20

    .line 194
    rem-int/lit8 v0, p4, 0x20

    .line 195
    aget v1, v19, v3

    const/4 v15, 0x1

    shl-int v0, v15, v0

    or-int/2addr v0, v1

    aput v0, v19, v3

    goto :goto_2d

    :cond_69
    const/4 v15, 0x1

    .line 196
    :goto_2d
    iget v0, v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6a

    move-object v11, v4

    move-object/from16 v17, v5

    move-object/from16 v31, v6

    move-object/from16 v29, v12

    const/16 p4, 0x0

    goto/16 :goto_32

    :cond_6a
    move/from16 v15, p4

    move-object/from16 v17, v5

    move-object/from16 v31, v6

    move-object/from16 v18, v11

    move-object/from16 v29, v12

    move/from16 v12, v16

    move/from16 v0, v20

    move-object/from16 v16, v27

    const/16 p4, 0x0

    move/from16 v27, v3

    move-object v11, v4

    goto/16 :goto_31

    :cond_6b
    move-object/from16 v14, p2

    move-object/from16 v4, v29

    const/4 v3, 0x4

    const/4 v15, 0x1

    if-nez v5, :cond_6c

    .line 197
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    goto :goto_2e

    :catchall_8
    move-exception v0

    goto/16 :goto_46

    :cond_6c
    move-object v0, v5

    :goto_2e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v18, v11

    move v11, v15

    move/from16 v15, p4

    move-object v3, v7

    move-object v11, v4

    const/4 v7, 0x0

    move-object v4, v12

    move-object/from16 v29, v12

    move/from16 v12, v16

    move-object/from16 v16, v27

    move/from16 v27, v17

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    move-object/from16 v31, v6

    move-object v6, v0

    move/from16 p4, v7

    move/from16 v0, v20

    move-object/from16 v7, v19

    :try_start_22
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    if-nez v1, :cond_6e

    .line 198
    :try_start_23
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-ne v1, v12, :cond_6d

    .line 199
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_32

    :cond_6d
    move/from16 v1, p4

    move-object/from16 v3, v31

    const/16 v2, 0x10

    :goto_2f
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_42

    :catchall_9
    move-exception v0

    move-object/from16 v7, v26

    move-object/from16 v12, v29

    :goto_30
    move-object/from16 v3, v31

    goto/16 :goto_47

    .line 200
    :cond_6e
    :try_start_24
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_99

    .line 201
    :goto_31
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6f

    move/from16 v1, p4

    move-object/from16 v3, v31

    goto :goto_2f

    .line 202
    :cond_6f
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-ne v1, v12, :cond_97

    .line 203
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :goto_32
    move-object/from16 v0, v17

    move-object/from16 v7, v26

    move-object/from16 v12, v29

    :goto_33
    if-nez v12, :cond_92

    if-nez v0, :cond_72

    .line 204
    :try_start_25
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    if-nez v7, :cond_70

    move-object/from16 v3, v31

    .line 205
    :try_start_26
    invoke-virtual {v9, v3, v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    goto :goto_34

    :catchall_a
    move-exception v0

    move-object v12, v1

    goto/16 :goto_47

    :cond_70
    move-object/from16 v3, v31

    :goto_34
    if-eqz v7, :cond_71

    .line 206
    iput-object v1, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 207
    :cond_71
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catchall_b
    move-exception v0

    goto :goto_30

    :cond_72
    move-object/from16 v3, v31

    .line 208
    :try_start_27
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    const-string v4, ""

    if-eqz v2, :cond_7d

    .line 209
    :try_start_28
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    move/from16 v5, p4

    .line 210
    :goto_35
    array-length v6, v2

    if-ge v5, v6, :cond_88

    .line 211
    aget-object v6, v2, v5

    .line 212
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7b

    .line 213
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v13, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v13, v13, v5

    .line 214
    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v10, v10, v5

    .line 215
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_73

    .line 216
    invoke-static/range {p4 .. p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto :goto_36

    .line 217
    :cond_73
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_74

    .line 218
    invoke-static/range {p4 .. p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_36

    .line 219
    :cond_74
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_75

    .line 220
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_36

    .line 221
    :cond_75
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_76

    .line 222
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_36

    .line 223
    :cond_76
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_77

    .line 224
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_36

    .line 225
    :cond_77
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_78

    .line 226
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_36

    .line 227
    :cond_78
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_79

    .line 228
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_36

    :cond_79
    if-ne v13, v11, :cond_7a

    .line 229
    iget v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v13

    if-eqz v10, :cond_7a

    move-object v6, v4

    :cond_7a
    :goto_36
    move/from16 v14, p4

    goto :goto_37

    .line 230
    :cond_7b
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    if-eqz v10, :cond_7a

    array-length v13, v10

    if-ge v5, v13, :cond_7a

    .line 231
    aget-object v10, v10, v5

    .line 232
    instance-of v13, v10, Ljava/lang/Class;

    if-eqz v13, :cond_7a

    .line 233
    check-cast v10, Ljava/lang/Class;

    .line 234
    invoke-virtual {v10, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7a

    .line 235
    instance-of v13, v6, Ljava/util/List;

    if-eqz v13, :cond_7a

    .line 236
    move-object v13, v6

    check-cast v13, Ljava/util/List;

    .line 237
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7a

    move/from16 v14, p4

    .line 238
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 239
    invoke-virtual {v10, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 240
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 241
    :cond_7c
    :goto_37
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 p4, v14

    goto/16 :goto_35

    :cond_7d
    move/from16 v14, p4

    .line 242
    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 243
    array-length v5, v1

    .line 244
    new-array v6, v5, [Ljava/lang/Object;

    move v10, v14

    :goto_38
    if-ge v10, v5, :cond_87

    .line 245
    aget-object v13, v1, v10

    .line 246
    iget-object v15, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_85

    .line 247
    iget-object v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v16, v1

    .line 248
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_7e

    const/4 v1, 0x0

    .line 249
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    goto :goto_39

    .line 250
    :cond_7e
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_7f

    const/4 v1, 0x0

    .line 251
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    goto :goto_39

    .line 252
    :cond_7f
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_80

    const/4 v1, 0x0

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_39

    .line 254
    :cond_80
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_81

    .line 255
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_39

    .line 256
    :cond_81
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_82

    .line 257
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    goto :goto_39

    .line 258
    :cond_82
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_83

    .line 259
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    goto :goto_39

    .line 260
    :cond_83
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_84

    .line 261
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_39

    :cond_84
    if-ne v14, v11, :cond_86

    .line 262
    iget v1, v13, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v13

    if-eqz v1, :cond_86

    move-object v15, v4

    goto :goto_39

    :cond_85
    move-object/from16 v16, v1

    .line 263
    :cond_86
    :goto_39
    aput-object v15, v6, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    const/4 v14, 0x0

    goto :goto_38

    :cond_87
    move-object v1, v6

    .line 264
    :cond_88
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_90

    .line 265
    iget-boolean v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz v4, :cond_8a

    const/4 v4, 0x0

    .line 266
    :goto_3a
    array-length v5, v1

    if-ge v4, v5, :cond_8a

    .line 267
    aget-object v5, v1, v4

    if-nez v5, :cond_89

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_89

    array-length v6, v5

    if-ge v4, v6, :cond_89

    .line 268
    aget-object v4, v5, v4

    .line 269
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    if-ne v4, v11, :cond_8a

    const/4 v4, 0x1

    goto :goto_3b

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_8a
    const/4 v4, 0x0

    :goto_3b
    if-eqz v4, :cond_8d

    .line 270
    :try_start_29
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_8d

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 271
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    const/4 v5, 0x0

    .line 272
    :goto_3c
    :try_start_2a
    array-length v6, v1

    if-ge v5, v6, :cond_8c

    .line 273
    aget-object v6, v1, v5

    if-eqz v6, :cond_8b

    .line 274
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v10, :cond_8b

    array-length v11, v10

    if-ge v5, v11, :cond_8b

    .line 275
    aget-object v10, v10, v5

    .line 276
    invoke-virtual {v10, v4, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    :cond_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_8c
    move-object v1, v4

    goto :goto_3d

    :catchall_c
    move-exception v0

    move-object v12, v4

    goto/16 :goto_47

    :catch_2
    move-exception v0

    move-object v12, v4

    goto :goto_3f

    .line 277
    :cond_8d
    :try_start_2b
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_3
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    :goto_3d
    if-eqz v2, :cond_8f

    .line 278
    :try_start_2c
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 280
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    goto :goto_3e

    :cond_8f
    move-object v12, v1

    goto :goto_40

    :catch_3
    move-exception v0

    .line 281
    :goto_3f
    :try_start_2d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create instance error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 282
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :cond_90
    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    if-eqz v0, :cond_91

    const/4 v4, 0x0

    .line 284
    :try_start_2e
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_4
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    move-object v12, v0

    goto :goto_40

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 285
    :try_start_2f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create factory method error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_91
    :goto_40
    if-eqz v7, :cond_93

    .line 286
    iput-object v12, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_41

    :cond_92
    move-object/from16 v3, v31

    .line 287
    :cond_93
    :goto_41
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    if-nez v0, :cond_95

    if-eqz v7, :cond_94

    .line 288
    iput-object v12, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 289
    :cond_94
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    :cond_95
    const/4 v1, 0x0

    :try_start_30
    new-array v1, v1, [Ljava/lang/Object;

    .line 290
    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_5
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    if-eqz v7, :cond_96

    .line 291
    iput-object v12, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 292
    :cond_96
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_5
    move-exception v0

    .line 293
    :try_start_31
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "build object error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    :catchall_d
    move-exception v0

    goto/16 :goto_47

    :cond_97
    move/from16 v1, p4

    move-object/from16 v3, v31

    const/4 v4, 0x0

    .line 294
    :try_start_32
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    const/16 v6, 0x12

    if-eq v5, v6, :cond_98

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_98

    :goto_42
    move v7, v0

    move-object/from16 v0, v26

    move-object/from16 v26, v29

    :goto_43
    add-int/lit8 v5, v15, 0x1

    move-object v4, v0

    move-object v6, v3

    move v3, v5

    move-object v12, v11

    move-object v0, v14

    move-object/from16 v5, v16

    move-object/from16 v14, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v26

    move-object/from16 v11, v28

    move-object/from16 v19, v17

    goto/16 :goto_7

    .line 295
    :cond_98
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    move-object/from16 v3, v31

    .line 296
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_e

    :catchall_e
    move-exception v0

    goto :goto_44

    :catchall_f
    move-exception v0

    move-object/from16 v3, v31

    :goto_44
    move-object/from16 v7, v26

    move-object/from16 v12, v29

    goto :goto_47

    :catchall_10
    move-exception v0

    move-object v12, v1

    :goto_45
    move-object/from16 v26, v4

    :goto_46
    move-object v3, v6

    move-object/from16 v7, v26

    goto :goto_47

    :catchall_11
    move-exception v0

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v12, p4

    :goto_47
    if-eqz v7, :cond_9a

    .line 297
    iput-object v12, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 298
    :cond_9a
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 299
    throw v0

    .line 300
    :cond_9b
    :goto_48
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_12

    .line 3
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 8
    :cond_0
    instance-of v1, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_1

    .line 9
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    .line 11
    iget-object p4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length p4, p4

    :goto_0
    const/16 v1, 0x10

    if-ge p3, p4, :cond_11

    add-int/lit8 v3, p4, -0x1

    const/16 v4, 0x5d

    if-ne p3, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/16 v3, 0x2c

    .line 12
    :goto_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, p3

    .line 13
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 14
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 15
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 16
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto/16 :goto_4

    .line 17
    :cond_3
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_4

    .line 18
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 20
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 21
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v3

    .line 22
    invoke-virtual {v5, p2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_4

    .line 23
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 24
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    const/16 v4, 0x22

    if-eq v1, v4, :cond_8

    const/16 v4, 0x6e

    if-ne v1, v4, :cond_6

    goto :goto_2

    :cond_6
    const/16 v4, 0x30

    if-lt v1, v4, :cond_7

    const/16 v4, 0x39

    if-gt v1, v4, :cond_7

    .line 25
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 26
    move-object v3, v5

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 27
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_3

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v1

    invoke-interface {v0, v6, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v1

    .line 30
    :goto_3
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 31
    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_a

    .line 32
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v1

    .line 33
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_4

    .line 34
    :cond_a
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    .line 35
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 37
    :cond_b
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_c

    .line 38
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v3

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 40
    :cond_c
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_d

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_d

    .line 41
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v3

    .line 42
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 43
    :cond_d
    const-class v7, Ljava/math/BigDecimal;

    if-ne v6, v7, :cond_e

    .line 44
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v1

    .line 45
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 46
    :cond_e
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 47
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 48
    invoke-virtual {v5, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_f

    goto :goto_5

    :cond_f
    if-ne v3, v4, :cond_10

    move v1, v6

    .line 50
    :cond_10
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 51
    :cond_11
    :goto_5
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object p2

    .line 52
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFastMatchToken()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v0, v0, [J

    move v2, v1

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 14
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_2

    return-object p2

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    const/4 v2, -0x1

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v0, v0

    new-array v0, v0, [S

    .line 20
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 21
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 22
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v5

    .line 24
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-ltz v3, :cond_3

    int-to-short v4, v1

    .line 25
    aput-short v4, v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26
    :cond_4
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short p1, v0, p1

    if-eq p1, v2, :cond_6

    .line 28
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p2, p1

    return-object p1

    :cond_6
    return-object p2
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_5

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p1, v3

    return-object p1

    .line 9
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz p2, :cond_6

    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object p1

    :cond_6
    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result p1

    return p1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 2
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 3
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 4
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 5
    invoke-interface {v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v11, v15}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 10
    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_f

    .line 11
    invoke-interface {v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    .line 12
    :cond_4
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_c

    .line 13
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v9, v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 14
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_3
    if-eqz v4, :cond_b

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_b

    .line 15
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 16
    array-length v6, v5

    move/from16 v7, v16

    :goto_4
    if-ge v7, v6, :cond_a

    aget-object v8, v5, v7

    .line 17
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v18

    if-eqz v18, :cond_5

    goto :goto_6

    .line 19
    :cond_5
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v19, v18, 0x10

    if-nez v19, :cond_9

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v18, v2

    .line 20
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v2, :cond_7

    .line 21
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v5

    const-string v5, ""

    .line 22
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v9, v2

    goto :goto_5

    :cond_7
    move-object/from16 v19, v5

    .line 23
    :cond_8
    :goto_5
    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v18, v2

    .line 24
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v18, v2

    .line 25
    iput-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_8

    :cond_c
    move-object/from16 v18, v2

    .line 26
    :goto_8
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v11}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 27
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v3, :cond_d

    .line 28
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object v15, v10

    const/16 v17, 0x1

    goto :goto_a

    .line 29
    :cond_d
    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    .line 30
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v20, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v18

    move-object v15, v10

    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 32
    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v5, v20

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 33
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v11, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_e
    move-object v15, v10

    const/16 v17, 0x1

    goto :goto_9

    :cond_f
    move-object/from16 v18, v2

    move/from16 v17, v9

    move-object v15, v10

    :goto_9
    move-object/from16 v2, v18

    :goto_a
    const/4 v3, -0x1

    if-nez v2, :cond_19

    .line 34
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v4, v3

    move/from16 v2, v16

    .line 35
    :goto_b
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v2, v6, :cond_15

    .line 36
    aget-object v5, v5, v2

    .line 37
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 38
    iget-boolean v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v7, :cond_14

    instance-of v7, v5, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v7, :cond_14

    .line 39
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const-string v8, "parse unwrapped field error."

    if-eqz v7, :cond_13

    .line 40
    move-object v7, v5

    check-cast v7, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 42
    instance-of v10, v9, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v10, :cond_11

    .line 43
    move-object v10, v9

    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 44
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 45
    :try_start_0
    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    .line 46
    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v9, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    invoke-virtual {v5, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    :cond_10
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {v15, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 49
    invoke-virtual {v10, v0, v4, v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 50
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 51
    :cond_11
    instance-of v7, v9, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v7, :cond_14

    .line 52
    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 53
    :try_start_1
    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_12

    .line 54
    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v4

    .line 55
    invoke-virtual {v5, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    :cond_12
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 59
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 60
    :cond_13
    iget-object v5, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_14

    .line 61
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 62
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 63
    :try_start_2
    iget-object v5, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v11, v6, v16

    aput-object v4, v6, v17

    invoke-virtual {v5, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_c
    move v4, v2

    goto :goto_d

    :catch_2
    move-exception v0

    .line 64
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_14
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_15
    if-eq v4, v3, :cond_17

    move-object/from16 v5, p6

    if-eqz v5, :cond_16

    .line 65
    div-int/lit8 v0, v4, 0x20

    .line 66
    rem-int/lit8 v4, v4, 0x20

    .line 67
    aget v2, v5, v0

    shl-int v3, v17, v4

    or-int/2addr v2, v3

    aput v2, v5, v0

    :cond_16
    return v17

    .line 68
    :cond_17
    invoke-virtual {v0, v12, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    .line 69
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v5, p6

    move-object v4, v15

    move/from16 v6, v16

    .line 70
    :goto_e
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v7

    if-ge v6, v8, :cond_1b

    .line 71
    aget-object v7, v7, v6

    if-ne v7, v2, :cond_1a

    goto :goto_f

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1b
    move v6, v3

    :goto_f
    if-eq v6, v3, :cond_1c

    if-eqz v5, :cond_1c

    const-string v3, "_"

    .line 72
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 73
    invoke-static {v6, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 74
    invoke-virtual {v0, v12, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    .line 75
    :cond_1c
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 76
    invoke-virtual {v2, v0, v12, v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    if-eqz v5, :cond_1d

    .line 77
    div-int/lit8 v0, v6, 0x20

    .line 78
    rem-int/lit8 v6, v6, 0x20

    .line 79
    aget v2, v5, v0

    shl-int v3, v17, v6

    or-int/2addr v2, v3

    aput v2, v5, v0

    :cond_1d
    return v17
.end method

.method public parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    new-array v7, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 1
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal enum. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;
    .locals 6

    .line 2
    instance-of v0, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_1

    const/4 p2, -0x1

    .line 4
    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanEnumSymbol([C)J

    move-result-wide v2

    .line 6
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez p2, :cond_5

    .line 7
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p2

    if-nez p2, :cond_4

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return-object v1

    .line 8
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not match enum value, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p2

    :cond_5
    return-object v1
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    new-array v2, v2, [J

    move v4, v3

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 6
    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 8
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v4

    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_3

    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide v4

    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    :cond_3
    if-gez v2, :cond_4

    const-string v4, "is"

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x2

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide v5

    .line 15
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    goto :goto_1

    :cond_4
    move v4, v3

    :cond_5
    :goto_1
    if-ltz v2, :cond_9

    .line 16
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    const/4 v5, -0x1

    if-nez p1, :cond_8

    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length p1, p1

    new-array p1, p1, [S

    .line 18
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([SS)V

    .line 19
    :goto_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v6

    if-ge v3, v7, :cond_7

    .line 20
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-ltz v6, :cond_6

    int-to-short v7, v3

    .line 21
    aput-short v7, p1, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22
    :cond_7
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short p1, p1, v2

    if-eq p1, v5, :cond_9

    .line 24
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 25
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, p2, p1

    :cond_9
    if-eqz v1, :cond_b

    .line 26
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 27
    iget p2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_a

    return-object v0

    .line 28
    :cond_a
    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_b

    .line 29
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_b

    const-class p2, Ljava/lang/Boolean;

    if-eq p1, p2, :cond_b

    goto :goto_3

    :cond_b
    move-object v0, v1

    :goto_3
    return-object v0
.end method
