.class public Lt1/a;
.super Ljava/io/OutputStream;
.source "FastByteArrayOutputStream.java"


# instance fields
.field public final a:Lt1/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lt1/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3
    new-instance v0, Lt1/b;

    invoke-direct {v0, p1}, Lt1/b;-><init>(I)V

    iput-object v0, p0, Lt1/a;->a:Lt1/b;

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object v0, p0, Lt1/a;->a:Lt1/b;

    invoke-virtual {v0}, Lt1/b;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lt1/a;->c()[B

    move-result-object v1

    .line 2
    invoke-static {}, Le2/g;->b()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {p1, v2}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Le2/g;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt1/a;->e(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lt1/a;->a:Lt1/b;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lt1/b;->a(B)Lt1/b;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt1/a;->a:Lt1/b;

    invoke-virtual {v0, p1, p2, p3}, Lt1/b;->b([BII)Lt1/b;

    return-void
.end method
