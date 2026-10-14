.class public final Ls2/l;
.super Ls2/i;
.source "JsonObject.java"


# instance fields
.field public final a:Lu2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/g<",
            "Ljava/lang/String;",
            "Ls2/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls2/i;-><init>()V

    .line 2
    new-instance v0, Lu2/g;

    invoke-direct {v0}, Lu2/g;-><init>()V

    iput-object v0, p0, Ls2/l;->a:Lu2/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Ls2/l;

    if-eqz v0, :cond_0

    check-cast p1, Ls2/l;

    iget-object p1, p1, Ls2/l;->a:Lu2/g;

    iget-object v0, p0, Ls2/l;->a:Lu2/g;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ls2/l;->a:Lu2/g;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;Ls2/i;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Ls2/k;->a:Ls2/k;

    .line 2
    :cond_0
    iget-object v0, p0, Ls2/l;->a:Lu2/g;

    invoke-virtual {v0, p1, p2}, Lu2/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p0, p2}, Ls2/l;->m(Ljava/lang/Object;)Ls2/i;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Ls2/l;->m(Ljava/lang/Object;)Ls2/i;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;)Ls2/i;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Ls2/k;->a:Ls2/k;

    goto :goto_0

    :cond_0
    new-instance v0, Ls2/o;

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ls2/i;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ls2/l;->a:Lu2/g;

    invoke-virtual {v0}, Lu2/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ls2/i;
    .locals 1

    iget-object v0, p0, Ls2/l;->a:Lu2/g;

    invoke-virtual {v0, p1}, Lu2/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls2/i;

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ls2/g;
    .locals 1

    iget-object v0, p0, Ls2/l;->a:Lu2/g;

    invoke-virtual {v0, p1}, Lu2/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls2/g;

    return-object p1
.end method
