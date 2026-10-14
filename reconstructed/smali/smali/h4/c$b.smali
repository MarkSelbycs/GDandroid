.class public abstract Lh4/c$b;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final a:Lokio/ForwardingTimeout;

.field public b:Z

.field public final synthetic c:Lh4/c;


# direct methods
.method public constructor <init>(Lh4/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lh4/c$b;->c:Lh4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lh4/c;->j(Lh4/c;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lh4/c$b;->a:Lokio/ForwardingTimeout;

    return-void
.end method

.method public synthetic constructor <init>(Lh4/c;Lh4/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lh4/c$b;-><init>(Lh4/c;)V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh4/c$b;->c:Lh4/c;

    invoke-static {v0}, Lh4/c;->h(Lh4/c;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lh4/c$b;->c:Lh4/c;

    invoke-static {v0}, Lh4/c;->h(Lh4/c;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lh4/c$b;->c:Lh4/c;

    iget-object v2, p0, Lh4/c$b;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v2}, Lh4/c;->g(Lh4/c;Lokio/ForwardingTimeout;)V

    .line 4
    iget-object v0, p0, Lh4/c$b;->c:Lh4/c;

    invoke-static {v0, v1}, Lh4/c;->i(Lh4/c;I)I

    .line 5
    iget-object v0, p0, Lh4/c$b;->c:Lh4/c;

    invoke-static {v0}, Lh4/c;->k(Lh4/c;)Lf4/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lh4/c$b;->c:Lh4/c;

    invoke-static {v0}, Lh4/c;->k(Lh4/c;)Lf4/g;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lh4/c$b;->c:Lh4/c;

    invoke-virtual {v0, p1, v1}, Lf4/g;->n(ZLh4/h;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh4/c$b;->c:Lh4/c;

    invoke-static {v1}, Lh4/c;->h(Lh4/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lh4/c$b;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method
