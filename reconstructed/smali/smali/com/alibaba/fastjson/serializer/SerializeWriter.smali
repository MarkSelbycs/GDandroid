.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static BUFFER_THRESHOLD:I

.field private static final VALUE_FALSE:[C

.field private static final VALUE_TRUE:[C

.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final nonDirectFeatures:I


# instance fields
.field public beanToArray:Z

.field public browserSecure:Z

.field public buf:[C

.field public count:I

.field public disableCircularReferenceDetect:Z

.field public features:I

.field public keySeperator:C

.field public maxBufSize:I

.field public notWriteDefaultValue:Z

.field public quoteFieldNames:Z

.field public sepcialBits:J

.field public sortField:Z

.field public useSingleQuotes:Z

.field public writeDirect:Z

.field public writeEnumUsingName:Z

.field public writeEnumUsingToString:Z

.field public writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    const-string v0, ":true"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_TRUE:[C

    const-string v0, ":false"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_FALSE:[C

    const/high16 v0, 0x20000

    .line 5
    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    :try_start_0
    const-string v0, "fastjson.serializer_buffer_threshold"

    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    mul-int/lit16 v0, v0, 0x400

    .line 9
    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 2
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-lez p2, :cond_0

    .line 19
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 8
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x800

    new-array p1, p1, [C

    .line 10
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 11
    :goto_0
    array-length p1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v1, p3, v0

    .line 12
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 2
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_0
    array-length v3, v2

    if-ge v3, v0, :cond_1

    .line 5
    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 7
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eq v0, v2, :cond_2

    .line 8
    array-length p1, v0

    sget v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt p1, v2, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    return v3
.end method

.method private encodeToUTF8Bytes()[B
    .locals 6

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 2
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_0
    array-length v3, v2

    if-ge v3, v0, :cond_1

    .line 5
    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 7
    new-array v4, v3, [B

    .line 8
    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v0, v2, :cond_2

    .line 9
    array-length v2, v0

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v2, v3, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    return-object v4
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 4
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/16 v7, 0x5c

    const/16 v8, 0x3a

    const/4 v9, 0x0

    const/16 v10, 0x27

    if-le v4, v6, :cond_8

    .line 5
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_7

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 7
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 8
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_0
    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_2

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 10
    array-length v11, v2

    if-ge v6, v11, :cond_1

    aget-byte v6, v2, v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v9

    :goto_1
    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3
    :goto_2
    if-ge v9, v3, :cond_5

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 13
    array-length v6, v2

    if-ge v4, v6, :cond_4

    aget-byte v6, v2, v4

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 15
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 18
    :cond_6
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 19
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_8
    if-nez v3, :cond_a

    .line 20
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x3

    .line 21
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_9

    add-int/lit8 v1, v1, 0x3

    .line 22
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 23
    :cond_9
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 24
    iput v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 25
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v1, v2

    return-void

    .line 26
    :cond_a
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v11, v6, v3

    .line 27
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v9, v3, v12, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 28
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v1, v6

    move v3, v9

    :goto_4
    if-ge v1, v11, :cond_f

    .line 29
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v12, v1

    .line 30
    array-length v14, v2

    if-ge v13, v14, :cond_e

    aget-byte v14, v2, v13

    if-eqz v14, :cond_e

    if-nez v3, :cond_c

    add-int/lit8 v4, v4, 0x3

    .line 31
    array-length v3, v12

    if-le v4, v3, :cond_b

    .line 32
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 33
    :cond_b
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 34
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v14, v1, 0x3

    sub-int v15, v11, v1

    sub-int/2addr v15, v5

    invoke-static {v3, v12, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v6

    .line 37
    aput-char v7, v1, v12

    add-int/lit8 v3, v12, 0x1

    .line 38
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v12, v12, v13

    aput-char v12, v1, v3

    add-int/lit8 v11, v11, 0x2

    .line 39
    iget v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v12, -0x2

    aput-char v10, v1, v12

    move v1, v3

    move v3, v5

    goto :goto_5

    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 40
    array-length v12, v12

    if-le v4, v12, :cond_d

    .line 41
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 42
    :cond_d
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 43
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v1, 0x1

    add-int/lit8 v15, v1, 0x2

    sub-int v9, v11, v1

    invoke-static {v12, v14, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v9, v1

    .line 45
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v1, v13

    aput-char v1, v9, v14

    add-int/lit8 v11, v11, 0x1

    move v1, v14

    :cond_e
    :goto_5
    add-int/2addr v1, v5

    const/4 v9, 0x0

    goto :goto_4

    .line 46
    :cond_f
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sub-int/2addr v4, v5

    aput-char v8, v1, v4

    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 9
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    sget v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v1, v2, :cond_1

    .line 4
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public computeFeatures()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 2
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 3
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 4
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 5
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 6
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v3

    :goto_5
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 7
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_6

    move v6, v2

    goto :goto_6

    :cond_6
    move v6, v3

    :goto_6
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 8
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_7

    move v6, v2

    goto :goto_7

    :cond_7
    move v6, v3

    :goto_7
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 9
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_8

    move v7, v2

    goto :goto_8

    :cond_8
    move v7, v3

    :goto_8
    iput-boolean v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v1, :cond_a

    .line 10
    sget v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    and-int/2addr v1, v0

    if-nez v1, :cond_a

    if-nez v5, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    move v1, v2

    goto :goto_9

    :cond_a
    move v1, v3

    :goto_9
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    if-eqz v4, :cond_b

    const/16 v1, 0x27

    goto :goto_a

    :cond_b
    const/16 v1, 0x22

    .line 11
    :goto_a
    iput-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 12
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    goto :goto_b

    :cond_c
    move v2, v3

    :goto_b
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v2, :cond_d

    const-wide v0, 0x50000304ffffffffL    # 2.3175490007226655E77

    goto :goto_c

    .line 13
    :cond_d
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    const-wide v0, 0x8004ffffffffL

    goto :goto_c

    :cond_e
    const-wide v0, 0x4ffffffffL

    :goto_c
    iput-wide v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    or-int/2addr p2, v0

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void
.end method

.method public expandCapacity(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialize exceeded MAX_OUTPUT_LENGTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimumCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 4
    :goto_1
    new-array p1, p1, [C

    .line 5
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    sget v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-ge v0, v1, :cond_4

    .line 7
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-eqz v1, :cond_3

    .line 8
    array-length v1, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10
    :cond_4
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public getMaxBufSize()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public setMaxBufSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writer not null"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toCharArray()[C
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v1, v0, [C

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [C

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char p1, p1

    aput-char p1, v0, v2

    .line 7
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 22
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 23
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    add-int v3, p2, v1

    .line 26
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 27
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    .line 29
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    if-gt p3, p2, :cond_1

    move v0, p3

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p3, p2

    .line 30
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 31
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[]"

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    :goto_0
    const/16 v5, 0x5d

    if-ge v3, v1, :cond_d

    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-nez v6, :cond_1

    move v11, v8

    goto :goto_4

    .line 39
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v2

    move v11, v10

    :goto_1
    if-ge v10, v9, :cond_5

    .line 40
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-lt v11, v12, :cond_3

    const/16 v12, 0x7e

    if-gt v11, v12, :cond_3

    if-eq v11, v7, :cond_3

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v8

    :goto_3
    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    const/16 v9, 0x2c

    const/16 v10, 0x5b

    if-eqz v11, :cond_9

    .line 41
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 42
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v0, v2

    .line 43
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 45
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_6
    if-nez v1, :cond_7

    const-string v1, "null"

    .line 46
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 47
    :cond_7
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 48
    :cond_8
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 49
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ne v3, v11, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 51
    :cond_a
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_b

    .line 52
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 53
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_b
    if-nez v3, :cond_c

    .line 54
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v10, v5, v4

    goto :goto_7

    .line 55
    :cond_c
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v9, v5, v4

    .line 56
    :goto_7
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, 0x1

    aput-char v7, v4, v8

    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v6, v2, v4, v8, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 58
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    .line 59
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v5, 0x1

    aput-char v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto/16 :goto_0

    .line 60
    :cond_d
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v4, 0x1

    aput-char v5, p1, v4

    .line 61
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 62
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 63
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public write([CII)V
    .locals 3

    if-ltz p2, :cond_3

    .line 8
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 14
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_1

    move v0, p3

    .line 18
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeByteArray([B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    return-void

    .line 3
    :cond_0
    array-length v2, v1

    .line 4
    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v3, :cond_1

    const/16 v4, 0x27

    goto :goto_0

    :cond_1
    const/16 v4, 0x22

    :goto_0
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    const-string v1, "\'\'"

    goto :goto_1

    :cond_2
    const-string v1, "\"\""

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 7
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v2, -0x1

    .line 8
    div-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    shl-int/2addr v7, v8

    .line 9
    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v9

    add-int/2addr v7, v8

    .line 10
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    const/16 v11, 0x3d

    const/4 v12, 0x0

    if-le v7, v10, :cond_9

    .line 11
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v10, :cond_8

    .line 12
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v7, v12

    :goto_2
    if-ge v7, v5, :cond_4

    add-int/lit8 v9, v7, 0x1

    .line 13
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    add-int/lit8 v9, v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    ushr-int/lit8 v10, v7, 0x12

    and-int/lit8 v10, v10, 0x3f

    .line 14
    aget-char v10, v3, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 15
    aget-char v10, v3, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 16
    aget-char v10, v3, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v7, v7, 0x3f

    .line 17
    aget-char v7, v3, v7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v7, v9

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v5

    if-lez v2, :cond_7

    .line 18
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v8, :cond_5

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v12, v1, 0x2

    :cond_5
    or-int v1, v5, v12

    shr-int/lit8 v5, v1, 0xc

    .line 19
    aget-char v5, v3, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    .line 20
    aget-char v5, v3, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-ne v2, v8, :cond_6

    and-int/lit8 v1, v1, 0x3f

    .line 21
    aget-char v1, v3, v1

    goto :goto_3

    :cond_6
    move v1, v11

    :goto_3
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 22
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 23
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 24
    :cond_8
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 25
    :cond_9
    iput v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 26
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v9, 0x1

    aput-char v4, v10, v9

    move v9, v12

    :goto_4
    if-ge v9, v5, :cond_a

    add-int/lit8 v10, v9, 0x1

    .line 27
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v14, v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v14, 0x1

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v9, v14

    .line 28
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v9, 0x12

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v3, v16

    aput-char v16, v14, v13

    add-int/lit8 v13, v15, 0x1

    ushr-int/lit8 v16, v9, 0xc

    and-int/lit8 v16, v16, 0x3f

    .line 29
    aget-char v16, v3, v16

    aput-char v16, v14, v15

    add-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v9, 0x6

    and-int/lit8 v16, v16, 0x3f

    .line 30
    aget-char v16, v3, v16

    aput-char v16, v14, v13

    add-int/lit8 v13, v15, 0x1

    and-int/lit8 v9, v9, 0x3f

    .line 31
    aget-char v9, v3, v9

    aput-char v9, v14, v15

    move v9, v10

    goto :goto_4

    :cond_a
    sub-int/2addr v2, v5

    if-lez v2, :cond_d

    .line 32
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v8, :cond_b

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v12, v1, 0x2

    :cond_b
    or-int v1, v5, v12

    .line 33
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v7, -0x5

    shr-int/lit8 v9, v1, 0xc

    aget-char v9, v3, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, -0x4

    ushr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 34
    aget-char v9, v3, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, -0x3

    if-ne v2, v8, :cond_c

    and-int/lit8 v1, v1, 0x3f

    .line 35
    aget-char v1, v3, v1

    goto :goto_5

    :cond_c
    move v1, v11

    :goto_5
    aput-char v1, v5, v6

    add-int/lit8 v1, v7, -0x2

    .line 36
    aput-char v11, v5, v1

    .line 37
    :cond_d
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v7, -0x1

    aput-char v4, v1, v7

    return-void
.end method

.method public writeDouble(DZ)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x18

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x44

    if-le v0, v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    if-eqz p3, :cond_2

    .line 9
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_2
    return-void

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result p1

    .line 12
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-eqz p3, :cond_4

    .line 13
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_4
    return-void

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 6
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x27

    goto :goto_1

    :cond_3
    const/16 p1, 0x22

    .line 7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    :goto_2
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 9

    if-nez p1, :cond_0

    const-string p1, "null:"

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    const/16 v0, 0x3a

    if-eqz p2, :cond_2

    .line 4
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_4

    .line 8
    :cond_2
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_4

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    move v3, v1

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_5

    .line 13
    iget-wide v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v4

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    :cond_5
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_7

    :cond_6
    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    move v2, p2

    :goto_3
    if-eqz v2, :cond_a

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_4

    .line 15
    :cond_a
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_4
    return-void
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 5
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    .line 6
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v5, 0x22

    aput-char v5, v4, v2

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2, v0, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 8
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 9
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, -0x2

    aput-char v5, p1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x3a

    .line 10
    aput-char v0, p1, v1

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p1, "\u0000"

    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 5

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_4

    .line 26
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p3, :cond_1

    neg-int v0, p3

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 28
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v2, v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 35
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 36
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 37
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 38
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 39
    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v4, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 40
    invoke-virtual {p2, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 41
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3a

    .line 42
    aput-char v0, p2, p1

    .line 43
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    return-void

    .line 44
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_4

    .line 47
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 48
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    neg-long v0, p3

    .line 49
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 50
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 51
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v2, v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 57
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 58
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 59
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 60
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 61
    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v4, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 62
    invoke-virtual {p2, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 63
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3a

    .line 64
    aput-char v0, p2, p1

    .line 65
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p4, p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    return-void

    .line 66
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_3

    .line 76
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 p1, 0x3a

    .line 83
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    .line 102
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, -0x64

    if-lt p1, p2, :cond_1

    const/16 p2, 0x64

    if-ge p1, p2, :cond_1

    .line 103
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 6

    .line 5
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eqz p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 10
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v4, v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 16
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    return-void

    .line 17
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 18
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 19
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 21
    iget-char v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v5, v2, v4

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    .line 22
    invoke-virtual {p2, v4, v3, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v2, p2, v0

    if-eqz p3, :cond_4

    .line 24
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_TRUE:[C

    add-int/lit8 p1, p1, 0x2

    invoke-static {p3, v4, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 25
    :cond_4
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_FALSE:[C

    add-int/lit8 p1, p1, 0x2

    const/4 v0, 0x6

    invoke-static {p3, v4, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-le v1, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 7
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 8
    invoke-virtual {p0, p3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v6

    add-int/lit8 p1, v6, 0x2

    add-int v7, p1, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x22

    .line 11
    aput-char v8, v3, v6

    .line 12
    invoke-virtual {p2, v5, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 13
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 14
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p2, v7, 0x1

    .line 15
    aput-char v4, p1, v7

    add-int/lit8 v0, p2, 0x1

    .line 16
    aput-char v8, p1, p2

    .line 17
    invoke-virtual {p3, v5, v2, p1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 18
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 p2, p2, -0x1

    aput-char v8, p1, p2

    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-nez v2, :cond_0

    add-int/lit8 v6, v3, 0x8

    add-int/2addr v4, v6

    const/4 v6, 0x4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, v3, v6

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v4, v7

    .line 4
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    const/16 v8, 0x3a

    const/4 v9, 0x0

    if-le v4, v7, :cond_2

    .line 5
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 7
    invoke-virtual {v0, v1, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 8
    invoke-virtual {v0, v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 10
    :cond_2
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v7, v10

    add-int/lit8 v11, v10, 0x2

    add-int v12, v11, v3

    const/4 v13, 0x1

    add-int/2addr v10, v13

    const/16 v14, 0x22

    .line 11
    aput-char v14, v7, v10

    .line 12
    invoke-virtual {v1, v9, v3, v7, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 13
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 14
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v1, v12

    add-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 15
    aput-char v8, v1, v12

    const/16 v7, 0x75

    if-nez v2, :cond_3

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x6e

    .line 16
    aput-char v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 17
    aput-char v7, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x6c

    .line 18
    aput-char v4, v1, v3

    .line 19
    aput-char v4, v1, v2

    return-void

    :cond_3
    add-int/lit8 v8, v3, 0x1

    .line 20
    aput-char v14, v1, v3

    add-int v3, v8, v6

    .line 21
    invoke-virtual {v2, v9, v6, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, -0x1

    move v12, v1

    move v15, v12

    move v6, v8

    move v10, v9

    move v11, v10

    :goto_1
    const/16 v5, 0x2029

    const/16 v9, 0x2028

    const/16 v14, 0x5c

    if-ge v6, v3, :cond_f

    .line 22
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v7, v7, v6

    const/16 v13, 0x5d

    if-lt v7, v13, :cond_7

    const/16 v13, 0x7f

    if-lt v7, v13, :cond_e

    if-eq v7, v9, :cond_4

    if-eq v7, v5, :cond_4

    const/16 v5, 0xa0

    if-ge v7, v5, :cond_e

    :cond_4
    if-ne v12, v1, :cond_5

    move v12, v6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, 0x4

    :cond_6
    move v15, v6

    :goto_2
    move v11, v7

    goto :goto_4

    :cond_7
    const/16 v5, 0x40

    if-ge v7, v5, :cond_8

    .line 23
    iget-wide v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v18, 0x1

    shl-long v18, v18, v7

    and-long v1, v1, v18

    const-wide/16 v18, 0x0

    cmp-long v1, v1, v18

    if-nez v1, :cond_9

    :cond_8
    if-ne v7, v14, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_d

    add-int/lit8 v10, v10, 0x1

    const/16 v1, 0x28

    if-eq v7, v1, :cond_b

    const/16 v1, 0x29

    if-eq v7, v1, :cond_b

    const/16 v1, 0x3c

    if-eq v7, v1, :cond_b

    const/16 v1, 0x3e

    if-eq v7, v1, :cond_b

    .line 24
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v1

    if-ge v7, v2, :cond_c

    aget-byte v1, v1, v7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    :cond_b
    add-int/lit8 v4, v4, 0x4

    :cond_c
    const/4 v1, -0x1

    if-ne v12, v1, :cond_6

    move v12, v6

    move v15, v12

    goto :goto_2

    :cond_d
    const/4 v1, -0x1

    :cond_e
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p3

    const/16 v7, 0x75

    const/4 v13, 0x1

    const/16 v14, 0x22

    goto :goto_1

    :cond_f
    if-lez v10, :cond_21

    add-int/2addr v4, v10

    .line 25
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_10

    .line 26
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 27
    :cond_10
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    if-ne v10, v1, :cond_16

    const/16 v2, 0x30

    const/16 v4, 0x32

    if-ne v11, v9, :cond_11

    add-int/lit8 v5, v15, 0x1

    add-int/lit8 v6, v15, 0x6

    sub-int/2addr v3, v15

    sub-int/2addr v3, v1

    .line 28
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v3, v15

    const/16 v6, 0x75

    .line 30
    aput-char v6, v3, v5

    add-int/2addr v5, v1

    .line 31
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    .line 32
    aput-char v2, v3, v5

    add-int/2addr v5, v1

    .line 33
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    const/16 v2, 0x38

    .line 34
    aput-char v2, v3, v5

    goto/16 :goto_c

    :cond_11
    if-ne v11, v5, :cond_12

    add-int/lit8 v5, v15, 0x1

    add-int/lit8 v6, v15, 0x6

    sub-int/2addr v3, v15

    sub-int/2addr v3, v1

    .line 35
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v3, v15

    const/16 v6, 0x75

    .line 37
    aput-char v6, v3, v5

    add-int/2addr v5, v1

    .line 38
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    .line 39
    aput-char v2, v3, v5

    add-int/2addr v5, v1

    .line 40
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    const/16 v1, 0x39

    .line 41
    aput-char v1, v3, v5

    goto/16 :goto_c

    :cond_12
    const/16 v1, 0x28

    if-eq v11, v1, :cond_15

    const/16 v1, 0x29

    if-eq v11, v1, :cond_15

    const/16 v1, 0x3c

    if-eq v11, v1, :cond_15

    const/16 v1, 0x3e

    if-ne v11, v1, :cond_13

    goto :goto_5

    .line 42
    :cond_13
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v1

    if-ge v11, v2, :cond_14

    aget-byte v1, v1, v11

    const/4 v2, 0x4

    if-ne v1, v2, :cond_14

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v2, v15, 0x6

    sub-int/2addr v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 43
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v2, v15

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x75

    .line 45
    aput-char v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 46
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v2, v3

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v5, v11, 0x8

    and-int/lit8 v5, v5, 0xf

    .line 47
    aget-char v5, v4, v5

    aput-char v5, v2, v1

    add-int/lit8 v1, v3, 0x1

    ushr-int/lit8 v5, v11, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 48
    aget-char v5, v4, v5

    aput-char v5, v2, v3

    and-int/lit8 v3, v11, 0xf

    .line 49
    aget-char v3, v4, v3

    aput-char v3, v2, v1

    goto/16 :goto_c

    :cond_14
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v2, v15, 0x2

    sub-int/2addr v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 50
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v2, v15

    .line 52
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v3, v11

    aput-char v3, v2, v1

    goto/16 :goto_c

    :cond_15
    :goto_5
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v2, v15, 0x6

    sub-int/2addr v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 53
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v2, v15

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x75

    .line 55
    aput-char v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 56
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v2, v3

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v5, v11, 0x8

    and-int/lit8 v5, v5, 0xf

    .line 57
    aget-char v5, v4, v5

    aput-char v5, v2, v1

    add-int/lit8 v1, v3, 0x1

    ushr-int/lit8 v5, v11, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 58
    aget-char v5, v4, v5

    aput-char v5, v2, v3

    and-int/lit8 v3, v11, 0xf

    .line 59
    aget-char v3, v4, v3

    aput-char v3, v2, v1

    goto/16 :goto_c

    :cond_16
    if-le v10, v1, :cond_21

    sub-int v1, v12, v8

    .line 60
    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    move-object/from16 v2, p3

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 62
    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v4, :cond_19

    const/16 v4, 0x28

    const/16 v6, 0x29

    const/16 v7, 0x3c

    if-eq v3, v4, :cond_17

    if-eq v3, v6, :cond_17

    const/16 v8, 0x3e

    if-eq v3, v7, :cond_18

    if-ne v3, v8, :cond_1a

    goto :goto_7

    :cond_17
    const/16 v8, 0x3e

    .line 63
    :cond_18
    :goto_7
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v14, v10, v12

    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0x75

    .line 64
    aput-char v13, v10, v11

    add-int/lit8 v11, v12, 0x1

    .line 65
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v13, v15

    aput-char v15, v10, v12

    add-int/lit8 v12, v11, 0x1

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit8 v15, v15, 0xf

    .line 66
    aget-char v15, v13, v15

    aput-char v15, v10, v11

    add-int/lit8 v11, v12, 0x1

    ushr-int/lit8 v15, v3, 0x4

    and-int/lit8 v15, v15, 0xf

    .line 67
    aget-char v15, v13, v15

    aput-char v15, v10, v12

    add-int/lit8 v12, v11, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 68
    aget-char v3, v13, v3

    aput-char v3, v10, v11

    const/16 v13, 0x75

    const/4 v15, 0x4

    goto/16 :goto_b

    :cond_19
    const/16 v4, 0x28

    const/16 v6, 0x29

    const/16 v7, 0x3c

    const/16 v8, 0x3e

    .line 69
    :cond_1a
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v11, v10

    if-ge v3, v11, :cond_1b

    aget-byte v11, v10, v3

    if-nez v11, :cond_1c

    :cond_1b
    const/16 v11, 0x2f

    if-ne v3, v11, :cond_1e

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 70
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 71
    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v12, 0x1

    aput-char v14, v11, v12

    .line 72
    aget-byte v10, v10, v3

    const/4 v15, 0x4

    if-ne v10, v15, :cond_1d

    add-int/lit8 v10, v13, 0x1

    const/16 v12, 0x75

    .line 73
    aput-char v12, v11, v13

    add-int/lit8 v12, v10, 0x1

    .line 74
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v3, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v16, v13, v16

    aput-char v16, v11, v10

    add-int/lit8 v10, v12, 0x1

    ushr-int/lit8 v16, v3, 0x8

    and-int/lit8 v16, v16, 0xf

    .line 75
    aget-char v16, v13, v16

    aput-char v16, v11, v12

    add-int/lit8 v12, v10, 0x1

    ushr-int/lit8 v16, v3, 0x4

    and-int/lit8 v16, v16, 0xf

    .line 76
    aget-char v16, v13, v16

    aput-char v16, v11, v10

    add-int/lit8 v10, v12, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 77
    aget-char v3, v13, v3

    aput-char v3, v11, v12

    goto :goto_8

    :cond_1d
    add-int/lit8 v10, v13, 0x1

    .line 78
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v12, v3

    aput-char v3, v11, v13

    :goto_8
    move v12, v10

    :goto_9
    const/16 v13, 0x75

    goto :goto_b

    :cond_1e
    const/4 v15, 0x4

    if-eq v3, v9, :cond_20

    if-ne v3, v5, :cond_1f

    goto :goto_a

    .line 79
    :cond_1f
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v3, v10, v12

    move v12, v11

    goto :goto_9

    .line 80
    :cond_20
    :goto_a
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v14, v10, v12

    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0x75

    .line 81
    aput-char v13, v10, v11

    add-int/lit8 v11, v12, 0x1

    .line 82
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v17, v16, v17

    aput-char v17, v10, v12

    add-int/lit8 v12, v11, 0x1

    ushr-int/lit8 v17, v3, 0x8

    and-int/lit8 v17, v17, 0xf

    .line 83
    aget-char v17, v16, v17

    aput-char v17, v10, v11

    add-int/lit8 v11, v12, 0x1

    ushr-int/lit8 v17, v3, 0x4

    and-int/lit8 v17, v17, 0xf

    .line 84
    aget-char v17, v16, v17

    aput-char v17, v10, v12

    add-int/lit8 v12, v11, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 85
    aget-char v3, v16, v3

    aput-char v3, v10, v11

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 86
    :cond_21
    :goto_c
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x22

    aput-char v3, v1, v2

    return-void
.end method

.method public writeFloat(FZ)V
    .locals 3

    cmpl-float v0, p1, p1

    if-nez v0, :cond_4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0xf

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x46

    if-le v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    if-eqz p2, :cond_2

    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_2
    return-void

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p1

    .line 10
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-eqz p2, :cond_5

    .line 11
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :cond_5
    :goto_2
    return-void
.end method

.method public writeHex([B)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x78

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v1, 0x27

    aput-char v1, v0, v2

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 7
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 8
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v7, 0x30

    const/16 v8, 0x37

    const/16 v9, 0xa

    if-ge v3, v9, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    add-int/2addr v3, v10

    int-to-char v3, v3

    aput-char v3, v4, v5

    add-int/lit8 v3, v6, 0x1

    .line 9
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ge v2, v9, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    add-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v1, p1, v0

    return-void
.end method

.method public writeInt(I)V
    .locals 3

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    .line 2
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 3
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 7
    :cond_2
    new-array v1, v0, [C

    .line 8
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 11
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeLong(J)V
    .locals 6

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v3, 0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    const-wide v3, -0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    const-string p1, "\"-9223372036854775808\""

    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "-9223372036854775808"

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_4

    neg-long v3, p1

    .line 5
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_2

    :cond_4
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    .line 6
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v3

    if-eqz v0, :cond_5

    add-int/lit8 v1, v1, 0x2

    .line 7
    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    const/16 v5, 0x22

    if-le v1, v4, :cond_8

    .line 8
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_6

    .line 9
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 10
    :cond_6
    new-array v1, v3, [C

    .line 11
    invoke-static {p1, p2, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 13
    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 14
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 15
    :cond_7
    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    :goto_3
    return-void

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v0, v2

    add-int/lit8 v2, v1, -0x1

    .line 17
    invoke-static {p1, p2, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 18
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v5, p1, v2

    goto :goto_5

    .line 19
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 20
    :goto_5
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeLongAndChar(JC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method

.method public writeNull()V
    .locals 1

    const-string v0, "null"

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeNull(II)V
    .locals 2

    and-int v0, p1, p2

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v1, p1, v0

    if-eqz v1, :cond_1

    not-int v0, v0

    and-int/2addr p1, v0

    sget v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 7
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_2

    const-string p1, "[]"

    .line 8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_3

    const-string p1, ""

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_4

    const-string p1, "false"

    .line 12
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_5

    const/16 p1, 0x30

    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .line 2
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_0
    return-void
.end method

.method public writeString([C)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote([C)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_0
    return-void
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 5
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v14, 0x22

    const/16 v15, 0xc

    const/16 v12, 0x8

    const/16 v10, 0x75

    const/16 v13, 0x5c

    const/4 v11, 0x1

    if-le v4, v5, :cond_10

    .line 6
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_f

    .line 7
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 10
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_4

    .line 11
    :cond_3
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 12
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 13
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v6, v5, v16

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 14
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 15
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 16
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 17
    :cond_4
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eq v4, v12, :cond_7

    if-eq v4, v15, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0xd

    if-eq v4, v5, :cond_7

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    if-eq v4, v14, :cond_7

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_7

    if-ne v4, v13, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x20

    if-ge v4, v5, :cond_6

    .line 18
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 19
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 20
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 21
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 22
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v6, v5, v4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    add-int/2addr v4, v11

    .line 23
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_c

    .line 24
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 25
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 26
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 27
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 28
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 29
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 30
    :cond_7
    :goto_1
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 31
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 32
    :cond_8
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v6, v5

    if-ge v4, v6, :cond_9

    aget-byte v6, v5, v4

    if-nez v6, :cond_a

    :cond_9
    const/16 v6, 0x2f

    if-ne v4, v6, :cond_c

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 33
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 34
    :cond_a
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 35
    aget-byte v5, v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 36
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 37
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 38
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 39
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 40
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 41
    :cond_b
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 42
    :cond_c
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x3e

    goto/16 :goto_0

    .line 43
    :cond_d
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_e

    .line 44
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_e
    return-void

    .line 45
    :cond_f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 46
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    add-int v7, v6, v3

    .line 47
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v8, v5

    const/4 v5, 0x0

    .line 48
    invoke-virtual {v1, v5, v3, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 49
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 50
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    const/4 v8, -0x1

    if-eqz v3, :cond_20

    move v1, v6

    :goto_3
    if-ge v1, v7, :cond_16

    .line 51
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    if-eq v3, v14, :cond_14

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_14

    if-ne v3, v13, :cond_11

    goto :goto_5

    :cond_11
    if-eq v3, v12, :cond_14

    if-eq v3, v15, :cond_14

    const/16 v5, 0xa

    if-eq v3, v5, :cond_14

    const/16 v5, 0xd

    if-eq v3, v5, :cond_14

    const/16 v5, 0x9

    if-ne v3, v5, :cond_12

    goto :goto_5

    :cond_12
    const/16 v5, 0x20

    if-ge v3, v5, :cond_13

    :goto_4
    add-int/lit8 v4, v4, 0x5

    goto :goto_6

    :cond_13
    const/16 v5, 0x7f

    if-lt v3, v5, :cond_15

    goto :goto_4

    :cond_14
    :goto_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    move v8, v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 52
    :cond_16
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_17

    .line 53
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 54
    :cond_17
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_7
    if-lt v8, v6, :cond_1e

    .line 55
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v1, v8

    if-eq v3, v12, :cond_1c

    if-eq v3, v15, :cond_1c

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1c

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1c

    const/16 v4, 0x9

    if-ne v3, v4, :cond_18

    goto/16 :goto_a

    :cond_18
    if-eq v3, v14, :cond_1b

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1b

    if-ne v3, v13, :cond_19

    goto :goto_9

    :cond_19
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1a

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x6

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    .line 56
    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 58
    aput-char v10, v1, v4

    add-int/lit8 v4, v8, 0x2

    const/16 v5, 0x30

    .line 59
    aput-char v5, v1, v4

    add-int/lit8 v4, v8, 0x3

    .line 60
    aput-char v5, v1, v4

    add-int/lit8 v4, v8, 0x4

    .line 61
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v3, 0x2

    aget-char v9, v5, v3

    aput-char v9, v1, v4

    add-int/lit8 v4, v8, 0x5

    add-int/2addr v3, v11

    .line 62
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    :goto_8
    add-int/lit8 v7, v7, 0x5

    goto :goto_c

    :cond_1a
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1d

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x6

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    .line 63
    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 65
    aput-char v10, v1, v4

    add-int/lit8 v4, v8, 0x2

    .line 66
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v5, v9

    aput-char v9, v1, v4

    add-int/lit8 v4, v8, 0x3

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit8 v9, v9, 0xf

    .line 67
    aget-char v9, v5, v9

    aput-char v9, v1, v4

    add-int/lit8 v4, v8, 0x4

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    .line 68
    aget-char v9, v5, v9

    aput-char v9, v1, v4

    add-int/lit8 v4, v8, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 69
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    goto :goto_8

    :cond_1b
    :goto_9
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x2

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    .line 70
    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 72
    aput-char v3, v1, v4

    goto :goto_b

    :cond_1c
    :goto_a
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x2

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    .line 73
    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 75
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    :goto_b
    add-int/lit8 v7, v7, 0x1

    :cond_1d
    :goto_c
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_7

    :cond_1e
    if-eqz v2, :cond_1f

    .line 76
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    aput-char v14, v1, v4

    sub-int/2addr v3, v11

    .line 77
    aput-char v2, v1, v3

    goto :goto_d

    .line 78
    :cond_1f
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v11

    aput-char v14, v1, v2

    :goto_d
    return-void

    :cond_20
    move v12, v5

    move v15, v12

    move v3, v6

    move v5, v8

    move/from16 v19, v5

    :goto_e
    const/16 v14, 0x2028

    if-ge v3, v7, :cond_2c

    .line 79
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v3

    const/16 v11, 0x5d

    if-lt v10, v11, :cond_24

    const/16 v11, 0x7f

    if-lt v10, v11, :cond_2b

    if-eq v10, v14, :cond_21

    const/16 v14, 0x2029

    if-eq v10, v14, :cond_21

    const/16 v14, 0xa0

    if-ge v10, v14, :cond_2b

    :cond_21
    if-ne v5, v8, :cond_22

    move v5, v3

    :cond_22
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x4

    :cond_23
    move/from16 v19, v3

    :goto_f
    move v15, v10

    goto :goto_11

    :cond_24
    const/16 v11, 0x7f

    const/16 v14, 0x40

    if-ge v10, v14, :cond_25

    .line 80
    iget-wide v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v20, 0x1

    shl-long v20, v20, v10

    and-long v8, v8, v20

    const-wide/16 v20, 0x0

    cmp-long v8, v8, v20

    if-nez v8, :cond_26

    :cond_25
    if-ne v10, v13, :cond_27

    :cond_26
    const/4 v8, 0x1

    goto :goto_10

    :cond_27
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_2a

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x28

    if-eq v10, v8, :cond_28

    const/16 v8, 0x29

    if-eq v10, v8, :cond_28

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_28

    const/16 v8, 0x3e

    if-eq v10, v8, :cond_28

    .line 81
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v9, v8

    if-ge v10, v9, :cond_29

    aget-byte v8, v8, v10

    const/4 v9, 0x4

    if-ne v8, v9, :cond_29

    :cond_28
    add-int/lit8 v4, v4, 0x4

    :cond_29
    const/4 v8, -0x1

    if-ne v5, v8, :cond_23

    move v5, v3

    move/from16 v19, v5

    goto :goto_f

    :cond_2a
    const/4 v8, -0x1

    :cond_2b
    :goto_11
    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x28

    const/16 v10, 0x75

    const/4 v11, 0x1

    goto :goto_e

    :cond_2c
    if-lez v12, :cond_3e

    add-int/2addr v4, v12

    .line 82
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v4, v3, :cond_2d

    .line 83
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 84
    :cond_2d
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    if-ne v12, v3, :cond_33

    const/16 v1, 0x32

    if-ne v15, v14, :cond_2e

    add-int/lit8 v4, v19, 0x1

    add-int/lit8 v5, v19, 0x6

    sub-int v7, v7, v19

    sub-int/2addr v7, v3

    .line 85
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v5, v19

    const/16 v6, 0x75

    .line 87
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 88
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v6, 0x30

    .line 89
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 90
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v1, 0x38

    .line 91
    aput-char v1, v5, v4

    goto/16 :goto_1a

    :cond_2e
    const/16 v4, 0x2029

    if-ne v15, v4, :cond_2f

    add-int/lit8 v4, v19, 0x1

    add-int/lit8 v5, v19, 0x6

    sub-int v7, v7, v19

    sub-int/2addr v7, v3

    .line 92
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v5, v19

    const/16 v6, 0x75

    .line 94
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 95
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v6, 0x30

    .line 96
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 97
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v1, 0x39

    .line 98
    aput-char v1, v5, v4

    goto/16 :goto_1a

    :cond_2f
    const/16 v1, 0x28

    if-eq v15, v1, :cond_32

    const/16 v1, 0x29

    if-eq v15, v1, :cond_32

    const/16 v1, 0x3c

    if-eq v15, v1, :cond_32

    const/16 v1, 0x3e

    if-ne v15, v1, :cond_30

    goto :goto_12

    .line 99
    :cond_30
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v1

    if-ge v15, v3, :cond_31

    aget-byte v1, v1, v15

    const/4 v3, 0x4

    if-ne v1, v3, :cond_31

    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v3, v19, 0x6

    sub-int v7, v7, v19

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    .line 100
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    .line 102
    aput-char v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 103
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 104
    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 105
    aget-char v6, v5, v6

    aput-char v6, v3, v4

    and-int/lit8 v4, v15, 0xf

    .line 106
    aget-char v4, v5, v4

    aput-char v4, v3, v1

    goto/16 :goto_1a

    :cond_31
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v3, v19, 0x2

    sub-int v7, v7, v19

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    .line 107
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    .line 109
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v15

    aput-char v4, v3, v1

    goto/16 :goto_1a

    :cond_32
    :goto_12
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v3, v19, 0x6

    sub-int v7, v7, v19

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    .line 110
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v5, 0x75

    .line 112
    aput-char v5, v3, v1

    add-int/2addr v1, v4

    .line 113
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/2addr v1, v4

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 114
    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/2addr v1, v4

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 115
    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/2addr v1, v4

    and-int/lit8 v6, v15, 0xf

    .line 116
    aget-char v5, v5, v6

    aput-char v5, v3, v1

    goto/16 :goto_1a

    :cond_33
    move v4, v3

    if-le v12, v4, :cond_3e

    sub-int v3, v5, v6

    .line 117
    :goto_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 119
    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v6, :cond_36

    const/16 v6, 0x28

    const/16 v7, 0x29

    const/16 v8, 0x3c

    if-eq v4, v6, :cond_34

    if-eq v4, v7, :cond_34

    const/16 v9, 0x3e

    if-eq v4, v8, :cond_35

    if-ne v4, v9, :cond_37

    goto :goto_14

    :cond_34
    const/16 v9, 0x3e

    .line 120
    :cond_35
    :goto_14
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v5, 0x1

    aput-char v13, v10, v5

    add-int/lit8 v5, v11, 0x1

    const/16 v12, 0x75

    .line 121
    aput-char v12, v10, v11

    add-int/lit8 v11, v5, 0x1

    .line 122
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v4, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v10, v5

    add-int/lit8 v5, v11, 0x1

    ushr-int/lit8 v15, v4, 0x8

    and-int/lit8 v15, v15, 0xf

    .line 123
    aget-char v15, v12, v15

    aput-char v15, v10, v11

    add-int/lit8 v11, v5, 0x1

    ushr-int/lit8 v15, v4, 0x4

    and-int/lit8 v15, v15, 0xf

    .line 124
    aget-char v15, v12, v15

    aput-char v15, v10, v5

    add-int/lit8 v5, v11, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 125
    aget-char v4, v12, v4

    aput-char v4, v10, v11

    const/4 v10, 0x4

    const/16 v11, 0x2f

    :goto_15
    const/16 v16, 0x75

    goto/16 :goto_19

    :cond_36
    const/16 v6, 0x28

    const/16 v7, 0x29

    const/16 v8, 0x3c

    const/16 v9, 0x3e

    .line 126
    :cond_37
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v11, v10

    if-ge v4, v11, :cond_39

    aget-byte v11, v10, v4

    if-nez v11, :cond_38

    goto :goto_16

    :cond_38
    const/16 v11, 0x2f

    goto :goto_17

    :cond_39
    :goto_16
    const/16 v11, 0x2f

    if-ne v4, v11, :cond_3b

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 127
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 128
    :goto_17
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    aput-char v13, v12, v5

    .line 129
    aget-byte v5, v10, v4

    const/4 v10, 0x4

    if-ne v5, v10, :cond_3a

    add-int/lit8 v5, v15, 0x1

    const/16 v16, 0x75

    .line 130
    aput-char v16, v12, v15

    add-int/lit8 v15, v5, 0x1

    .line 131
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v4, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v17, v16, v17

    aput-char v17, v12, v5

    add-int/lit8 v5, v15, 0x1

    ushr-int/lit8 v17, v4, 0x8

    and-int/lit8 v17, v17, 0xf

    .line 132
    aget-char v17, v16, v17

    aput-char v17, v12, v15

    add-int/lit8 v15, v5, 0x1

    ushr-int/lit8 v17, v4, 0x4

    and-int/lit8 v17, v17, 0xf

    .line 133
    aget-char v17, v16, v17

    aput-char v17, v12, v5

    add-int/lit8 v5, v15, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 134
    aget-char v4, v16, v4

    aput-char v4, v12, v15

    goto :goto_15

    :cond_3a
    add-int/lit8 v5, v15, 0x1

    .line 135
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v16, v4

    aput-char v4, v12, v15

    goto :goto_15

    :cond_3b
    const/4 v10, 0x4

    if-eq v4, v14, :cond_3d

    const/16 v12, 0x2029

    if-ne v4, v12, :cond_3c

    goto :goto_18

    .line 136
    :cond_3c
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    aput-char v4, v12, v5

    move v5, v15

    goto :goto_15

    .line 137
    :cond_3d
    :goto_18
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    aput-char v13, v12, v5

    add-int/lit8 v5, v15, 0x1

    const/16 v16, 0x75

    .line 138
    aput-char v16, v12, v15

    add-int/lit8 v15, v5, 0x1

    .line 139
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v4, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v18, v17, v18

    aput-char v18, v12, v5

    add-int/lit8 v5, v15, 0x1

    ushr-int/lit8 v18, v4, 0x8

    and-int/lit8 v18, v18, 0xf

    .line 140
    aget-char v18, v17, v18

    aput-char v18, v12, v15

    add-int/lit8 v15, v5, 0x1

    ushr-int/lit8 v18, v4, 0x4

    and-int/lit8 v18, v18, 0xf

    .line 141
    aget-char v18, v17, v18

    aput-char v18, v12, v5

    add-int/lit8 v5, v15, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 142
    aget-char v4, v17, v4

    aput-char v4, v12, v15

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_3e
    :goto_1a
    if-eqz v2, :cond_3f

    .line 143
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    const/16 v5, 0x22

    aput-char v5, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 144
    aput-char v2, v1, v3

    goto :goto_1b

    :cond_3f
    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 145
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v4

    aput-char v5, v1, v2

    :goto_1b
    return-void
.end method

.method public writeStringWithDoubleQuote([CC)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_0
    return-void

    .line 148
    :cond_1
    array-length v3, v1

    .line 149
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 150
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v14, 0x22

    const/16 v15, 0xc

    const/16 v12, 0x8

    const/16 v10, 0x75

    const/16 v13, 0x5c

    const/4 v11, 0x1

    if-le v4, v5, :cond_10

    .line 151
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_f

    .line 152
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_d

    .line 154
    aget-char v4, v1, v3

    .line 155
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_4

    .line 156
    :cond_3
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 157
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 158
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v6, v5, v16

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 159
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 160
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 161
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 162
    :cond_4
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eq v4, v12, :cond_7

    if-eq v4, v15, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0xd

    if-eq v4, v5, :cond_7

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    if-eq v4, v14, :cond_7

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_7

    if-ne v4, v13, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x20

    if-ge v4, v5, :cond_6

    .line 163
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 164
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 165
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 166
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 167
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v6, v5, v4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    add-int/2addr v4, v11

    .line 168
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_c

    .line 169
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 170
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 171
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 172
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 173
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 174
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 175
    :cond_7
    :goto_1
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 176
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 177
    :cond_8
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v6, v5

    if-ge v4, v6, :cond_9

    aget-byte v6, v5, v4

    if-nez v6, :cond_a

    :cond_9
    const/16 v6, 0x2f

    if-ne v4, v6, :cond_c

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 178
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 179
    :cond_a
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 180
    aget-byte v5, v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 181
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 182
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 183
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 184
    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 185
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 186
    :cond_b
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 187
    :cond_c
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x3e

    goto/16 :goto_0

    .line 188
    :cond_d
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_e

    .line 189
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_e
    return-void

    .line 190
    :cond_f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 191
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v6

    .line 192
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v7, v5

    .line 193
    array-length v5, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 195
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_20

    move v1, v6

    :goto_3
    if-ge v1, v3, :cond_16

    .line 196
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v5, v5, v1

    if-eq v5, v14, :cond_14

    const/16 v8, 0x2f

    if-eq v5, v8, :cond_14

    if-ne v5, v13, :cond_11

    goto :goto_5

    :cond_11
    if-eq v5, v12, :cond_14

    if-eq v5, v15, :cond_14

    const/16 v8, 0xa

    if-eq v5, v8, :cond_14

    const/16 v8, 0xd

    if-eq v5, v8, :cond_14

    const/16 v8, 0x9

    if-ne v5, v8, :cond_12

    goto :goto_5

    :cond_12
    const/16 v8, 0x20

    if-ge v5, v8, :cond_13

    :goto_4
    add-int/lit8 v4, v4, 0x5

    goto :goto_6

    :cond_13
    const/16 v8, 0x7f

    if-lt v5, v8, :cond_15

    goto :goto_4

    :cond_14
    :goto_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    move v7, v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 197
    :cond_16
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_17

    .line 198
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 199
    :cond_17
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_7
    if-lt v7, v6, :cond_1e

    .line 200
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v1, v7

    if-eq v4, v12, :cond_1c

    if-eq v4, v15, :cond_1c

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1c

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x9

    if-ne v4, v5, :cond_18

    goto/16 :goto_a

    :cond_18
    if-eq v4, v14, :cond_1b

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1b

    if-ne v4, v13, :cond_19

    goto :goto_9

    :cond_19
    const/16 v5, 0x20

    if-ge v4, v5, :cond_1a

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x6

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    .line 201
    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 203
    aput-char v10, v1, v5

    add-int/lit8 v5, v7, 0x2

    const/16 v8, 0x30

    .line 204
    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x3

    .line 205
    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x4

    .line 206
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v9, v8, v4

    aput-char v9, v1, v5

    add-int/lit8 v5, v7, 0x5

    add-int/2addr v4, v11

    .line 207
    aget-char v4, v8, v4

    aput-char v4, v1, v5

    :goto_8
    add-int/lit8 v3, v3, 0x5

    goto :goto_c

    :cond_1a
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1d

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x6

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    .line 208
    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 210
    aput-char v10, v1, v5

    add-int/lit8 v5, v7, 0x2

    .line 211
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v4, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v8, v9

    aput-char v9, v1, v5

    add-int/lit8 v5, v7, 0x3

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit8 v9, v9, 0xf

    .line 212
    aget-char v9, v8, v9

    aput-char v9, v1, v5

    add-int/lit8 v5, v7, 0x4

    ushr-int/lit8 v9, v4, 0x4

    and-int/lit8 v9, v9, 0xf

    .line 213
    aget-char v9, v8, v9

    aput-char v9, v1, v5

    add-int/lit8 v5, v7, 0x5

    and-int/lit8 v4, v4, 0xf

    .line 214
    aget-char v4, v8, v4

    aput-char v4, v1, v5

    goto :goto_8

    :cond_1b
    :goto_9
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x2

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    .line 215
    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 217
    aput-char v4, v1, v5

    goto :goto_b

    :cond_1c
    :goto_a
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x2

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    .line 218
    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 220
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v8, v4

    aput-char v4, v1, v5

    :goto_b
    add-int/lit8 v3, v3, 0x1

    :cond_1d
    :goto_c
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_7

    :cond_1e
    if-eqz v2, :cond_1f

    .line 221
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    aput-char v14, v1, v4

    sub-int/2addr v3, v11

    .line 222
    aput-char v2, v1, v3

    goto :goto_d

    .line 223
    :cond_1f
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v11

    aput-char v14, v1, v2

    :goto_d
    return-void

    :cond_20
    move v5, v6

    move/from16 v19, v7

    move v12, v8

    move v15, v12

    move/from16 v8, v19

    :goto_e
    const/16 v14, 0x2028

    if-ge v5, v3, :cond_2c

    .line 224
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v5

    const/16 v11, 0x5d

    if-lt v10, v11, :cond_24

    const/16 v11, 0x7f

    if-lt v10, v11, :cond_23

    if-eq v10, v14, :cond_21

    const/16 v14, 0x2029

    if-eq v10, v14, :cond_21

    const/16 v14, 0xa0

    if-ge v10, v14, :cond_23

    :cond_21
    if-ne v8, v7, :cond_22

    move v8, v5

    :cond_22
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x4

    move/from16 v19, v5

    move v15, v10

    :cond_23
    move/from16 v23, v8

    move v8, v7

    move/from16 v7, v23

    goto :goto_11

    :cond_24
    const/16 v11, 0x7f

    const/16 v14, 0x40

    move/from16 v20, v8

    if-ge v10, v14, :cond_25

    .line 225
    iget-wide v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v21, 0x1

    shl-long v21, v21, v10

    and-long v7, v7, v21

    const-wide/16 v21, 0x0

    cmp-long v7, v7, v21

    if-nez v7, :cond_26

    :cond_25
    if-ne v10, v13, :cond_27

    :cond_26
    const/4 v7, 0x1

    goto :goto_f

    :cond_27
    const/4 v7, 0x0

    :goto_f
    if-eqz v7, :cond_2b

    add-int/lit8 v12, v12, 0x1

    if-eq v10, v9, :cond_28

    const/16 v7, 0x29

    if-eq v10, v7, :cond_28

    const/16 v7, 0x3c

    if-eq v10, v7, :cond_28

    const/16 v7, 0x3e

    if-eq v10, v7, :cond_28

    .line 226
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v8, v7

    if-ge v10, v8, :cond_29

    aget-byte v7, v7, v10

    const/4 v8, 0x4

    if-ne v7, v8, :cond_29

    :cond_28
    add-int/lit8 v4, v4, 0x4

    :cond_29
    move/from16 v7, v20

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2a

    move v7, v5

    move/from16 v19, v7

    goto :goto_10

    :cond_2a
    move/from16 v19, v5

    :goto_10
    move v15, v10

    goto :goto_11

    :cond_2b
    move/from16 v7, v20

    const/4 v8, -0x1

    :goto_11
    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x75

    const/4 v11, 0x1

    move/from16 v23, v8

    move v8, v7

    move/from16 v7, v23

    goto :goto_e

    :cond_2c
    move v7, v8

    if-lez v12, :cond_3e

    add-int/2addr v4, v12

    .line 227
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_2d

    .line 228
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 229
    :cond_2d
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x1

    if-ne v12, v4, :cond_33

    const/16 v1, 0x32

    if-ne v15, v14, :cond_2e

    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v6, v19, 0x6

    sub-int v3, v3, v19

    sub-int/2addr v3, v4

    .line 230
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v6, 0x75

    .line 232
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 233
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v6, 0x30

    .line 234
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 235
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v1, 0x38

    .line 236
    aput-char v1, v3, v5

    goto/16 :goto_1a

    :cond_2e
    const/16 v5, 0x2029

    if-ne v15, v5, :cond_2f

    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v6, v19, 0x6

    sub-int v3, v3, v19

    sub-int/2addr v3, v4

    .line 237
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v6, 0x75

    .line 239
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 240
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v6, 0x30

    .line 241
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 242
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v1, 0x39

    .line 243
    aput-char v1, v3, v5

    goto/16 :goto_1a

    :cond_2f
    if-eq v15, v9, :cond_32

    const/16 v1, 0x29

    if-eq v15, v1, :cond_32

    const/16 v1, 0x3c

    if-eq v15, v1, :cond_32

    const/16 v1, 0x3e

    if-ne v15, v1, :cond_30

    goto :goto_12

    .line 244
    :cond_30
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v1

    if-ge v15, v4, :cond_31

    aget-byte v1, v1, v15

    const/4 v4, 0x4

    if-ne v1, v4, :cond_31

    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v4, v19, 0x6

    sub-int v3, v3, v19

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 245
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    .line 247
    aput-char v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 248
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 249
    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 250
    aget-char v6, v5, v6

    aput-char v6, v3, v4

    and-int/lit8 v4, v15, 0xf

    .line 251
    aget-char v4, v5, v4

    aput-char v4, v3, v1

    goto/16 :goto_1a

    :cond_31
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v4, v19, 0x2

    sub-int v3, v3, v19

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 252
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    .line 254
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v15

    aput-char v4, v3, v1

    goto/16 :goto_1a

    :cond_32
    :goto_12
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v4, v19, 0x6

    sub-int v3, v3, v19

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 255
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v1, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v4, 0x75

    .line 257
    aput-char v4, v3, v1

    add-int/2addr v1, v5

    .line 258
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v4, v6

    aput-char v6, v3, v1

    add-int/2addr v1, v5

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 259
    aget-char v6, v4, v6

    aput-char v6, v3, v1

    add-int/2addr v1, v5

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 260
    aget-char v6, v4, v6

    aput-char v6, v3, v1

    add-int/2addr v1, v5

    and-int/lit8 v6, v15, 0xf

    .line 261
    aget-char v4, v4, v6

    aput-char v4, v3, v1

    goto/16 :goto_1a

    :cond_33
    move v5, v4

    if-le v12, v5, :cond_3e

    sub-int v8, v7, v6

    .line 262
    :goto_13
    array-length v3, v1

    if-ge v8, v3, :cond_3e

    .line 263
    aget-char v3, v1, v8

    .line 264
    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v4, :cond_36

    const/16 v4, 0x29

    const/16 v5, 0x3c

    if-eq v3, v9, :cond_34

    if-eq v3, v4, :cond_34

    const/16 v6, 0x3e

    if-eq v3, v5, :cond_35

    if-ne v3, v6, :cond_37

    goto :goto_14

    :cond_34
    const/16 v6, 0x3e

    .line 265
    :cond_35
    :goto_14
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v7, 0x1

    aput-char v13, v10, v7

    add-int/lit8 v7, v11, 0x1

    const/16 v12, 0x75

    .line 266
    aput-char v12, v10, v11

    add-int/lit8 v11, v7, 0x1

    .line 267
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v10, v7

    add-int/lit8 v7, v11, 0x1

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit8 v15, v15, 0xf

    .line 268
    aget-char v15, v12, v15

    aput-char v15, v10, v11

    add-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v15, v3, 0x4

    and-int/lit8 v15, v15, 0xf

    .line 269
    aget-char v15, v12, v15

    aput-char v15, v10, v7

    add-int/lit8 v7, v11, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 270
    aget-char v3, v12, v3

    aput-char v3, v10, v11

    const/4 v10, 0x4

    const/16 v11, 0x2f

    :goto_15
    const/16 v16, 0x75

    goto/16 :goto_19

    :cond_36
    const/16 v4, 0x29

    const/16 v5, 0x3c

    const/16 v6, 0x3e

    .line 271
    :cond_37
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v11, v10

    if-ge v3, v11, :cond_39

    aget-byte v11, v10, v3

    if-nez v11, :cond_38

    goto :goto_16

    :cond_38
    const/16 v11, 0x2f

    goto :goto_17

    :cond_39
    :goto_16
    const/16 v11, 0x2f

    if-ne v3, v11, :cond_3b

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 272
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 273
    :goto_17
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v7, 0x1

    aput-char v13, v12, v7

    .line 274
    aget-byte v7, v10, v3

    const/4 v10, 0x4

    if-ne v7, v10, :cond_3a

    add-int/lit8 v7, v15, 0x1

    const/16 v16, 0x75

    .line 275
    aput-char v16, v12, v15

    add-int/lit8 v15, v7, 0x1

    .line 276
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v17, v16, v17

    aput-char v17, v12, v7

    add-int/lit8 v7, v15, 0x1

    ushr-int/lit8 v17, v3, 0x8

    and-int/lit8 v17, v17, 0xf

    .line 277
    aget-char v17, v16, v17

    aput-char v17, v12, v15

    add-int/lit8 v15, v7, 0x1

    ushr-int/lit8 v17, v3, 0x4

    and-int/lit8 v17, v17, 0xf

    .line 278
    aget-char v17, v16, v17

    aput-char v17, v12, v7

    add-int/lit8 v7, v15, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 279
    aget-char v3, v16, v3

    aput-char v3, v12, v15

    goto :goto_15

    :cond_3a
    add-int/lit8 v7, v15, 0x1

    .line 280
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v16, v3

    aput-char v3, v12, v15

    goto :goto_15

    :cond_3b
    const/4 v10, 0x4

    if-eq v3, v14, :cond_3d

    const/16 v12, 0x2029

    if-ne v3, v12, :cond_3c

    goto :goto_18

    .line 281
    :cond_3c
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v7, 0x1

    aput-char v3, v12, v7

    move v7, v15

    goto :goto_15

    .line 282
    :cond_3d
    :goto_18
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v7, 0x1

    aput-char v13, v12, v7

    add-int/lit8 v7, v15, 0x1

    const/16 v16, 0x75

    .line 283
    aput-char v16, v12, v15

    add-int/lit8 v15, v7, 0x1

    .line 284
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v3, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v18, v17, v18

    aput-char v18, v12, v7

    add-int/lit8 v7, v15, 0x1

    ushr-int/lit8 v18, v3, 0x8

    and-int/lit8 v18, v18, 0xf

    .line 285
    aget-char v18, v17, v18

    aput-char v18, v12, v15

    add-int/lit8 v15, v7, 0x1

    ushr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    .line 286
    aget-char v18, v17, v18

    aput-char v18, v12, v7

    add-int/lit8 v7, v15, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 287
    aget-char v3, v17, v3

    aput-char v3, v12, v15

    :goto_19
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_13

    :cond_3e
    :goto_1a
    if-eqz v2, :cond_3f

    .line 288
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    const/16 v5, 0x22

    aput-char v5, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 289
    aput-char v2, v1, v3

    goto :goto_1b

    :cond_3f
    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 290
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v4

    aput-char v5, v1, v2

    :goto_1b
    return-void
.end method

.method public writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le p1, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 7
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 8
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_6

    .line 9
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v7, :cond_3

    if-ne v1, v4, :cond_2

    .line 13
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 14
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 17
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 19
    :cond_5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 20
    :cond_6
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int v9, v8, v1

    .line 21
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v10, v3

    .line 22
    invoke-virtual {p1, v0, v1, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v1, v0

    move v3, v8

    :goto_3
    if-ge v3, v9, :cond_9

    .line 24
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v3

    if-le v10, v5, :cond_7

    if-eq v10, v6, :cond_7

    if-eq v10, v7, :cond_7

    if-ne v10, v4, :cond_8

    .line 25
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 26
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p1, v3

    move v1, v10

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v2, v0

    .line 27
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_a

    .line 28
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 29
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    sub-int/2addr v9, p1

    sub-int/2addr v9, v2

    invoke-static {v0, v3, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 32
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v1

    aput-char p1, v0, v3

    goto :goto_5

    :cond_b
    if-le v0, v2, :cond_e

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v10, p1, 0x2

    sub-int v11, v9, p1

    sub-int/2addr v11, v2

    invoke-static {v0, v3, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 35
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v1

    aput-char p1, v0, v3

    add-int/2addr v9, v2

    add-int/lit8 v3, v3, -0x2

    :goto_4
    if-lt v3, v8, :cond_e

    .line 36
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char p1, p1, v3

    if-le p1, v5, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v7, :cond_c

    if-ne p1, v4, :cond_d

    .line 37
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 38
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v10, v3, 0x2

    sub-int v11, v9, v3

    sub-int/2addr v11, v2

    invoke-static {v0, v1, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v3

    .line 41
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, v10, p1

    aput-char p1, v0, v1

    add-int/lit8 v9, v9, 0x1

    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 42
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v2

    aput-char v7, p1, v0

    return-void
.end method

.method public writeStringWithSingleQuote([C)V
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 43
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    .line 44
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le p1, v2, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 47
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 48
    :cond_1
    array-length v1, p1

    .line 49
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 50
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_6

    .line 51
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_5

    .line 52
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 53
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 54
    aget-char v1, p1, v0

    if-le v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v7, :cond_3

    if-ne v1, v4, :cond_2

    .line 55
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 56
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 59
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 61
    :cond_5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 62
    :cond_6
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v1, v8

    .line 63
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v9, v3

    .line 64
    array-length v3, p1

    invoke-static {p1, v0, v9, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v3, v0

    move v9, v8

    :goto_3
    if-ge v9, v1, :cond_9

    .line 66
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v9

    if-le v10, v5, :cond_7

    if-eq v10, v6, :cond_7

    if-eq v10, v7, :cond_7

    if-ne v10, v4, :cond_8

    .line 67
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 68
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p1, v9

    move v3, v10

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v2, v0

    .line 69
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v2, v9, :cond_a

    .line 70
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 71
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 72
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p1, 0x2

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    invoke-static {v0, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 74
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v3

    aput-char p1, v0, v4

    goto :goto_5

    :cond_b
    if-le v0, v2, :cond_e

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, p1, 0x2

    sub-int v11, v1, p1

    sub-int/2addr v11, v2

    invoke-static {v0, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 77
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v3

    aput-char p1, v0, v9

    add-int/2addr v1, v2

    add-int/lit8 v9, v9, -0x2

    :goto_4
    if-lt v9, v8, :cond_e

    .line 78
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char p1, p1, v9

    if-le p1, v5, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v7, :cond_c

    if-ne p1, v4, :cond_d

    .line 79
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 80
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v10, v9, 0x2

    sub-int v11, v1, v9

    sub-int/2addr v11, v2

    invoke-static {v0, v3, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v9

    .line 83
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, v10, p1

    aput-char p1, v0, v3

    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 84
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v2

    aput-char v7, p1, v0

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writer not null"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 6
    array-length p1, p2

    return p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writer not null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
