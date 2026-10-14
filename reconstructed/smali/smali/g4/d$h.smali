.class public Lg4/d$h;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lokio/BufferedSource;

.field public d:Lokio/BufferedSink;

.field public e:Lg4/d$i;

.field public f:Lc4/w;

.field public g:Lg4/m;

.field public h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lg4/d$i;->a:Lg4/d$i;

    iput-object v0, p0, Lg4/d$h;->e:Lg4/d$i;

    .line 3
    sget-object v0, Lc4/w;->d:Lc4/w;

    iput-object v0, p0, Lg4/d$h;->f:Lc4/w;

    .line 4
    sget-object v0, Lg4/m;->a:Lg4/m;

    iput-object v0, p0, Lg4/d$h;->g:Lg4/m;

    .line 5
    iput-boolean p1, p0, Lg4/d$h;->h:Z

    return-void
.end method

.method public static synthetic a(Lg4/d$h;)Lc4/w;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->f:Lc4/w;

    return-object p0
.end method

.method public static synthetic b(Lg4/d$h;)Lg4/m;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->g:Lg4/m;

    return-object p0
.end method

.method public static synthetic c(Lg4/d$h;)Z
    .locals 0

    iget-boolean p0, p0, Lg4/d$h;->h:Z

    return p0
.end method

.method public static synthetic d(Lg4/d$h;)Lg4/d$i;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->e:Lg4/d$i;

    return-object p0
.end method

.method public static synthetic e(Lg4/d$h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lg4/d$h;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->a:Ljava/net/Socket;

    return-object p0
.end method

.method public static synthetic g(Lg4/d$h;)Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->d:Lokio/BufferedSink;

    return-object p0
.end method

.method public static synthetic h(Lg4/d$h;)Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lg4/d$h;->c:Lokio/BufferedSource;

    return-object p0
.end method


# virtual methods
.method public i()Lg4/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lg4/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg4/d;-><init>(Lg4/d$h;Lg4/d$a;)V

    return-object v0
.end method

.method public j(Lg4/d$i;)Lg4/d$h;
    .locals 0

    iput-object p1, p0, Lg4/d$h;->e:Lg4/d$i;

    return-object p0
.end method

.method public k(Lc4/w;)Lg4/d$h;
    .locals 0

    iput-object p1, p0, Lg4/d$h;->f:Lc4/w;

    return-object p0
.end method

.method public l(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lg4/d$h;
    .locals 0

    .line 1
    iput-object p1, p0, Lg4/d$h;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lg4/d$h;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lg4/d$h;->c:Lokio/BufferedSource;

    .line 4
    iput-object p4, p0, Lg4/d$h;->d:Lokio/BufferedSink;

    return-object p0
.end method
