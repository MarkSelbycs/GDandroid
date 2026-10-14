.class public Lo1/a;
.super Ln1/a;
.source "ArrayConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lo1/a;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ln1/a;-><init>()V

    if-nez p1, :cond_0

    .line 3
    const-class p1, [Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lo1/a;->a:Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Le2/c;->n(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo1/a;->a:Ljava/lang/Class;

    .line 9
    :goto_0
    iput-boolean p2, p0, Lo1/a;->c:Z

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lo1/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lo1/a;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lo1/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le2/c;->o(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Le2/c;->y(Ljava/lang/Object;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lo1/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    iget-boolean v1, p0, Lo1/a;->c:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Ln1/c;->f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lk1/b;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk1/b;->a(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lb2/c;->D(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lo1/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 14
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo1/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_5
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 17
    check-cast p1, Ljava/util/Collection;

    .line 18
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Lo1/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21
    :cond_6
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_7

    .line 22
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Ll1/f;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 24
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo1/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 26
    :cond_7
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_8

    .line 27
    check-cast p1, Ljava/util/Iterator;

    invoke-static {p1}, Ll1/f;->b(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 29
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo1/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 31
    :cond_8
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_9

    .line 32
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Le2/e;->n(Ljava/lang/Number;)[B

    move-result-object v0

    goto :goto_5

    .line 33
    :cond_9
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    .line 34
    invoke-static {p1}, Le2/p;->k(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_5

    .line 35
    :cond_a
    invoke-virtual {p0, p1}, Lo1/a;->u(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :cond_b
    :goto_5
    return-object v0
.end method

.method public final u(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le2/c;->B(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lo1/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method
