.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.java"


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    new-instance v0, Lokio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lokio/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long v2, v0, p2

    .line 3
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 4
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 5
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-wide v5, p1, Lokio/Buffer;->size:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    .line 7
    iget v5, v4, Lokio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    sub-long/2addr v5, v0

    long-to-int v2, v5

    .line 8
    iget-object v3, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v4, Lokio/Segment;->data:[B

    iget v6, v4, Lokio/Segment;->limit:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 9
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 10
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v2

    goto :goto_1

    :cond_1
    return-wide p2
.end method
