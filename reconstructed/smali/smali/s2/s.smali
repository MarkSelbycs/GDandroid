.class public abstract Ls2/s;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ls2/s$a;

    invoke-direct {v0, p0}, Ls2/s$a;-><init>(Ls2/s;)V

    return-object v0
.end method

.method public abstract b(Ly2/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c(Ljava/lang/Object;)Ls2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ls2/i;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lv2/f;

    invoke-direct {v0}, Lv2/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lv2/f;->b0()Ls2/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ls2/j;

    invoke-direct {v0, p1}, Ls2/j;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract d(Ly2/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
