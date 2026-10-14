.class public Lo1/l0;
.super Ln1/a;
.source "StringConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method

.method public static h(Ljava/sql/Blob;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    sget-object p0, Le2/g;->b:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lt1/d;->h(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lt1/d;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    new-instance v1, Ln1/d;

    invoke-direct {v1, p0}, Ln1/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    invoke-static {v0}, Lt1/d;->a(Ljava/io/Closeable;)V

    .line 6
    throw p0
.end method

.method public static j(Ljava/sql/Clob;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lt1/d;->i(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lt1/d;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    new-instance v1, Ln1/d;

    invoke-direct {v1, p0}, Ln1/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    invoke-static {v0}, Lt1/d;->a(Ljava/io/Closeable;)V

    .line 6
    throw p0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/l0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Le2/e0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/sql/Clob;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/sql/Clob;

    invoke-static {p1}, Lo1/l0;->j(Ljava/sql/Clob;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/sql/Blob;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Ljava/sql/Blob;

    invoke-static {p1}, Lo1/l0;->h(Ljava/sql/Blob;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
