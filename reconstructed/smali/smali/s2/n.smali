.class public final Ls2/n;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Ls2/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/j;,
            Ls2/q;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ly2/a;

    invoke-direct {v0, p1}, Ly2/a;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-virtual {p0, v0}, Ls2/n;->c(Ly2/a;)Ls2/i;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ls2/i;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ly2/a;->V()Ly2/b;

    move-result-object v0

    sget-object v1, Ly2/b;->o:Ly2/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls2/q;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Ls2/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ly2/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ls2/q;

    invoke-direct {v0, p1}, Ls2/q;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Ls2/j;

    invoke-direct {v0, p1}, Ls2/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 7
    new-instance v0, Ls2/q;

    invoke-direct {v0, p1}, Ls2/q;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ls2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/q;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls2/n;->a(Ljava/io/Reader;)Ls2/i;

    move-result-object p1

    return-object p1
.end method

.method public c(Ly2/a;)Ls2/i;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/j;,
            Ls2/q;
        }
    .end annotation

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 1
    invoke-virtual {p1}, Ly2/a;->s()Z

    move-result v2

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p1, v3}, Ly2/a;->c0(Z)V

    .line 3
    :try_start_0
    invoke-static {p1}, Lu2/j;->a(Ly2/a;)Ls2/i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1, v2}, Ly2/a;->c0(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    :try_start_1
    new-instance v4, Ls2/m;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ls2/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 6
    new-instance v4, Ls2/m;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ls2/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    invoke-virtual {p1, v2}, Ly2/a;->c0(Z)V

    throw v0
.end method
