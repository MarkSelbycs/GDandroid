.class public Lf2/q;
.super Ljava/lang/Object;
.source "ObjectMapper.java"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/Object;Lf2/l;)V
    .locals 1

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v0

    invoke-static {v0}, Lf2/a;->f(Lf2/f;)Li1/i;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lh1/h;->c(Ljava/lang/Object;Ljava/util/Map;Li1/i;)Ljava/util/Map;

    return-void
.end method

.method public static d(Ljava/util/ResourceBundle;Lf2/l;Lv1/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            "Lf2/l;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, p2}, Lf2/a;->c(Lf2/l;Ljava/lang/Object;Ljava/lang/Object;Lv1/i;)Lf2/l;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/CharSequence;Lf2/l;Lv1/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lf2/l;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lb2/c;->W(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    .line 2
    invoke-static {v0, v1}, Lb2/c;->H(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-static {p1, v0, p0}, Lf2/r;->a(Lf2/l;Ljava/lang/String;Z)Lf2/l;

    return-void

    .line 4
    :cond_0
    new-instance v0, Lf2/o;

    invoke-static {p0}, Lb2/c;->W(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf2/o;-><init>(Ljava/lang/CharSequence;Lf2/f;)V

    invoke-static {v0, p1, p2}, Lf2/q;->h(Lf2/o;Lf2/l;Lv1/i;)V

    return-void
.end method

.method public static g(Lf2/o;Lf2/e;Lv1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/o;",
            "Lf2/e;",
            "Lv1/i<",
            "Ly1/a<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lf2/m;->a(Lf2/o;)Lf2/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lf2/m;->b(Lf2/e;Lv1/i;)V

    return-void
.end method

.method public static h(Lf2/o;Lf2/l;Lv1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/o;",
            "Lf2/l;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lf2/m;->a(Lf2/o;)Lf2/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lf2/m;->c(Lf2/l;Lv1/i;)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)Lf2/q;
    .locals 1

    new-instance v0, Lf2/q;

    invoke-direct {v0, p0}, Lf2/q;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Lf2/e;Lv1/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/e;",
            "Lv1/i<",
            "Ly1/a<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf2/q;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lg2/a;->a(Ljava/lang/reflect/Type;)Lg2/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    const-class v2, Lf2/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Le2/d0;->n(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, p1, v0}, Lg2/c;->a(Lf2/b;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 5
    :cond_1
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1, p2}, Lf2/q;->e(Ljava/lang/CharSequence;Lf2/e;Lv1/i;)V

    goto/16 :goto_3

    .line 7
    :cond_2
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Lf2/o;

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {p1}, Lf2/e;->h()Lf2/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf2/o;-><init>(Ljava/io/Reader;Lf2/f;)V

    invoke-static {v1, p1, p2}, Lf2/q;->g(Lf2/o;Lf2/e;Lv1/i;)V

    goto/16 :goto_3

    .line 9
    :cond_3
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 10
    new-instance v1, Lf2/o;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p1}, Lf2/e;->h()Lf2/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf2/o;-><init>(Ljava/io/InputStream;Lf2/f;)V

    invoke-static {v1, p1, p2}, Lf2/q;->g(Lf2/o;Lf2/e;Lv1/i;)V

    goto/16 :goto_3

    .line 11
    :cond_4
    instance-of v1, v0, [B

    if-eqz v1, :cond_6

    .line 12
    check-cast v0, [B

    .line 13
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    const/16 v1, 0x5b

    aget-byte v4, v0, v2

    if-ne v1, v4, :cond_5

    const/16 v1, 0x5d

    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v3, v0, v4

    if-ne v1, v3, :cond_5

    .line 14
    new-instance v1, Lf2/o;

    invoke-static {v0}, Lt1/d;->q([B)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-virtual {p1}, Lf2/e;->h()Lf2/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf2/o;-><init>(Ljava/io/InputStream;Lf2/f;)V

    invoke-static {v1, p1, p2}, Lf2/q;->g(Lf2/o;Lf2/e;Lv1/i;)V

    goto :goto_3

    .line 15
    :cond_5
    array-length p2, v0

    :goto_0
    if-ge v2, p2, :cond_b

    aget-byte v1, v0, v2

    .line 16
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Lf2/e;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_6
    instance-of v1, v0, Lf2/o;

    if-eqz v1, :cond_7

    .line 18
    check-cast v0, Lf2/o;

    invoke-static {v0, p1, p2}, Lf2/q;->g(Lf2/o;Lf2/e;Lv1/i;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-static {v0}, Le2/c;->s(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    new-instance v1, Ll1/a;

    invoke-direct {v1, v0}, Ll1/a;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_8
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_9

    .line 22
    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    goto :goto_1

    .line 23
    :cond_9
    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_c

    .line 24
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 25
    :goto_1
    invoke-virtual {p1}, Lf2/e;->h()Lf2/f;

    move-result-object v2

    .line 26
    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_a

    .line 28
    invoke-static {v3, v2}, Lf2/p;->n(Ljava/lang/Object;Lf2/f;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lf2/e;->u(Ljava/lang/Object;Lv1/i;)Z

    goto :goto_2

    :cond_b
    :goto_3
    return-void

    .line 29
    :cond_c
    invoke-virtual {p1}, Lf2/e;->h()Lf2/f;

    move-result-object p1

    invoke-virtual {p1}, Lf2/f;->j()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 30
    :cond_d
    new-instance p1, Lf2/h;

    const-string p2, "JSONArray initial value should be a string or collection or array."

    invoke-direct {p1, p2}, Lf2/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lf2/l;Lv1/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/l;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf2/q;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lg2/a;->a(Ljava/lang/reflect/Type;)Lg2/c;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lg2/b;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, p1, v0}, Lg2/c;->a(Lf2/b;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    instance-of v1, v0, Lf2/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Unsupported type [{}] to JSONObject!"

    if-nez v1, :cond_d

    .line 6
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln1/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v3

    invoke-virtual {v3}, Lf2/f;->f()Z

    move-result v3

    invoke-virtual {p1, v2, v1, p2, v3}, Lf2/l;->T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln1/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v2

    invoke-virtual {v2}, Lf2/f;->f()Z

    move-result v2

    invoke-virtual {p1, v1, v0, p2, v2}, Lf2/l;->T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;

    goto/16 :goto_1

    .line 12
    :cond_3
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 13
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Lf2/q;->f(Ljava/lang/CharSequence;Lf2/l;Lv1/i;)V

    goto :goto_1

    .line 14
    :cond_4
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_5

    .line 15
    new-instance v1, Lf2/o;

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf2/o;-><init>(Ljava/io/Reader;Lf2/f;)V

    invoke-static {v1, p1, p2}, Lf2/q;->h(Lf2/o;Lf2/l;Lv1/i;)V

    goto :goto_1

    .line 16
    :cond_5
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_6

    .line 17
    new-instance v1, Lf2/o;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf2/o;-><init>(Ljava/io/InputStream;Lf2/f;)V

    invoke-static {v1, p1, p2}, Lf2/q;->h(Lf2/o;Lf2/l;Lv1/i;)V

    goto :goto_1

    .line 18
    :cond_6
    instance-of v1, v0, [B

    if-eqz v1, :cond_7

    .line 19
    new-instance v1, Lf2/o;

    check-cast v0, [B

    invoke-static {v0}, Lt1/d;->q([B)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf2/o;-><init>(Ljava/io/InputStream;Lf2/f;)V

    invoke-static {v1, p1, p2}, Lf2/q;->h(Lf2/o;Lf2/l;Lv1/i;)V

    goto :goto_1

    .line 20
    :cond_7
    instance-of v1, v0, Lf2/o;

    if-eqz v1, :cond_8

    .line 21
    check-cast v0, Lf2/o;

    invoke-static {v0, p1, p2}, Lf2/q;->h(Lf2/o;Lf2/l;Lv1/i;)V

    goto :goto_1

    .line 22
    :cond_8
    instance-of v1, v0, Ljava/util/ResourceBundle;

    if-eqz v1, :cond_9

    .line 23
    check-cast v0, Ljava/util/ResourceBundle;

    invoke-static {v0, p1, p2}, Lf2/q;->d(Ljava/util/ResourceBundle;Lf2/l;Lv1/i;)V

    goto :goto_1

    .line 24
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lh1/h;->k(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 25
    invoke-static {v0, p1}, Lf2/q;->c(Ljava/lang/Object;Lf2/l;)V

    goto :goto_1

    .line 26
    :cond_a
    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object p1

    invoke-virtual {p1}, Lf2/f;->j()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    :goto_1
    return-void

    .line 27
    :cond_c
    new-instance p1, Lf2/h;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-direct {p1, v4, p2}, Lf2/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 28
    :cond_d
    new-instance p1, Lf2/h;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-direct {p1, v4, p2}, Lf2/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;Lf2/e;Lv1/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lf2/e;",
            "Lv1/i<",
            "Ly1/a<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lf2/o;

    invoke-static {p1}, Lb2/c;->W(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lf2/e;->h()Lf2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lf2/o;-><init>(Ljava/lang/CharSequence;Lf2/f;)V

    invoke-static {v0, p2, p3}, Lf2/q;->g(Lf2/o;Lf2/e;Lv1/i;)V

    :cond_0
    return-void
.end method
