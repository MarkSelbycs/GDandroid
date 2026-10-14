.class public final Lg4/o$a;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lg4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lokio/BufferedSource;

.field public final b:Z

.field public final c:Lg4/k;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    .line 3
    new-instance v0, Lg4/k;

    invoke-direct {v0, p1}, Lg4/k;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lg4/o$a;->c:Lg4/k;

    .line 4
    iput-boolean p2, p0, Lg4/o$a;->b:Z

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ld4/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public N()V
    .locals 0

    return-void
.end method

.method public W(Lg4/b$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 2
    iget-object v2, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    if-eqz v3, :cond_2

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    int-to-long v0, v2

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return v4

    .line 4
    :pswitch_1
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->o(Lg4/b$a;II)V

    return v4

    .line 5
    :pswitch_2
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->f(Lg4/b$a;II)V

    return v4

    .line 6
    :pswitch_3
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->e(Lg4/b$a;II)V

    return v4

    .line 7
    :pswitch_4
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->h(Lg4/b$a;II)V

    return v4

    .line 8
    :pswitch_5
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->j(Lg4/b$a;II)V

    return v4

    .line 9
    :pswitch_6
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->i(Lg4/b$a;II)V

    return v4

    .line 10
    :pswitch_7
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->l(Lg4/b$a;II)V

    return v4

    .line 11
    :pswitch_8
    invoke-virtual {p0, p1, v5, v2}, Lg4/o$a;->n(Lg4/b$a;II)V

    return v4

    .line 12
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version != 3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_3

    move v0, v4

    .line 13
    :cond_3
    iget-object v3, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {p1, v0, v1, v3, v2}, Lg4/b$a;->j(ZILokio/BufferedSource;I)V

    return v4

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg4/o$a;->c:Lg4/k;

    invoke-virtual {v0}, Lg4/k;->c()V

    return-void
.end method

.method public final e(Lg4/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 1
    iget-object p3, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    .line 2
    iget-object v1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 3
    invoke-static {v1}, Lg4/a;->f(I)Lg4/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, p3, v2, p2}, Lg4/b$a;->h(ILg4/a;Lokio/ByteString;)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final f(Lg4/b$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    .line 2
    iget-object p2, p0, Lg4/o$a;->c:Lg4/k;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p2, p3}, Lg4/k;->f(I)Ljava/util/List;

    move-result-object v6

    .line 3
    sget-object v7, Lg4/g;->c:Lg4/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lg4/b$a;->m(ZZIILjava/util/List;Lg4/g;)V

    return-void
.end method

.method public final h(Lg4/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 1
    iget-object p3, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    .line 2
    iget-boolean v1, p0, Lg4/o$a;->b:Z

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    .line 3
    :goto_1
    invoke-interface {p1, v0, p3, p2}, Lg4/b$a;->g(ZII)V

    return-void

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_PING length: %d != 4"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final i(Lg4/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 1
    iget-object p3, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    .line 2
    iget-object v1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 3
    invoke-static {v1}, Lg4/a;->e(I)Lg4/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, p3, v2}, Lg4/b$a;->a(ILg4/a;)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final j(Lg4/b$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 2
    new-instance p3, Lg4/n;

    invoke-direct {p3}, Lg4/n;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v4, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 4
    iget-object v5, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 5
    invoke-virtual {p3, v4, v6, v5}, Lg4/n;->l(III)Lg4/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    move v2, v3

    .line 6
    :cond_1
    invoke-interface {p1, v2, p3}, Lg4/b$a;->k(ZLg4/n;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final l(Lg4/b$a;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 2
    iget-object v0, p0, Lg4/o$a;->c:Lg4/k;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v0, p3}, Lg4/k;->f(I)Ljava/util/List;

    move-result-object v7

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move v4, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v4, p2

    :goto_0
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 3
    sget-object v8, Lg4/g;->b:Lg4/g;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lg4/b$a;->m(ZZIILjava/util/List;Lg4/g;)V

    return-void
.end method

.method public final n(Lg4/b$a;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 2
    iget-object v1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    .line 3
    iget-object v0, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    .line 4
    iget-object v0, p0, Lg4/o$a;->c:Lg4/k;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {v0, p3}, Lg4/k;->f(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 5
    :goto_1
    sget-object v9, Lg4/g;->a:Lg4/g;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lg4/b$a;->m(ZZIILjava/util/List;Lg4/g;)V

    return-void
.end method

.method public final o(Lg4/b$a;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 1
    iget-object p3, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    .line 2
    iget-object v1, p0, Lg4/o$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr p3, v2

    and-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {p1, p3, v1, v2}, Lg4/b$a;->b(IJ)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p2, p1}, Lg4/o$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
