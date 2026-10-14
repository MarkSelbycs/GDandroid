.class public final Lu2/j;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ly2/a;)Ls2/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/m;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ly2/a;->V()Ly2/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ly2/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lv2/m;->X:Ls2/s;

    invoke-virtual {v1, p0}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls2/i;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ly2/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Ls2/q;

    invoke-direct {v0, p0}, Ls2/q;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 4
    new-instance v0, Ls2/j;

    invoke-direct {v0, p0}, Ls2/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 5
    new-instance v0, Ls2/q;

    invoke-direct {v0, p0}, Ls2/q;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Ls2/k;->a:Ls2/k;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ls2/q;

    invoke-direct {v0, p0}, Ls2/q;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Ls2/i;Ly2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lv2/m;->X:Ls2/s;

    invoke-virtual {v0, p1, p0}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lu2/j$a;

    invoke-direct {v0, p0}, Lu2/j$a;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
