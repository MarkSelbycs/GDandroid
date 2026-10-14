.class public Lh4/d$a;
.super Lokio/ForwardingSource;
.source "Http2xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lh4/d;


# direct methods
.method public constructor <init>(Lh4/d;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 2
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh4/d$a;->a:Lh4/d;

    invoke-static {v0}, Lh4/d;->f(Lh4/d;)Lf4/g;

    move-result-object v0

    iget-object v1, p0, Lh4/d$a;->a:Lh4/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lf4/g;->n(ZLh4/h;)V

    .line 2
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
