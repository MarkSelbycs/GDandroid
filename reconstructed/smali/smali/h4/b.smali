.class public final Lh4/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lc4/s;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lh4/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lc4/s$a;)Lc4/a0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lh4/i;

    invoke-virtual {v0}, Lh4/i;->c()Lh4/h;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lh4/i;->f()Lf4/g;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lc4/s$a;->b()Lc4/y;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    invoke-interface {v1, p1}, Lh4/h;->d(Lc4/y;)V

    .line 6
    invoke-virtual {p1}, Lc4/y;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh4/g;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lc4/y;->f()Lc4/z;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {p1}, Lc4/y;->f()Lc4/z;

    move-result-object v4

    invoke-virtual {v4}, Lc4/z;->a()J

    move-result-wide v4

    invoke-interface {v1, p1, v4, v5}, Lh4/h;->a(Lc4/y;J)Lokio/Sink;

    move-result-object v4

    .line 8
    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lc4/y;->f()Lc4/z;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc4/z;->writeTo(Lokio/BufferedSink;)V

    .line 10
    invoke-interface {v4}, Lokio/Sink;->close()V

    .line 11
    :cond_0
    invoke-interface {v1}, Lh4/h;->c()V

    .line 12
    invoke-interface {v1}, Lh4/h;->e()Lc4/a0$b;

    move-result-object v4

    .line 13
    invoke-virtual {v4, p1}, Lc4/a0$b;->B(Lc4/y;)Lc4/a0$b;

    move-result-object p1

    .line 14
    invoke-virtual {v0}, Lf4/g;->b()Lf4/c;

    move-result-object v4

    invoke-virtual {v4}, Lf4/c;->l()Lc4/p;

    move-result-object v4

    invoke-virtual {p1, v4}, Lc4/a0$b;->t(Lc4/p;)Lc4/a0$b;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2, v3}, Lc4/a0$b;->C(J)Lc4/a0$b;

    move-result-object p1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lc4/a0$b;->z(J)Lc4/a0$b;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p1

    .line 18
    iget-boolean v2, p0, Lh4/b;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lc4/a0;->y()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    .line 19
    :cond_1
    invoke-virtual {p1}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object v2

    .line 20
    invoke-interface {v1, p1}, Lh4/h;->b(Lc4/a0;)Lc4/b0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc4/a0$b;->n(Lc4/b0;)Lc4/a0$b;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p1

    .line 22
    :cond_2
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lc4/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23
    invoke-virtual {p1, v2}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    :cond_3
    invoke-virtual {v0}, Lf4/g;->h()V

    .line 25
    :cond_4
    invoke-virtual {p1}, Lc4/a0;->y()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_6

    .line 26
    :cond_5
    invoke-virtual {p1}, Lc4/a0;->u()Lc4/b0;

    move-result-object v1

    invoke-virtual {v1}, Lc4/b0;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    :cond_6
    return-object p1

    .line 27
    :cond_7
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " had non-zero Content-Length: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Lc4/a0;->u()Lc4/b0;

    move-result-object p1

    invoke-virtual {p1}, Lc4/b0;->h()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
