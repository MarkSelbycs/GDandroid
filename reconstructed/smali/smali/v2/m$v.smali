.class public final Lv2/m$v;
.super Ls2/s;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls2/s<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls2/s;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ly2/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv2/m$v;->e(Ly2/a;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ly2/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lv2/m$v;->f(Ly2/c;Ljava/util/BitSet;)V

    return-void
.end method

.method public e(Ly2/a;)Ljava/util/BitSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v0

    sget-object v1, Ly2/b;->i:Ly2/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ly2/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 4
    invoke-virtual {p1}, Ly2/a;->c()V

    .line 5
    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    sget-object v4, Ly2/b;->b:Ly2/b;

    if-eq v1, v4, :cond_6

    .line 7
    sget-object v4, Lv2/m$b0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 8
    invoke-virtual {p1}, Ly2/a;->P()Ljava/lang/String;

    move-result-object v1

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_1

    .line 10
    :catch_0
    new-instance p1, Ls2/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls2/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ls2/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitset value type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls2/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-virtual {p1}, Ly2/a;->x()Z

    move-result v5

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1}, Ly2/a;->z()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    if-eqz v5, :cond_5

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 15
    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Ly2/a;->j()V

    return-object v0
.end method

.method public f(Ly2/c;Ljava/util/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ly2/c;->u()Ly2/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ly2/c;->f()Ly2/c;

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    int-to-long v1, v1

    .line 5
    invoke-virtual {p1, v1, v2}, Ly2/c;->R(J)Ly2/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ly2/c;->j()Ly2/c;

    return-void
.end method
