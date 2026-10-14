.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$FilterGroup;,
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegment;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$RefOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertyFilter;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$KeySetSegment;,
        Lcom/alibaba/fastjson/JSONPath$MinSegment;,
        Lcom/alibaba/fastjson/JSONPath$MaxSegment;,
        Lcom/alibaba/fastjson/JSONPath$FloorSegment;,
        Lcom/alibaba/fastjson/JSONPath$TypeSegment;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegment;,
        Lcom/alibaba/fastjson/JSONPath$Segment;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;,
        Lcom/alibaba/fastjson/JSONPath$Context;
    }
.end annotation


# static fields
.field public static final LENGTH:J = -0x15eea8c0e50a614bL

.field public static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasRefSegment:Z

.field private ignoreNullValue:Z

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 7
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 8
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath;->ignoreNullValue:Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    const-string p2, "json-path can not be null or empty"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;Z)V

    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Float;

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 5
    const-class v6, Ljava/math/BigDecimal;

    if-ne v4, v6, :cond_4

    if-ne v5, v2, :cond_1

    .line 6
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    :goto_0
    move-object p1, v0

    goto/16 :goto_2

    :cond_1
    if-ne v5, v3, :cond_2

    .line 7
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_0

    :cond_2
    if-ne v5, v0, :cond_3

    .line 8
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_12

    .line 9
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_0

    :cond_4
    if-ne v4, v3, :cond_8

    if-ne v5, v2, :cond_5

    .line 10
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 11
    :cond_5
    const-class v2, Ljava/math/BigDecimal;

    if-ne v5, v2, :cond_6

    .line 12
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_1

    :cond_6
    if-ne v5, v0, :cond_7

    .line 13
    new-instance v0, Ljava/lang/Float;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :cond_7
    if-ne v5, v1, :cond_12

    .line 14
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :cond_8
    if-ne v4, v2, :cond_c

    if-ne v5, v3, :cond_9

    .line 15
    new-instance v0, Ljava/lang/Long;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    :goto_1
    move-object p0, v0

    goto/16 :goto_2

    .line 16
    :cond_9
    const-class v2, Ljava/math/BigDecimal;

    if-ne v5, v2, :cond_a

    .line 17
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_1

    :cond_a
    if-ne v5, v0, :cond_b

    .line 18
    new-instance v0, Ljava/lang/Float;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :cond_b
    if-ne v5, v1, :cond_12

    .line 19
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :cond_c
    if-ne v4, v1, :cond_f

    if-ne v5, v2, :cond_d

    .line 20
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    :cond_d
    if-ne v5, v3, :cond_e

    .line 21
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    :cond_e
    if-ne v5, v0, :cond_12

    .line 22
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    :cond_f
    if-ne v4, v0, :cond_12

    if-ne v5, v2, :cond_10

    .line 23
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    :cond_10
    if-ne v5, v3, :cond_11

    .line 24
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    :cond_11
    if-ne v5, v1, :cond_12

    .line 25
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_1

    .line 26
    :cond_12
    :goto_2
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v0, "jsonpath can not be null"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compile(Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONPath;
    .locals 2

    if-eqz p0, :cond_1

    .line 7
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Z)V

    .line 9
    sget-object p1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p1

    const/16 v1, 0x400

    if-ge p1, v1, :cond_0

    .line 10
    sget-object p1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    :cond_0
    return-object v0

    .line 12
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string p1, "jsonpath can not be null"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 4
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 5
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_3
    return v0

    .line 6
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v3

    .line 5
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_0

    .line 6
    move-object v4, p0

    check-cast v4, Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    .line 7
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    return v4

    .line 9
    :cond_2
    instance-of v6, p1, Ljava/math/BigInteger;

    if-eqz v6, :cond_3

    .line 10
    move-object p1, p0

    check-cast p1, Ljava/math/BigInteger;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    if-eqz v3, :cond_4

    .line 13
    instance-of v6, p0, Ljava/math/BigInteger;

    if-eqz v6, :cond_4

    .line 14
    check-cast p0, Ljava/math/BigInteger;

    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 17
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v0

    .line 18
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v0, :cond_5

    if-nez v2, :cond_7

    :cond_5
    if-eqz v0, :cond_6

    if-nez v3, :cond_7

    :cond_6
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 19
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    move v4, v5

    :goto_1
    return v4

    :cond_9
    return v5
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 32
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 0

    .line 27
    sget-object p4, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget p4, p4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p3, p4

    .line 28
    new-instance p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {p4, p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 29
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p0

    .line 30
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/JSONPath;->extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object p0

    .line 31
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p0
.end method

.method public static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static keySet(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "/"

    .line 4
    invoke-static {v0, v1, v2, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7
    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/util/UUID;

    if-eq v0, v2, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    instance-of v0, p3, Ljava/util/Map;

    const-string v2, "/"

    if-eqz v0, :cond_7

    .line 11
    check-cast p3, Ljava/util/Map;

    .line 12
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 15
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_2

    :cond_6
    return-void

    .line 18
    :cond_7
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_a

    .line 19
    check-cast p3, Ljava/util/Collection;

    .line 20
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {p0, p1, v3, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void

    .line 23
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 25
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_c

    .line 26
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {p0, p1, v4, v3, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    return-void

    .line 29
    :cond_d
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_b

    .line 30
    :cond_e
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 31
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_12

    .line 32
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 33
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 34
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f
    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 37
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 38
    :goto_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_11
    return-void

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "toJSON error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_12
    :goto_b
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs reserveToArray(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 4
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 6
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static varargs reserveToObject(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 4
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 6
    iget-object v5, v4, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    .line 7
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_b

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, p1

    move v2, v1

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 4
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    move-object v0, v3

    .line 5
    :cond_2
    aget-object v4, v4, v2

    invoke-interface {v4, p0, p1, v3}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_a

    .line 6
    instance-of p1, v3, Ljava/util/Collection;

    if-eqz p1, :cond_5

    .line 7
    check-cast v3, Ljava/util/Collection;

    .line 8
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_4

    aget-object v0, p2, v1

    .line 9
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 10
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 12
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    array-length v4, p2

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {v3, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_6

    add-int v3, v2, v1

    .line 16
    aget-object v4, p2, v1

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_6
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object p2, p2, v1

    .line 18
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v1, :cond_7

    .line 19
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 20
    invoke-virtual {p2, p0, v0, p1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_7
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v1, :cond_8

    .line 22
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p2, p0, v0, p1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported array put operation. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value not found in path "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_3
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move-object v2, p1

    move v1, v0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 3
    aget-object v3, v3, v1

    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    .line 4
    :cond_1
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v3, v4, :cond_2

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 5
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 2
    :cond_1
    instance-of v2, p1, Ljava/lang/Iterable;

    if-eqz v2, :cond_4

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_3
    return v1

    .line 7
    :cond_4
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public deepGetObjects(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath error, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 11
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetObjects(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    return-void

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath error, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 9
    check-cast p1, Ljava/util/Collection;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getFieldValue error."

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 7
    check-cast v1, Ljava/util/Collection;

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    return-void

    .line 11
    :cond_6
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_9

    .line 12
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 13
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    return-void

    .line 17
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 19
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_a

    .line 20
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 23
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 24
    :cond_a
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_b
    return-void

    :catch_2
    move-exception p1

    .line 27
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath error, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", segement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 28
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 29
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method public deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 10
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "jsonpath error, path "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", segement "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 17
    :cond_6
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 18
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v2, v2, v0

    .line 4
    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public eval(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evalKeySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_4

    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 6
    :cond_3
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldNames(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evalKeySet error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public evalSize(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1

    .line 3
    :cond_1
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 4
    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 7
    :cond_3
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 8
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v0

    .line 9
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_7

    return v0

    .line 10
    :cond_7
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evalSize error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 2
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v1

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 8
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    if-nez v2, :cond_d

    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    if-nez v2, :cond_d

    instance-of v1, v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v1, 0x0

    move-object v4, v0

    move v2, v1

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    if-ge v2, v6, :cond_c

    .line 10
    aget-object v6, v5, v2

    .line 11
    array-length v7, v5

    sub-int/2addr v7, v3

    if-ne v2, v7, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 12
    iget-object v8, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-eqz v8, :cond_5

    .line 13
    invoke-interface {v6, p0, v0, v8}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-nez v7, :cond_b

    add-int/lit8 v7, v2, 0x1

    .line 14
    aget-object v5, v5, v7

    .line 15
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v7, :cond_6

    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 16
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-nez v7, :cond_b

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-nez v7, :cond_b

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    if-nez v7, :cond_b

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    if-nez v7, :cond_b

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-nez v7, :cond_b

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v7, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 18
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I

    move-result v7

    if-gez v7, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v5, :cond_8

    goto :goto_2

    .line 20
    :cond_8
    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    if-eqz v5, :cond_9

    goto :goto_2

    .line 21
    :cond_9
    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v5, v1

    goto :goto_3

    :cond_b
    :goto_2
    move v5, v3

    .line 22
    :goto_3
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$Context;

    invoke-direct {v7, v4, v5}, Lcom/alibaba/fastjson/JSONPath$Context;-><init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V

    .line 23
    invoke-interface {v6, p0, p1, v7}, Lcom/alibaba/fastjson/JSONPath$Segment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    move-object v4, v7

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_c
    iget-object p1, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-object p1

    .line 25
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Ljava/util/List;

    if-ltz p2, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 5
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0

    .line 7
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ltz p2, :cond_6

    if-ge p2, v1, :cond_5

    .line 9
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0

    .line 10
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_7

    add-int/2addr v1, p2

    .line 11
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0

    .line 12
    :cond_8
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 13
    check-cast p1, Ljava/util/Map;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_9
    return-object v0

    .line 16
    :cond_a
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_d

    .line 17
    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p2, :cond_b

    return-object v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    return-object v0

    :cond_d
    if-nez p2, :cond_e

    return-object p1

    .line 19
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    :cond_1
    move-object v3, p1

    .line 3
    :goto_0
    nop

    instance-of p1, v3, Ljava/util/Map;

    const-wide v1, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    const-wide v4, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    if-eqz p1, :cond_4

    .line 4
    check-cast v3, Ljava/util/Map;

    .line 5
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    cmp-long p2, v4, p3

    if-eqz p2, :cond_2

    cmp-long p2, v1, p3

    if-nez p2, :cond_3

    .line 6
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    return-object p1

    .line 7
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    .line 9
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 10
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jsonpath error, path "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", segement "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 11
    :cond_5
    instance-of p1, v3, Ljava/util/List;

    const/4 v6, 0x0

    if-eqz p1, :cond_11

    .line 12
    check-cast v3, Ljava/util/List;

    cmp-long p1, v4, p3

    if-eqz p1, :cond_10

    cmp-long p1, v1, p3

    if-nez p1, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v6, p1, :cond_e

    .line 14
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_8

    if-nez v0, :cond_7

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 16
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    .line 18
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_a

    .line 19
    check-cast p1, Ljava/util/Collection;

    if-nez v0, :cond_9

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 21
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_a
    if-nez p1, :cond_b

    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->ignoreNullValue:Z

    if-nez v1, :cond_d

    :cond_b
    if-nez v0, :cond_c

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 24
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_e
    if-nez v0, :cond_f

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_f
    return-object v0

    .line 26
    :cond_10
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :cond_11
    instance-of p1, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_19

    .line 28
    check-cast v3, [Ljava/lang/Object;

    cmp-long p1, v4, p3

    if-eqz p1, :cond_18

    cmp-long p1, v1, p3

    if-nez p1, :cond_12

    goto :goto_6

    .line 29
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    array-length v0, v3

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 30
    :goto_4
    array-length v0, v3

    if-ge v6, v0, :cond_17

    .line 31
    aget-object v0, v3, v6

    if-ne v0, v3, :cond_13

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 33
    :cond_13
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 34
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Ljava/util/Collection;

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_14
    if-nez v0, :cond_15

    .line 37
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->ignoreNullValue:Z

    if-nez v1, :cond_16

    .line 38
    :cond_15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_17
    return-object p1

    .line 39
    :cond_18
    :goto_6
    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 40
    :cond_19
    instance-of p1, v3, Ljava/lang/Enum;

    if-eqz p1, :cond_1b

    .line 41
    move-object p1, v3

    check-cast p1, Ljava/lang/Enum;

    const-wide v1, -0x3b435245719ce47aL    # -1.3543099103600943E23

    cmp-long p2, v1, p3

    if-nez p2, :cond_1a

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    const-wide v1, -0xe14383dfcdd03deL    # -5.788733405278088E240

    cmp-long p2, v1, p3

    if-nez p2, :cond_1b

    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1b
    instance-of p1, v3, Ljava/util/Calendar;

    if-eqz p1, :cond_21

    .line 45
    check-cast v3, Ljava/util/Calendar;

    const-wide p1, 0x7c64634977425edcL

    cmp-long p1, p1, p3

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    .line 46
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1c
    const-wide p1, -0xb423c6c9050a95bL

    cmp-long p1, p1, p3

    if-nez p1, :cond_1d

    const/4 p1, 0x2

    .line 47
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1d
    const-wide p1, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    cmp-long p1, p1, p3

    if-nez p1, :cond_1e

    const/4 p1, 0x5

    .line 48
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1e
    const-wide p1, 0x407efecc7eb5764fL    # 495.924925526463

    cmp-long p1, p1, p3

    if-nez p1, :cond_1f

    const/16 p1, 0xb

    .line 49
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1f
    const-wide p1, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    cmp-long p1, p1, p3

    if-nez p1, :cond_20

    const/16 p1, 0xc

    .line 50
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_20
    const-wide p1, -0x5b667a10b311df43L

    cmp-long p1, p1, p3

    if-nez p1, :cond_21

    const/16 p1, 0xd

    .line 51
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_21
    return-object v0
.end method

.method public getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonpath error, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    :goto_0
    return-void
.end method

.method public isRef()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 3
    aget-object v2, v2, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    const-class v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eq v2, v3, :cond_1

    const-class v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public patchAdd(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v0, p1

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 3
    aget-object v2, v4, v3

    .line 4
    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_1

    .line 6
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_1

    .line 7
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-virtual {v2, p0, v0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 9
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_3

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 14
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-static {v0, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-static {p1, p3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object p2, p1

    goto :goto_1

    .line 18
    :cond_4
    const-class p3, Ljava/util/Map;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported array put operation. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    .line 21
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz p3, :cond_7

    .line 22
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 23
    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_7
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz p3, :cond_8

    .line 25
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 26
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v5, p1

    move v3, v0

    .line 3
    :goto_0
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v7, v6

    if-ge v3, v7, :cond_9

    .line 4
    array-length v7, v6

    sub-int/2addr v7, v4

    if-ne v3, v7, :cond_1

    move-object v1, v5

    goto/16 :goto_2

    .line 5
    :cond_1
    aget-object v7, v6, v3

    .line 6
    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    if-ne v3, v6, :cond_7

    instance-of v6, v2, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v6, :cond_7

    instance-of v6, v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v6, :cond_7

    .line 7
    move-object v6, v2

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 8
    instance-of v8, v5, Ljava/util/List;

    if-eqz v8, :cond_5

    .line 9
    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 10
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-virtual {v7, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    instance-of v2, v1, Ljava/lang/Iterable;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v6, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 17
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v2

    invoke-interface {v2, p0, p1, v5, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return v4

    .line 19
    :cond_5
    instance-of v8, v5, Ljava/util/Map;

    if-eqz v8, :cond_7

    .line 20
    move-object v8, v7

    check-cast v8, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 21
    invoke-virtual {v8, p0, p1, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    return v0

    .line 22
    :cond_6
    instance-of v10, v9, Ljava/util/Map;

    if-eqz v10, :cond_7

    .line 23
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    invoke-interface {v6, p0, p1, v5, v9}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24
    invoke-virtual {v8, p0, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    return v4

    .line 25
    :cond_7
    invoke-interface {v7, p0, p1, v5}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    if-nez v1, :cond_a

    return v0

    .line 26
    :cond_a
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v3, :cond_f

    .line 27
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 28
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_e

    .line 29
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, p1

    if-le v3, v4, :cond_e

    .line 30
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget-object p1, p1, v3

    .line 31
    instance-of v3, p1, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    if-nez v3, :cond_b

    instance-of p1, p1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz p1, :cond_e

    .line 32
    :cond_b
    check-cast v1, Ljava/util/Collection;

    .line 33
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 34
    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v0, v4

    goto :goto_3

    :cond_d
    return v0

    .line 35
    :cond_e
    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 36
    :cond_f
    instance-of v0, v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v0, :cond_10

    .line 37
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 38
    :cond_10
    instance-of v0, v2, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v0, :cond_11

    .line 39
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 40
    invoke-virtual {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 41
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 1

    .line 1
    instance-of p1, p2, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 2
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    if-ltz p3, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    return p1

    .line 4
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    if-gez v0, :cond_2

    return p1

    .line 6
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported set operation."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 6
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_2

    :cond_3
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eqz p3, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto :goto_4

    :cond_6
    return v1

    :cond_7
    if-eqz p3, :cond_8

    return v2

    .line 13
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 8

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v2, p1

    move v1, p3

    move-object v3, v0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v1, v5, :cond_9

    .line 4
    aget-object v3, v4, v1

    .line 5
    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    .line 6
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    .line 7
    aget-object v4, v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 8
    :goto_1
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_5

    .line 9
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v4, :cond_2

    .line 10
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 12
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 14
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 15
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v4, v0

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_4

    .line 16
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v7, :cond_3

    .line 17
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_3
    return p3

    .line 18
    :cond_4
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_3

    .line 19
    :cond_5
    instance-of v4, v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v4, :cond_6

    .line 20
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    goto :goto_3

    :cond_6
    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_a

    .line 21
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_7

    .line 22
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 23
    invoke-virtual {v3, p0, v2, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 24
    :cond_7
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v5, :cond_a

    .line 25
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 26
    invoke-virtual {v3, p0, v2, v4}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_9
    move-object v2, v3

    :cond_a
    if-nez v2, :cond_b

    return p3

    .line 27
    :cond_b
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length p3, p1

    sub-int/2addr p3, v6

    aget-object p1, p1, p3

    .line 28
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz p3, :cond_c

    .line 29
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 30
    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6

    .line 31
    :cond_c
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz p3, :cond_d

    .line 32
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of p1, p2, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    check-cast p2, Ljava/util/List;

    if-ltz p3, :cond_0

    .line 3
    invoke-interface {p2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {p2, p1, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ltz p3, :cond_2

    if-ge p3, p1, :cond_3

    .line 8
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p1, :cond_3

    add-int/2addr p1, p3

    .line 10
    invoke-static {p2, p1, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return v0

    .line 11
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unsupported set operation."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .locals 8

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v1

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    const/4 v0, 0x0

    .line 7
    instance-of v2, p2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_4

    .line 8
    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_4
    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    if-eqz p5, :cond_6

    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object p4, p2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, p4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq p3, v0, :cond_6

    .line 11
    iget-object p3, p4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p5, p3, p4}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p5

    .line 12
    :cond_6
    invoke-virtual {p2, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size(Ljava/lang/Object;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
