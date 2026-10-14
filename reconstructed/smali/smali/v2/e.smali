.class public final Lv2/e;
.super Ly2/a;
.source "JsonTreeReader.java"


# static fields
.field public static final w:Ljava/io/Reader;

.field public static final x:Ljava/lang/Object;


# instance fields
.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv2/e$a;

    invoke-direct {v0}, Lv2/e$a;-><init>()V

    sput-object v0, Lv2/e;->w:Ljava/io/Reader;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv2/e;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    .line 2
    sget-object v1, Ly2/b;->g:Ly2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Ly2/b;->f:Ly2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/o;

    invoke-virtual {v0}, Ls2/o;->m()J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    return-wide v0
.end method

.method public H()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->e:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public K()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->i:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    return-void
.end method

.method public P()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    .line 2
    sget-object v1, Ly2/b;->f:Ly2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Ly2/b;->g:Ly2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/o;

    invoke-virtual {v0}, Ls2/o;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V()Ly2/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ly2/b;->o:Ly2/b;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ls2/l;

    .line 6
    check-cast v0, Ljava/util/Iterator;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 8
    sget-object v0, Ly2/b;->e:Ly2/b;

    return-object v0

    .line 9
    :cond_1
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    sget-object v0, Ly2/b;->d:Ly2/b;

    goto :goto_0

    :cond_3
    sget-object v0, Ly2/b;->b:Ly2/b;

    :goto_0
    return-object v0

    .line 12
    :cond_4
    instance-of v1, v0, Ls2/l;

    if-eqz v1, :cond_5

    .line 13
    sget-object v0, Ly2/b;->c:Ly2/b;

    return-object v0

    .line 14
    :cond_5
    instance-of v1, v0, Ls2/g;

    if-eqz v1, :cond_6

    .line 15
    sget-object v0, Ly2/b;->a:Ly2/b;

    return-object v0

    .line 16
    :cond_6
    instance-of v1, v0, Ls2/o;

    if-eqz v1, :cond_a

    .line 17
    check-cast v0, Ls2/o;

    .line 18
    invoke-virtual {v0}, Ls2/o;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    sget-object v0, Ly2/b;->f:Ly2/b;

    return-object v0

    .line 20
    :cond_7
    invoke-virtual {v0}, Ls2/o;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    sget-object v0, Ly2/b;->h:Ly2/b;

    return-object v0

    .line 22
    :cond_8
    invoke-virtual {v0}, Ls2/o;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Ly2/b;->g:Ly2/b;

    return-object v0

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_a
    instance-of v1, v0, Ls2/k;

    if-eqz v1, :cond_b

    .line 26
    sget-object v0, Ly2/b;->i:Ly2/b;

    return-object v0

    .line 27
    :cond_b
    sget-object v1, Lv2/e;->x:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->a:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/g;

    .line 3
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    invoke-virtual {v0}, Ls2/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lv2/e;->v:Ljava/util/List;

    sget-object v1, Lv2/e;->x:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->c:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/l;

    .line 3
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    invoke-virtual {v0}, Ls2/l;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->b:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    return-void
.end method

.method public l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->d:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    return-void
.end method

.method public m0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    sget-object v1, Ly2/b;->e:Ly2/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lv2/e;->H()Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public r()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    .line 2
    sget-object v1, Ly2/b;->d:Ly2/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Ly2/b;->b:Ly2/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lv2/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0(Ly2/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->h:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/o;

    invoke-virtual {v0}, Ls2/o;->j()Z

    move-result v0

    return v0
.end method

.method public x0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/b;->e:Ly2/b;

    invoke-virtual {p0, v0}, Lv2/e;->u0(Ly2/b;)V

    .line 2
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lv2/e;->v:Ljava/util/List;

    new-instance v2, Ls2/o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ls2/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public y()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    .line 2
    sget-object v1, Ly2/b;->g:Ly2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Ly2/b;->f:Ly2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/o;

    invoke-virtual {v0}, Ls2/o;->l()D

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Ly2/a;->s()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    return-wide v0
.end method

.method public z()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/e;->V()Ly2/b;

    move-result-object v0

    .line 2
    sget-object v1, Ly2/b;->g:Ly2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Ly2/b;->f:Ly2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv2/e;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/o;

    invoke-virtual {v0}, Ls2/o;->a()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lv2/e;->w0()Ljava/lang/Object;

    return v0
.end method
