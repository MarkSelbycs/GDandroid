.class public Lo1/r0;
.super Ln1/a;
.source "URLConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/r0;->h(Ljava/lang/Object;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/net/URL;
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/net/URI;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
