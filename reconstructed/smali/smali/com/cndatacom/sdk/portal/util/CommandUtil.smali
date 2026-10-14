.class public Lcom/cndatacom/sdk/portal/util/CommandUtil;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 p0, 0xa

    .line 5
    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 9
    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/CommandUtil;->getStrFromBufferInputSteam(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 10
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v3, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v3, v0

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    goto :goto_7

    :catch_5
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_2
    move-object v3, v2

    .line 15
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_0

    .line 16
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_4
    if-eqz v3, :cond_1

    .line 18
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_5
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    return-object v0

    :catchall_3
    move-exception p0

    :goto_6
    move-object v0, v2

    :goto_7
    if-eqz v0, :cond_3

    .line 21
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_8
    if-eqz v3, :cond_4

    .line 23
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 26
    :cond_5
    throw p0
.end method

.method private static getStrFromBufferInputSteam(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 3
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ge v3, v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
