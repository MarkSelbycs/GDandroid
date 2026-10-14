.class public final Le0/c;
.super Ljava/lang/Object;
.source "FileUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, p1

    move-object v2, p0

    .line 1
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 6
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    throw v0
.end method
