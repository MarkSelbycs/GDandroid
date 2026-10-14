.class public Lo2/b;
.super Li2/d;
.source "Slf4jLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lo2/b;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    const-string v0, "Slf4j"

    .line 2
    invoke-direct {p0, v0}, Li2/d;-><init>(Ljava/lang/String;)V

    .line 3
    const-class v0, Lorg/slf4j/LoggerFactory;

    invoke-virtual {p0, v0}, Li2/d;->b(Ljava/lang/Class;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lo2/b$a;

    invoke-direct {v2, p0, p1}, Lo2/b$a;-><init>(Lo2/b;Ljava/lang/StringBuilder;)V

    const/4 v3, 0x1

    const-string v4, "US-ASCII"

    invoke-direct {v1, v2, v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v1

    instance-of v1, v1, Lorg/slf4j/helpers/NOPLoggerFactory;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    return-void

    .line 11
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 13
    throw p1

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Li2/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Li2/b;"
        }
    .end annotation

    new-instance v0, Lo2/a;

    invoke-direct {v0, p1}, Lo2/a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
