.class public Le2/b0;
.super Lb2/c;
.source "StrUtil.java"


# direct methods
.method public static c0()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public static d0()Ljava/io/StringWriter;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    return-object v0
.end method

.method public static e0(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public static f0(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, [B

    invoke-static {p0, p1}, Le2/b0;->h0([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    instance-of v0, p0, [Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, [Ljava/lang/Byte;

    invoke-static {p0, p1}, Le2/b0;->i0([Ljava/lang/Byte;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 8
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0, p1}, Le2/b0;->g0(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    invoke-static {p0}, Le2/c;->s(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    invoke-static {p0}, Le2/c;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h0([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static i0([Ljava/lang/Byte;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0, p1}, Le2/b0;->h0([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Le2/g;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Le2/b0;->f0(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
