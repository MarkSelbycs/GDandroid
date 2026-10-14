.class public Lg4/k;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field public final a:Lokio/InflaterSource;

.field public b:I

.field public final c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg4/k$a;

    invoke-direct {v0, p0, p1}, Lg4/k$a;-><init>(Lg4/k;Lokio/Source;)V

    .line 3
    new-instance p1, Lg4/k$b;

    invoke-direct {p1, p0}, Lg4/k$b;-><init>(Lg4/k;)V

    .line 4
    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lg4/k;->a:Lokio/InflaterSource;

    .line 5
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lg4/k;->c:Lokio/BufferedSource;

    return-void
.end method

.method public static synthetic a(Lg4/k;)I
    .locals 0

    iget p0, p0, Lg4/k;->b:I

    return p0
.end method

.method public static synthetic b(Lg4/k;I)I
    .locals 0

    iput p1, p0, Lg4/k;->b:I

    return p1
.end method


# virtual methods
.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg4/k;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lg4/k;->b:I

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg4/k;->a:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->refill()Z

    .line 3
    iget v0, p0, Lg4/k;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lg4/k;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/k;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 2
    iget-object v1, p0, Lg4/k;->c:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lg4/k;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lg4/k;->b:I

    .line 2
    iget-object p1, p0, Lg4/k;->c:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    if-ltz p1, :cond_3

    const/16 v0, 0x400

    if-gt p1, v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lg4/k;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lg4/k;->e()Lokio/ByteString;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    new-instance v4, Lg4/f;

    invoke-direct {v4, v2, v3}, Lg4/f;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "name.size == 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lg4/k;->d()V

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfPairs > 1024: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfPairs < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
