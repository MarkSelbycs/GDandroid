.class public abstract Lc4/z;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lc4/t;Ljava/io/File;)Lc4/z;
    .locals 1

    const-string v0, "content == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lc4/z$b;

    invoke-direct {v0, p0, p1}, Lc4/z$b;-><init>(Lc4/t;Ljava/io/File;)V

    return-object v0
.end method

.method public static d(Lc4/t;[B)Lc4/z;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lc4/z;->e(Lc4/t;[BII)Lc4/z;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lc4/t;[BII)Lc4/z;
    .locals 7

    const-string v0, "content == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ld4/c;->a(JJJ)V

    .line 3
    new-instance v0, Lc4/z$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lc4/z$a;-><init>(Lc4/t;I[BI)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract b()Lc4/t;
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
