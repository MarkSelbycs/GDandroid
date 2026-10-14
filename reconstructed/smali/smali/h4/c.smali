.class public final Lh4/c;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lh4/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh4/c$g;,
        Lh4/c$d;,
        Lh4/c$f;,
        Lh4/c$b;,
        Lh4/c$c;,
        Lh4/c$e;
    }
.end annotation


# instance fields
.field public final a:Lc4/v;

.field public final b:Lf4/g;

.field public final c:Lokio/BufferedSource;

.field public final d:Lokio/BufferedSink;

.field public e:I


# direct methods
.method public constructor <init>(Lc4/v;Lf4/g;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh4/c;->e:I

    .line 3
    iput-object p1, p0, Lh4/c;->a:Lc4/v;

    .line 4
    iput-object p2, p0, Lh4/c;->b:Lf4/g;

    .line 5
    iput-object p3, p0, Lh4/c;->c:Lokio/BufferedSource;

    .line 6
    iput-object p4, p0, Lh4/c;->d:Lokio/BufferedSink;

    return-void
.end method

.method public static synthetic f(Lh4/c;)Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lh4/c;->d:Lokio/BufferedSink;

    return-object p0
.end method

.method public static synthetic g(Lh4/c;Lokio/ForwardingTimeout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh4/c;->m(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method public static synthetic h(Lh4/c;)I
    .locals 0

    iget p0, p0, Lh4/c;->e:I

    return p0
.end method

.method public static synthetic i(Lh4/c;I)I
    .locals 0

    iput p1, p0, Lh4/c;->e:I

    return p1
.end method

.method public static synthetic j(Lh4/c;)Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lh4/c;->c:Lokio/BufferedSource;

    return-object p0
.end method

.method public static synthetic k(Lh4/c;)Lf4/g;
    .locals 0

    iget-object p0, p0, Lh4/c;->b:Lf4/g;

    return-object p0
.end method

.method public static synthetic l(Lh4/c;)Lc4/v;
    .locals 0

    iget-object p0, p0, Lh4/c;->a:Lc4/v;

    return-object p0
.end method


# virtual methods
.method public a(Lc4/y;J)Lokio/Sink;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lc4/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lh4/c;->o()Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p3}, Lh4/c;->q(J)Lokio/Sink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lc4/a0;)Lc4/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lh4/c;->n(Lc4/a0;)Lokio/Source;

    move-result-object v0

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

    iget-object v0, p0, Lh4/c;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public d(Lc4/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh4/c;->b:Lf4/g;

    .line 2
    invoke-virtual {v0}, Lf4/g;->b()Lf4/c;

    move-result-object v0

    invoke-virtual {v0}, Lf4/c;->a()Lc4/c0;

    move-result-object v0

    invoke-virtual {v0}, Lc4/c0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lh4/k;->a(Lc4/y;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lc4/y;->i()Lc4/q;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lh4/c;->v(Lc4/q;Ljava/lang/String;)V

    return-void
.end method

.method public e()Lc4/a0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lh4/c;->u()Lc4/a0$b;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lokio/ForwardingTimeout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 2
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 3
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 4
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method public final n(Lc4/a0;)Lokio/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lh4/f;->c(Lc4/a0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lh4/c;->r(J)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    .line 3
    invoke-virtual {p1, v0}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object p1

    invoke-virtual {p1}, Lc4/y;->m()Lc4/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh4/c;->p(Lc4/r;)Lokio/Source;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lh4/f;->b(Lc4/a0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v0, v1}, Lh4/c;->r(J)Lokio/Source;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lh4/c;->s()Lokio/Source;

    move-result-object p1

    return-object p1
.end method

.method public o()Lokio/Sink;
    .locals 3

    .line 1
    iget v0, p0, Lh4/c;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lh4/c;->e:I

    .line 3
    new-instance v0, Lh4/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh4/c$c;-><init>(Lh4/c;Lh4/c$a;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh4/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Lc4/r;)Lokio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lh4/c;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lh4/c;->e:I

    .line 3
    new-instance v0, Lh4/c$d;

    invoke-direct {v0, p0, p1}, Lh4/c$d;-><init>(Lh4/c;Lc4/r;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh4/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(J)Lokio/Sink;
    .locals 2

    .line 1
    iget v0, p0, Lh4/c;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lh4/c;->e:I

    .line 3
    new-instance v0, Lh4/c$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lh4/c$e;-><init>(Lh4/c;JLh4/c$a;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh4/c;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(J)Lokio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lh4/c;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lh4/c;->e:I

    .line 3
    new-instance v0, Lh4/c$f;

    invoke-direct {v0, p0, p1, p2}, Lh4/c$f;-><init>(Lh4/c;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh4/c;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lh4/c;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lh4/c;->b:Lf4/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lh4/c;->e:I

    .line 4
    invoke-virtual {v0}, Lf4/g;->h()V

    .line 5
    new-instance v0, Lh4/c$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh4/c$g;-><init>(Lh4/c;Lh4/c$a;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh4/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Lc4/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lc4/q$b;

    invoke-direct {v0}, Lc4/q$b;-><init>()V

    .line 2
    :goto_0
    iget-object v1, p0, Lh4/c;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Ld4/a;->a:Ld4/a;

    invoke-virtual {v2, v0, v1}, Ld4/a;->a(Lc4/q$b;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lc4/q$b;->e()Lc4/q;

    move-result-object v0

    return-object v0
.end method

.method public u()Lc4/a0$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lh4/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh4/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lh4/c;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh4/m;->a(Ljava/lang/String;)Lh4/m;

    move-result-object v0

    .line 4
    new-instance v1, Lc4/a0$b;

    invoke-direct {v1}, Lc4/a0$b;-><init>()V

    iget-object v2, v0, Lh4/m;->a:Lc4/w;

    .line 5
    invoke-virtual {v1, v2}, Lc4/a0$b;->y(Lc4/w;)Lc4/a0$b;

    move-result-object v1

    iget v2, v0, Lh4/m;->b:I

    .line 6
    invoke-virtual {v1, v2}, Lc4/a0$b;->s(I)Lc4/a0$b;

    move-result-object v1

    iget-object v2, v0, Lh4/m;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lc4/a0$b;->v(Ljava/lang/String;)Lc4/a0$b;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lh4/c;->t()Lc4/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc4/a0$b;->u(Lc4/q;)Lc4/a0$b;

    move-result-object v1

    .line 9
    iget v0, v0, Lh4/m;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Lh4/c;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh4/c;->b:Lf4/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw v1
.end method

.method public v(Lc4/q;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lh4/c;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lh4/c;->d:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lc4/q;->g()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Lh4/c;->d:Lokio/BufferedSink;

    invoke-virtual {p1, p2}, Lc4/q;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lc4/q;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lh4/c;->d:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lh4/c;->e:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh4/c;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
