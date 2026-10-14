.class public final Le4/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lc4/s;


# static fields
.field public static final b:Lc4/b0;


# instance fields
.field public final a:Le4/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le4/a$a;

    invoke-direct {v0}, Le4/a$a;-><init>()V

    sput-object v0, Le4/a;->b:Lc4/b0;

    return-void
.end method

.method public constructor <init>(Le4/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le4/a;->a:Le4/d;

    return-void
.end method

.method public static c(Lc4/q;Lc4/q;)Lc4/q;
    .locals 7

    .line 1
    new-instance v0, Lc4/q$b;

    invoke-direct {v0}, Lc4/q$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lc4/q;->g()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-virtual {p0, v3}, Lc4/q;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Lc4/q;->h(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 5
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v4}, Le4/a;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lc4/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 7
    :cond_1
    sget-object v6, Ld4/a;->a:Ld4/a;

    invoke-virtual {v6, v0, v4, v5}, Ld4/a;->b(Lc4/q$b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Lc4/q;->g()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_6

    .line 9
    invoke-virtual {p1, v2}, Lc4/q;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-static {v1}, Le4/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    sget-object v3, Ld4/a;->a:Ld4/a;

    invoke-virtual {p1, v2}, Lc4/q;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Ld4/a;->b(Lc4/q$b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {v0}, Lc4/q$b;->e()Lc4/q;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Lc4/a0;)Lc4/a0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lc4/a0;->u()Lc4/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc4/a0$b;->n(Lc4/b0;)Lc4/a0$b;

    move-result-object p0

    invoke-virtual {p0}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static g(Lc4/a0;Lc4/a0;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lc4/a0;->y()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc4/a0;->I()Lc4/q;

    move-result-object p0

    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lc4/q;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lc4/a0;->I()Lc4/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc4/q;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lc4/s$a;)Lc4/a0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le4/a;->a:Le4/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lc4/s$a;->b()Lc4/y;

    move-result-object v1

    invoke-interface {v0, v1}, Le4/d;->c(Lc4/y;)Lc4/a0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Le4/c$b;

    invoke-interface {p1}, Lc4/s$a;->b()Lc4/y;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Le4/c$b;-><init>(JLc4/y;Lc4/a0;)V

    invoke-virtual {v3}, Le4/c$b;->c()Le4/c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Le4/c;->a:Lc4/y;

    .line 6
    iget-object v3, v1, Le4/c;->b:Lc4/a0;

    .line 7
    iget-object v4, p0, Le4/a;->a:Le4/d;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, v1}, Le4/d;->a(Le4/c;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0}, Lc4/a0;->u()Lc4/b0;

    move-result-object v1

    invoke-static {v1}, Ld4/c;->c(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 10
    new-instance v0, Lc4/a0$b;

    invoke-direct {v0}, Lc4/a0$b;-><init>()V

    .line 11
    invoke-interface {p1}, Lc4/s$a;->b()Lc4/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc4/a0$b;->B(Lc4/y;)Lc4/a0$b;

    move-result-object p1

    sget-object v0, Lc4/w;->c:Lc4/w;

    .line 12
    invoke-virtual {p1, v0}, Lc4/a0$b;->y(Lc4/w;)Lc4/a0$b;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 13
    invoke-virtual {p1, v0}, Lc4/a0$b;->s(I)Lc4/a0$b;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {p1, v0}, Lc4/a0$b;->v(Ljava/lang/String;)Lc4/a0$b;

    move-result-object p1

    sget-object v0, Le4/a;->b:Lc4/b0;

    .line 15
    invoke-virtual {p1, v0}, Lc4/a0$b;->n(Lc4/b0;)Lc4/a0$b;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 16
    invoke-virtual {p1, v0, v1}, Lc4/a0$b;->C(J)Lc4/a0$b;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc4/a0$b;->z(J)Lc4/a0$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v3}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object p1

    .line 20
    invoke-static {v3}, Le4/a;->f(Lc4/a0;)Lc4/a0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc4/a0$b;->p(Lc4/a0;)Lc4/a0$b;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p1

    return-object p1

    .line 22
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lc4/s$a;->a(Lc4/y;)Lc4/a0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Lc4/a0;->u()Lc4/b0;

    move-result-object v0

    invoke-static {v0}, Ld4/c;->c(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 24
    invoke-static {v3, p1}, Le4/a;->g(Lc4/a0;Lc4/a0;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v3}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object v0

    .line 26
    invoke-virtual {v3}, Lc4/a0;->I()Lc4/q;

    move-result-object v1

    invoke-virtual {p1}, Lc4/a0;->I()Lc4/q;

    move-result-object v2

    invoke-static {v1, v2}, Le4/a;->c(Lc4/q;Lc4/q;)Lc4/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc4/a0$b;->u(Lc4/q;)Lc4/a0$b;

    move-result-object v0

    .line 27
    invoke-static {v3}, Le4/a;->f(Lc4/a0;)Lc4/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc4/a0$b;->p(Lc4/a0;)Lc4/a0$b;

    move-result-object v0

    .line 28
    invoke-static {p1}, Le4/a;->f(Lc4/a0;)Lc4/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc4/a0$b;->w(Lc4/a0;)Lc4/a0$b;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lc4/a0;->u()Lc4/b0;

    move-result-object p1

    invoke-virtual {p1}, Lc4/b0;->close()V

    .line 31
    iget-object p1, p0, Le4/a;->a:Le4/d;

    invoke-interface {p1}, Le4/d;->d()V

    .line 32
    iget-object p1, p0, Le4/a;->a:Le4/d;

    invoke-interface {p1, v3, v0}, Le4/d;->b(Lc4/a0;Lc4/a0;)V

    return-object v0

    .line 33
    :cond_6
    invoke-virtual {v3}, Lc4/a0;->u()Lc4/b0;

    move-result-object v0

    invoke-static {v0}, Ld4/c;->c(Ljava/io/Closeable;)V

    .line 34
    :cond_7
    invoke-virtual {p1}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object v0

    .line 35
    invoke-static {v3}, Le4/a;->f(Lc4/a0;)Lc4/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc4/a0$b;->p(Lc4/a0;)Lc4/a0$b;

    move-result-object v0

    .line 36
    invoke-static {p1}, Le4/a;->f(Lc4/a0;)Lc4/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc4/a0$b;->w(Lc4/a0;)Lc4/a0$b;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lh4/f;->c(Lc4/a0;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object p1

    iget-object v1, p0, Le4/a;->a:Le4/d;

    invoke-virtual {p0, v0, p1, v1}, Le4/a;->e(Lc4/a0;Lc4/y;Le4/d;)Le4/b;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1, v0}, Le4/a;->b(Le4/b;Lc4/a0;)Lc4/a0;

    move-result-object v0

    :cond_8
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {v0}, Lc4/a0;->u()Lc4/b0;

    move-result-object v0

    invoke-static {v0}, Ld4/c;->c(Ljava/io/Closeable;)V

    :cond_9
    throw p1
.end method

.method public final b(Le4/b;Lc4/a0;)Lc4/a0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    invoke-interface {p1}, Le4/b;->b()Lokio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 2
    :cond_1
    invoke-virtual {p2}, Lc4/a0;->u()Lc4/b0;

    move-result-object v1

    invoke-virtual {v1}, Lc4/b0;->n()Lokio/BufferedSource;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 4
    new-instance v2, Le4/a$b;

    invoke-direct {v2, p0, v1, p1, v0}, Le4/a$b;-><init>(Le4/a;Lokio/BufferedSource;Le4/b;Lokio/BufferedSink;)V

    .line 5
    invoke-virtual {p2}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object p1

    new-instance v0, Lh4/j;

    .line 6
    invoke-virtual {p2}, Lc4/a0;->I()Lc4/q;

    move-result-object p2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lh4/j;-><init>(Lc4/q;Lokio/BufferedSource;)V

    invoke-virtual {p1, v0}, Lc4/a0$b;->n(Lc4/b0;)Lc4/a0$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lc4/a0;Lc4/y;Le4/d;)Le4/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Le4/c;->a(Lc4/a0;Lc4/y;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p2}, Lc4/y;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh4/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p3, p2}, Le4/d;->e(Lc4/y;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0

    .line 4
    :cond_2
    invoke-interface {p3, p1}, Le4/d;->f(Lc4/a0;)Le4/b;

    move-result-object p1

    return-object p1
.end method
