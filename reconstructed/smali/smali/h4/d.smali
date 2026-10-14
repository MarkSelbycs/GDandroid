.class public final Lh4/d;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lh4/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh4/d$a;
    }
.end annotation


# static fields
.field public static final e:Lokio/ByteString;

.field public static final f:Lokio/ByteString;

.field public static final g:Lokio/ByteString;

.field public static final h:Lokio/ByteString;

.field public static final i:Lokio/ByteString;

.field public static final j:Lokio/ByteString;

.field public static final k:Lokio/ByteString;

.field public static final l:Lokio/ByteString;

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lc4/v;

.field public final b:Lf4/g;

.field public final c:Lg4/d;

.field public d:Lg4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    const-string v0, "connection"

    .line 1
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lh4/d;->e:Lokio/ByteString;

    const-string v1, "host"

    .line 2
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lh4/d;->f:Lokio/ByteString;

    const-string v2, "keep-alive"

    .line 3
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lh4/d;->g:Lokio/ByteString;

    const-string v3, "proxy-connection"

    .line 4
    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    sput-object v3, Lh4/d;->h:Lokio/ByteString;

    const-string v4, "transfer-encoding"

    .line 5
    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    sput-object v4, Lh4/d;->i:Lokio/ByteString;

    const-string v5, "te"

    .line 6
    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    sput-object v5, Lh4/d;->j:Lokio/ByteString;

    const-string v6, "encoding"

    .line 7
    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    sput-object v6, Lh4/d;->k:Lokio/ByteString;

    const-string v7, "upgrade"

    .line 8
    invoke-static {v7}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    sput-object v7, Lh4/d;->l:Lokio/ByteString;

    const/16 v8, 0xb

    new-array v9, v8, [Lokio/ByteString;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    const/4 v12, 0x2

    aput-object v2, v9, v12

    const/4 v13, 0x3

    aput-object v3, v9, v13

    const/4 v14, 0x4

    aput-object v4, v9, v14

    .line 9
    sget-object v15, Lg4/f;->e:Lokio/ByteString;

    const/4 v8, 0x5

    aput-object v15, v9, v8

    sget-object v16, Lg4/f;->f:Lokio/ByteString;

    const/16 v17, 0x6

    aput-object v16, v9, v17

    sget-object v18, Lg4/f;->g:Lokio/ByteString;

    const/16 v19, 0x7

    aput-object v18, v9, v19

    sget-object v20, Lg4/f;->h:Lokio/ByteString;

    const/16 v14, 0x8

    aput-object v20, v9, v14

    sget-object v22, Lg4/f;->i:Lokio/ByteString;

    const/16 v23, 0x9

    aput-object v22, v9, v23

    sget-object v24, Lg4/f;->j:Lokio/ByteString;

    const/16 v25, 0xa

    aput-object v24, v9, v25

    invoke-static {v9}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lh4/d;->m:Ljava/util/List;

    new-array v9, v8, [Lokio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/16 v21, 0x4

    aput-object v4, v9, v21

    .line 10
    invoke-static {v9}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lh4/d;->n:Ljava/util/List;

    const/16 v9, 0xe

    new-array v9, v9, [Lokio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    aput-object v5, v9, v21

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v19

    aput-object v15, v9, v14

    aput-object v16, v9, v23

    aput-object v18, v9, v25

    const/16 v15, 0xb

    aput-object v20, v9, v15

    const/16 v15, 0xc

    aput-object v22, v9, v15

    const/16 v15, 0xd

    aput-object v24, v9, v15

    .line 11
    invoke-static {v9}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lh4/d;->o:Ljava/util/List;

    new-array v9, v14, [Lokio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/4 v0, 0x4

    aput-object v5, v9, v0

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v19

    .line 12
    invoke-static {v9}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lh4/d;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lc4/v;Lf4/g;Lg4/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh4/d;->a:Lc4/v;

    .line 3
    iput-object p2, p0, Lh4/d;->b:Lf4/g;

    .line 4
    iput-object p3, p0, Lh4/d;->c:Lg4/d;

    return-void
.end method

.method public static synthetic f(Lh4/d;)Lf4/g;
    .locals 0

    iget-object p0, p0, Lh4/d;->b:Lf4/g;

    return-object p0
.end method

.method public static g(Lc4/y;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/y;",
            ")",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc4/y;->i()Lc4/q;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lc4/q;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    invoke-static {v4}, Lh4/k;->c(Lc4/r;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->h:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ld4/c;->m(Lc4/r;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->m()Lc4/r;

    move-result-object p0

    invoke-virtual {p0}, Lc4/r;->E()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Lc4/q;->g()I

    move-result p0

    :goto_0
    if-ge v5, p0, :cond_1

    .line 8
    invoke-virtual {v0, v5}, Lc4/q;->d(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    .line 9
    sget-object v3, Lh4/d;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    new-instance v3, Lg4/f;

    invoke-virtual {v0, v5}, Lc4/q;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/List;)Lc4/a0$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;)",
            "Lc4/a0$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lc4/q$b;

    invoke-direct {v0}, Lc4/q$b;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg4/f;

    iget-object v4, v4, Lg4/f;->a:Lokio/ByteString;

    .line 4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg4/f;

    iget-object v5, v5, Lg4/f;->b:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Lg4/f;->d:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_1

    .line 6
    :cond_0
    sget-object v6, Lh4/d;->p:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    sget-object v6, Ld4/a;->a:Ld4/a;

    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4, v5}, Ld4/a;->b(Lc4/q$b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh4/m;->a(Ljava/lang/String;)Lh4/m;

    move-result-object p0

    .line 9
    new-instance v1, Lc4/a0$b;

    invoke-direct {v1}, Lc4/a0$b;-><init>()V

    sget-object v2, Lc4/w;->e:Lc4/w;

    .line 10
    invoke-virtual {v1, v2}, Lc4/a0$b;->y(Lc4/w;)Lc4/a0$b;

    move-result-object v1

    iget v2, p0, Lh4/m;->b:I

    .line 11
    invoke-virtual {v1, v2}, Lc4/a0$b;->s(I)Lc4/a0$b;

    move-result-object v1

    iget-object p0, p0, Lh4/m;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p0}, Lc4/a0$b;->v(Ljava/lang/String;)Lc4/a0$b;

    move-result-object p0

    .line 13
    invoke-virtual {v0}, Lc4/q$b;->e()Lc4/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc4/a0$b;->u(Lc4/q;)Lc4/a0$b;

    move-result-object p0

    return-object p0

    .line 14
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/util/List;)Lc4/a0$b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;)",
            "Lc4/a0$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lc4/q$b;

    invoke-direct {v0}, Lc4/q$b;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "HTTP/1.1"

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_5

    .line 3
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg4/f;

    iget-object v6, v6, Lg4/f;->a:Lokio/ByteString;

    .line 4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg4/f;

    iget-object v7, v7, Lg4/f;->b:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    .line 5
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 6
    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 8
    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 9
    sget-object v10, Lg4/f;->d:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v3, v8

    goto :goto_2

    .line 10
    :cond_1
    sget-object v10, Lg4/f;->j:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v8

    goto :goto_2

    .line 11
    :cond_2
    sget-object v10, Lh4/d;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 12
    sget-object v10, Ld4/a;->a:Ld4/a;

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11, v8}, Ld4/a;->b(Lc4/q$b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh4/m;->a(Ljava/lang/String;)Lh4/m;

    move-result-object p0

    .line 14
    new-instance v1, Lc4/a0$b;

    invoke-direct {v1}, Lc4/a0$b;-><init>()V

    sget-object v2, Lc4/w;->d:Lc4/w;

    .line 15
    invoke-virtual {v1, v2}, Lc4/a0$b;->y(Lc4/w;)Lc4/a0$b;

    move-result-object v1

    iget v2, p0, Lh4/m;->b:I

    .line 16
    invoke-virtual {v1, v2}, Lc4/a0$b;->s(I)Lc4/a0$b;

    move-result-object v1

    iget-object p0, p0, Lh4/m;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, p0}, Lc4/a0$b;->v(Ljava/lang/String;)Lc4/a0$b;

    move-result-object p0

    .line 18
    invoke-virtual {v0}, Lc4/q$b;->e()Lc4/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc4/a0$b;->u(Lc4/q;)Lc4/a0$b;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Lc4/y;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/y;",
            ")",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc4/y;->i()Lc4/q;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lc4/q;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    invoke-static {v4}, Lh4/k;->c(Lc4/r;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->j:Lokio/ByteString;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->i:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ld4/c;->m(Lc4/r;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lg4/f;

    sget-object v3, Lg4/f;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lc4/y;->m()Lc4/r;

    move-result-object p0

    invoke-virtual {p0}, Lc4/r;->E()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    invoke-virtual {v0}, Lc4/q;->g()I

    move-result v2

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_4

    .line 10
    invoke-virtual {v0, v3}, Lc4/q;->d(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 11
    sget-object v6, Lh4/d;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v0, v3}, Lc4/q;->h(I)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 14
    new-instance v7, Lg4/f;

    invoke-direct {v7, v4, v6}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move v7, v5

    .line 15
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 16
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg4/f;

    iget-object v8, v8, Lg4/f;->a:Lokio/ByteString;

    invoke-virtual {v8, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 17
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg4/f;

    iget-object v8, v8, Lg4/f;->b:Lokio/ByteString;

    invoke-virtual {v8}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lh4/d;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    new-instance v8, Lg4/f;

    invoke-direct {v8, v4, v6}, Lg4/f;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public a(Lc4/y;J)Lokio/Sink;
    .locals 0

    iget-object p1, p0, Lh4/d;->d:Lg4/e;

    invoke-virtual {p1}, Lg4/e;->q()Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc4/a0;)Lc4/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lh4/d$a;

    iget-object v1, p0, Lh4/d;->d:Lg4/e;

    invoke-virtual {v1}, Lg4/e;->r()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lh4/d$a;-><init>(Lh4/d;Lokio/Source;)V

    .line 2
    new-instance v1, Lh4/j;

    invoke-virtual {p1}, Lc4/a0;->I()Lc4/q;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lh4/j;-><init>(Lc4/q;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh4/d;->d:Lg4/e;

    invoke-virtual {v0}, Lg4/e;->q()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    return-void
.end method

.method public d(Lc4/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh4/d;->d:Lg4/e;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lc4/y;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh4/g;->b(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lh4/d;->c:Lg4/d;

    invoke-virtual {v1}, Lg4/d;->X()Lc4/w;

    move-result-object v1

    sget-object v2, Lc4/w;->e:Lc4/w;

    if-ne v1, v2, :cond_1

    .line 4
    invoke-static {p1}, Lh4/d;->g(Lc4/y;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lh4/d;->k(Lc4/y;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lh4/d;->c:Lg4/d;

    invoke-virtual {v2, p1, v0, v1}, Lg4/d;->c0(Ljava/util/List;ZZ)Lg4/e;

    move-result-object p1

    iput-object p1, p0, Lh4/d;->d:Lg4/e;

    .line 7
    invoke-virtual {p1}, Lg4/e;->u()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lh4/d;->a:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->F()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 8
    iget-object p1, p0, Lh4/d;->d:Lg4/e;

    invoke-virtual {p1}, Lg4/e;->A()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lh4/d;->a:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->M()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method

.method public e()Lc4/a0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh4/d;->c:Lg4/d;

    invoke-virtual {v0}, Lg4/d;->X()Lc4/w;

    move-result-object v0

    sget-object v1, Lc4/w;->e:Lc4/w;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh4/d;->d:Lg4/e;

    .line 2
    invoke-virtual {v0}, Lg4/e;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lh4/d;->i(Ljava/util/List;)Lc4/a0$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh4/d;->d:Lg4/e;

    .line 3
    invoke-virtual {v0}, Lg4/e;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lh4/d;->j(Ljava/util/List;)Lc4/a0$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method
