.class public final Lh4/j;
.super Lc4/b0;
.source "RealResponseBody.java"


# instance fields
.field public final a:Lc4/q;

.field public final b:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lc4/q;Lokio/BufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc4/b0;-><init>()V

    .line 2
    iput-object p1, p0, Lh4/j;->a:Lc4/q;

    .line 3
    iput-object p2, p0, Lh4/j;->b:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public h()J
    .locals 2

    iget-object v0, p0, Lh4/j;->a:Lc4/q;

    invoke-static {v0}, Lh4/f;->a(Lc4/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Lc4/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/j;->a:Lc4/q;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lc4/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lh4/j;->b:Lokio/BufferedSource;

    return-object v0
.end method
