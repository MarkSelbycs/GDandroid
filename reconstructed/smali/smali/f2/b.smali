.class public interface abstract Lf2/b;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public Y(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, v0, p1, v2}, Lf2/b;->r(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract r(Ljava/io/Writer;II)Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation
.end method
