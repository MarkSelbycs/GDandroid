.class public Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;
.super Lorg/springframework/web/servlet/view/AbstractView;
.source "FastJsonJsonView.java"


# static fields
.field private static final CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/json;charset=UTF-8"

.field public static final DEFAULT_JSONP_CONTENT_TYPE:Ljava/lang/String; = "application/javascript"


# instance fields
.field public charset:Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private disableCaching:Z

.field private extractValueFromSingleKeyModel:Z

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field public features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jsonpParameterNames:[Ljava/lang/String;

.field private renderedAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateContentLength:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "[0-9A-Za-z_\\.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/springframework/web/servlet/view/AbstractView;-><init>()V

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 3
    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 4
    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    .line 6
    iput-boolean v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    .line 7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    .line 8
    new-instance v1, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const-string v1, "jsonp"

    const-string v2, "callback"

    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    const-string v1, "application/json;charset=UTF-8"

    .line 10
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setContentType(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setExposePathVariables(Z)V

    return-void
.end method

.method private getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->logger:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring invalid jsonp parameter value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public filterModel(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    invoke-static {v1}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/springframework/validation/BindingResult;

    if-nez v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method public isExtractValueFromSingleKeyModel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    return v0
.end method

.method public prepareResponse(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    if-eqz p1, :cond_0

    const-string p1, "Pragma"

    const-string v0, "no-cache"

    .line 4
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Cache-Control"

    const-string v0, "no-cache, no-store, max-age=0"

    .line 5
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    const-string p1, "Expires"

    .line 6
    invoke-interface {p2, p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/servlet/http/HttpServletRequest;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filterModel(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/JSONPObject;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/JSONPObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONPObject;->addParameter(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 5
    :goto_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 7
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 8
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v4

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 9
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v5

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 10
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 11
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    move-object v1, p1

    .line 12
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/JSON;->writeJSONStringWithFastJsonConfig(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p2

    .line 13
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 15
    :cond_1
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 18
    invoke-virtual {p2}, Ljavax/servlet/ServletOutputStream;->flush()V

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setDisableCaching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    return-void
.end method

.method public setExtractValueFromSingleKeyModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    return-void
.end method

.method public setJsonpParameterNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsonpParameterName cannot be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    return-void
.end method

.method public setRenderedAttributes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    return-void
.end method

.method public setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "application/javascript"

    .line 2
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/springframework/web/servlet/view/AbstractView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    return-void
.end method

.method public varargs setSerializerFeature([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public setUpdateContentLength(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    return-void
.end method
