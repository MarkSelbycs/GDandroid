.class public final Lc4/z$b;
.super Lc4/z;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/z;->c(Lc4/t;Ljava/io/File;)Lc4/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc4/t;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lc4/t;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lc4/z$b;->a:Lc4/t;

    iput-object p2, p0, Lc4/z$b;->b:Ljava/io/File;

    invoke-direct {p0}, Lc4/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lc4/z$b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lc4/t;
    .locals 1

    iget-object v0, p0, Lc4/z$b;->a:Lc4/t;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lc4/z$b;->b:Ljava/io/File;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Ld4/c;->c(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Ld4/c;->c(Ljava/io/Closeable;)V

    throw p1
.end method
