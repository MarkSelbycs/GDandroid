.class public final Lh4/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lc4/s;


# instance fields
.field public final a:Lc4/m;


# direct methods
.method public constructor <init>(Lc4/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh4/a;->a:Lc4/m;

    return-void
.end method


# virtual methods
.method public a(Lc4/s$a;)Lc4/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc4/s$a;->b()Lc4/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc4/y;->l()Lc4/y$b;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lc4/y;->f()Lc4/z;

    move-result-object v2

    const-string v3, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lc4/z;->b()Lc4/t;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lc4/t;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v1, v5, v4}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    .line 6
    :cond_0
    invoke-virtual {v2}, Lc4/z;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    const-string v6, "Transfer-Encoding"

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    .line 8
    invoke-virtual {v1, v6}, Lc4/y$b;->m(Ljava/lang/String;)Lc4/y$b;

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    .line 9
    invoke-virtual {v1, v6, v2}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    .line 10
    invoke-virtual {v1, v3}, Lc4/y$b;->m(Ljava/lang/String;)Lc4/y$b;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Lc4/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 12
    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    invoke-static {v4, v5}, Ld4/c;->m(Lc4/r;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Lc4/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v4}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Lc4/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gzip"

    if-nez v4, :cond_5

    const/4 v5, 0x1

    .line 16
    invoke-virtual {v1, v2, v6}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    .line 17
    :cond_5
    iget-object v2, p0, Lh4/a;->a:Lc4/m;

    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    invoke-interface {v2, v4}, Lc4/m;->b(Lc4/r;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    invoke-virtual {p0, v2}, Lh4/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Cookie"

    invoke-virtual {v1, v4, v2}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    :cond_6
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Lc4/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 21
    invoke-static {}, Ld4/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    .line 22
    :cond_7
    invoke-virtual {v1}, Lc4/y$b;->g()Lc4/y;

    move-result-object v1

    invoke-interface {p1, v1}, Lc4/s$a;->a(Lc4/y;)Lc4/a0;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lh4/a;->a:Lc4/m;

    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v2

    invoke-virtual {p1}, Lc4/a0;->I()Lc4/q;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lh4/f;->e(Lc4/m;Lc4/r;Lc4/q;)V

    .line 24
    invoke-virtual {p1}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lc4/a0$b;->B(Lc4/y;)Lc4/a0$b;

    move-result-object v0

    if-eqz v5, :cond_8

    const-string v1, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v1}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {p1}, Lh4/f;->c(Lc4/a0;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Lokio/GzipSource;

    invoke-virtual {p1}, Lc4/a0;->u()Lc4/b0;

    move-result-object v4

    invoke-virtual {v4}, Lc4/b0;->n()Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v2, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 29
    invoke-virtual {p1}, Lc4/a0;->I()Lc4/q;

    move-result-object p1

    invoke-virtual {p1}, Lc4/q;->e()Lc4/q$b;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v1}, Lc4/q$b;->g(Ljava/lang/String;)Lc4/q$b;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v3}, Lc4/q$b;->g(Ljava/lang/String;)Lc4/q$b;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lc4/q$b;->e()Lc4/q;

    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lc4/a0$b;->u(Lc4/q;)Lc4/a0$b;

    .line 34
    new-instance v1, Lh4/j;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lh4/j;-><init>(Lc4/q;Lokio/BufferedSource;)V

    invoke-virtual {v0, v1}, Lc4/a0$b;->n(Lc4/b0;)Lc4/a0$b;

    .line 35
    :cond_8
    invoke-virtual {v0}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc4/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/l;

    .line 5
    invoke-virtual {v3}, Lc4/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc4/l;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
