.class Lcom/alibaba/fastjson/JSONPath$WildCardSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildCardSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

.field public static final instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

.field public static final instance_deep_objectOnly:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;


# instance fields
.field private deep:Z

.field private objectOnly:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    invoke-direct {v0, v2, v2}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep_objectOnly:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    .line 3
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->objectOnly:Z

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->objectOnly:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->deepGetObjects(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    .line 8
    :goto_0
    iput-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 9
    :cond_1
    instance-of p1, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_2

    .line 10
    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->values()Ljava/util/Collection;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 12
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 13
    iput-object p2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 14
    :cond_2
    instance-of p1, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_3

    .line 15
    iput-object p2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 16
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "TODO"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
