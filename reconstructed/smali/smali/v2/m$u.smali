.class public final Lv2/m$u;
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
        "Ls2/i;",
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

    invoke-virtual {p0, p1}, Lv2/m$u;->e(Ly2/a;)Ls2/i;

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

    check-cast p2, Ls2/i;

    invoke-virtual {p0, p1, p2}, Lv2/m$u;->f(Ly2/c;Ls2/i;)V

    return-void
.end method

.method public e(Ly2/a;)Ls2/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lv2/m$b0;->a:[I

    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    new-instance v0, Ls2/l;

    invoke-direct {v0}, Ls2/l;-><init>()V

    .line 4
    invoke-virtual {p1}, Ly2/a;->e()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ly2/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Ly2/a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lv2/m$u;->e(Ly2/a;)Ls2/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls2/l;->j(Ljava/lang/String;Ls2/i;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ly2/a;->l()V

    return-object v0

    .line 8
    :pswitch_1
    new-instance v0, Ls2/g;

    invoke-direct {v0}, Ls2/g;-><init>()V

    .line 9
    invoke-virtual {p1}, Ly2/a;->c()V

    .line 10
    :goto_1
    invoke-virtual {p1}, Ly2/a;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lv2/m$u;->e(Ly2/a;)Ls2/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls2/g;->k(Ls2/i;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Ly2/a;->j()V

    return-object v0

    .line 13
    :pswitch_2
    invoke-virtual {p1}, Ly2/a;->K()V

    .line 14
    sget-object p1, Ls2/k;->a:Ls2/k;

    return-object p1

    .line 15
    :pswitch_3
    new-instance v0, Ls2/o;

    invoke-virtual {p1}, Ly2/a;->P()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 16
    :pswitch_4
    new-instance v0, Ls2/o;

    invoke-virtual {p1}, Ly2/a;->x()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Ls2/o;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 17
    :pswitch_5
    invoke-virtual {p1}, Ly2/a;->P()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Ls2/o;

    new-instance v1, Lu2/f;

    invoke-direct {v1, p1}, Lu2/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ls2/o;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ly2/c;Ls2/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Ls2/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Ls2/i;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Ls2/i;->d()Ls2/o;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ls2/o;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Ls2/o;->n()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly2/c;->V(Ljava/lang/Number;)Ly2/c;

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-virtual {p2}, Ls2/o;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Ls2/o;->j()Z

    move-result p2

    invoke-virtual {p1, p2}, Ly2/c;->Y(Z)Ly2/c;

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {p2}, Ls2/o;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly2/c;->X(Ljava/lang/String;)Ly2/c;

    goto/16 :goto_3

    .line 9
    :cond_3
    invoke-virtual {p2}, Ls2/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Ly2/c;->f()Ly2/c;

    .line 11
    invoke-virtual {p2}, Ls2/i;->b()Ls2/g;

    move-result-object p2

    invoke-virtual {p2}, Ls2/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/i;

    .line 12
    invoke-virtual {p0, p1, v0}, Lv2/m$u;->f(Ly2/c;Ls2/i;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Ly2/c;->j()Ly2/c;

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {p2}, Ls2/i;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Ly2/c;->h()Ly2/c;

    .line 16
    invoke-virtual {p2}, Ls2/i;->c()Ls2/l;

    move-result-object p2

    invoke-virtual {p2}, Ls2/l;->n()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ly2/c;->r(Ljava/lang/String;)Ly2/c;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/i;

    invoke-virtual {p0, p1, v0}, Lv2/m$u;->f(Ly2/c;Ls2/i;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p1}, Ly2/c;->l()Ly2/c;

    goto :goto_3

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    :goto_2
    invoke-virtual {p1}, Ly2/c;->u()Ly2/c;

    :goto_3
    return-void
.end method
