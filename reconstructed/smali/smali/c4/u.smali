.class public final Lc4/u;
.super Lc4/z;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/u$a;,
        Lc4/u$b;
    }
.end annotation


# static fields
.field public static final f:Lc4/t;

.field public static final g:Lc4/t;

.field public static final h:Lc4/t;

.field public static final i:Lc4/t;

.field public static final j:Lc4/t;

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B


# instance fields
.field public final a:Lokio/ByteString;

.field public final b:Lc4/t;

.field public final c:Lc4/t;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/u$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    sput-object v0, Lc4/u;->f:Lc4/t;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    sput-object v0, Lc4/u;->g:Lc4/t;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    sput-object v0, Lc4/u;->h:Lc4/t;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    sput-object v0, Lc4/u;->i:Lc4/t;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    sput-object v0, Lc4/u;->j:Lc4/t;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_0

    sput-object v1, Lc4/u;->k:[B

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_1

    sput-object v1, Lc4/u;->l:[B

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_2

    sput-object v0, Lc4/u;->m:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lokio/ByteString;Lc4/t;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lc4/t;",
            "Ljava/util/List<",
            "Lc4/u$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc4/z;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lc4/u;->e:J

    .line 3
    iput-object p1, p0, Lc4/u;->a:Lokio/ByteString;

    .line 4
    iput-object p2, p0, Lc4/u;->b:Lc4/t;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object p1

    iput-object p1, p0, Lc4/u;->c:Lc4/t;

    .line 6
    invoke-static {p3}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc4/u;->d:Ljava/util/List;

    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lc4/u;->e:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lc4/u;->g(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lc4/u;->e:J

    return-wide v0
.end method

.method public b()Lc4/t;
    .locals 1

    iget-object v0, p0, Lc4/u;->c:Lc4/t;

    return-object v0
.end method

.method public final g(Lokio/BufferedSink;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lc4/u;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_6

    .line 3
    iget-object v6, p0, Lc4/u;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc4/u$b;

    .line 4
    invoke-static {v6}, Lc4/u$b;->a(Lc4/u$b;)Lc4/q;

    move-result-object v7

    .line 5
    invoke-static {v6}, Lc4/u$b;->b(Lc4/u$b;)Lc4/z;

    move-result-object v6

    .line 6
    sget-object v8, Lc4/u;->m:[B

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 7
    iget-object v8, p0, Lc4/u;->a:Lokio/ByteString;

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 8
    sget-object v8, Lc4/u;->l:[B

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Lc4/q;->g()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    .line 10
    invoke-virtual {v7, v9}, Lc4/q;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    sget-object v11, Lc4/u;->k:[B

    .line 11
    invoke-interface {v10, v11}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v10

    .line 12
    invoke-virtual {v7, v9}, Lc4/q;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    sget-object v11, Lc4/u;->l:[B

    .line 13
    invoke-interface {v10, v11}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v6}, Lc4/z;->b()Lc4/t;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 15
    invoke-interface {p1, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 16
    invoke-virtual {v7}, Lc4/t;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    sget-object v8, Lc4/u;->l:[B

    .line 17
    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 18
    :cond_2
    invoke-virtual {v6}, Lc4/z;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 19
    invoke-interface {p1, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 20
    invoke-interface {v9, v7, v8}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lc4/u;->l:[B

    .line 21
    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 22
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    return-wide v9

    .line 23
    :cond_4
    :goto_3
    sget-object v9, Lc4/u;->l:[B

    invoke-interface {p1, v9}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 24
    :cond_5
    invoke-virtual {v6, p1}, Lc4/z;->writeTo(Lokio/BufferedSink;)V

    .line 25
    :goto_4
    invoke-interface {p1, v9}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 26
    :cond_6
    sget-object v1, Lc4/u;->m:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 27
    iget-object v2, p0, Lc4/u;->a:Lokio/ByteString;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 28
    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 29
    sget-object v1, Lc4/u;->l:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_7

    .line 30
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide p1

    add-long/2addr v3, p1

    .line 31
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    :cond_7
    return-wide v3
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc4/u;->g(Lokio/BufferedSink;Z)J

    return-void
.end method
