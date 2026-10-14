.class public Ld2/a;
.super Ll1/d;
.source "SplitIter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/d<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lc2/d;

.field public final e:I

.field public final f:Z

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lc2/d;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll1/d;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Text must be not null!"

    .line 2
    invoke-static {p1, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/a;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, p1}, Lc2/d;->h(Ljava/lang/CharSequence;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Ld2/a;->d:Lc2/d;

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    .line 5
    :goto_0
    iput p3, p0, Ld2/a;->e:I

    .line 6
    iput-boolean p4, p0, Ld2/a;->f:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld2/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Ld2/a;->h:I

    iget v1, p0, Ld2/a;->e:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    iget v0, p0, Ld2/a;->g:I

    iget-object v1, p0, Ld2/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Ld2/a;->h:I

    iget v1, p0, Ld2/a;->e:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-boolean v0, p0, Ld2/a;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ld2/a;->g:I

    iget-object v1, p0, Ld2/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget v0, p0, Ld2/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/a;->h:I

    .line 5
    iget-object v0, p0, Ld2/a;->c:Ljava/lang/String;

    iget v1, p0, Ld2/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Ld2/a;->d:Lc2/d;

    iget v1, p0, Ld2/a;->g:I

    invoke-interface {v0, v1}, Lc2/b;->c(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 7
    iget v0, p0, Ld2/a;->g:I

    iget-object v1, p0, Ld2/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Ld2/a;->c:Ljava/lang/String;

    iget v1, p0, Ld2/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-boolean v1, p0, Ld2/a;->f:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const v1, 0x7fffffff

    .line 10
    iput v1, p0, Ld2/a;->g:I

    return-object v0

    :cond_4
    return-object v2

    .line 11
    :cond_5
    iget-object v1, p0, Ld2/a;->c:Ljava/lang/String;

    iget v2, p0, Ld2/a;->g:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Ld2/a;->d:Lc2/d;

    invoke-interface {v2, v0}, Lc2/b;->b(I)I

    move-result v0

    iput v0, p0, Ld2/a;->g:I

    .line 13
    iget-boolean v0, p0, Ld2/a;->f:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Ld2/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_6
    iget v0, p0, Ld2/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/a;->h:I

    return-object v1

    :cond_7
    :goto_0
    return-object v2
.end method

.method public e(Ljava/util/function/Function;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ll1/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Ll1/d;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Ld2/a;->f:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Le2/b0;->e0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    :cond_2
    return-object v0
.end method
