.class public final Lc4/x$a;
.super Ld4/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lc4/f;

.field public final synthetic c:Lc4/x;


# virtual methods
.method public c()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lc4/x$a;->c:Lc4/x;

    invoke-static {v2}, Lc4/x;->b(Lc4/x;)Lc4/a0;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lc4/x$a;->c:Lc4/x;

    invoke-static {v3}, Lc4/x;->c(Lc4/x;)Lh4/l;

    move-result-object v3

    invoke-virtual {v3}, Lh4/l;->d()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lc4/x$a;->b:Lc4/f;

    iget-object v2, p0, Lc4/x$a;->c:Lc4/x;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lc4/f;->a(Lc4/e;Ljava/io/IOException;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lc4/x$a;->b:Lc4/f;

    iget-object v3, p0, Lc4/x$a;->c:Lc4/x;

    invoke-interface {v1, v3, v2}, Lc4/f;->b(Lc4/e;Lc4/a0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc4/x$a;->c:Lc4/x;

    invoke-static {v4}, Lc4/x;->d(Lc4/x;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Li4/e;->k(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lc4/x$a;->b:Lc4/f;

    iget-object v2, p0, Lc4/x$a;->c:Lc4/x;

    invoke-interface {v0, v2, v1}, Lc4/f;->a(Lc4/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :goto_1
    iget-object v0, p0, Lc4/x$a;->c:Lc4/x;

    invoke-static {v0}, Lc4/x;->e(Lc4/x;)Lc4/v;

    move-result-object v0

    invoke-virtual {v0}, Lc4/v;->k()Lc4/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc4/n;->c(Lc4/x$a;)V

    return-void

    :goto_2
    iget-object v1, p0, Lc4/x$a;->c:Lc4/x;

    invoke-static {v1}, Lc4/x;->e(Lc4/x;)Lc4/v;

    move-result-object v1

    invoke-virtual {v1}, Lc4/v;->k()Lc4/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc4/n;->c(Lc4/x$a;)V

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc4/x$a;->c:Lc4/x;

    iget-object v0, v0, Lc4/x;->originalRequest:Lc4/y;

    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v0

    invoke-virtual {v0}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
