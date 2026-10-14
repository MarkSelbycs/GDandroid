.class public Lr4/s;
.super Lr4/r;
.source "UdpAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/r;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lr4/r;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lr4/r;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lr4/r;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lr4/h;->M(Ljava/net/InetAddress;)V

    .line 4
    invoke-virtual {p0, p2}, Lr4/r;->U(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr4/s;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lr4/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
