.class public final Lh4/i;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lc4/s$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf4/g;

.field public final c:Lh4/h;

.field public final d:Lc4/i;

.field public final e:I

.field public final f:Lc4/y;

.field public g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lf4/g;Lh4/h;Lc4/i;ILc4/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc4/s;",
            ">;",
            "Lf4/g;",
            "Lh4/h;",
            "Lc4/i;",
            "I",
            "Lc4/y;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh4/i;->a:Ljava/util/List;

    .line 3
    iput-object p4, p0, Lh4/i;->d:Lc4/i;

    .line 4
    iput-object p2, p0, Lh4/i;->b:Lf4/g;

    .line 5
    iput-object p3, p0, Lh4/i;->c:Lh4/h;

    .line 6
    iput p5, p0, Lh4/i;->e:I

    .line 7
    iput-object p6, p0, Lh4/i;->f:Lc4/y;

    return-void
.end method


# virtual methods
.method public a(Lc4/y;)Lc4/a0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh4/i;->b:Lf4/g;

    iget-object v1, p0, Lh4/i;->c:Lh4/h;

    iget-object v2, p0, Lh4/i;->d:Lc4/i;

    invoke-virtual {p0, p1, v0, v1, v2}, Lh4/i;->d(Lc4/y;Lf4/g;Lh4/h;Lc4/i;)Lc4/a0;

    move-result-object p1

    return-object p1
.end method

.method public b()Lc4/y;
    .locals 1

    iget-object v0, p0, Lh4/i;->f:Lc4/y;

    return-object v0
.end method

.method public c()Lh4/h;
    .locals 1

    iget-object v0, p0, Lh4/i;->c:Lh4/h;

    return-object v0
.end method

.method public d(Lc4/y;Lf4/g;Lh4/h;Lc4/i;)Lc4/a0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lh4/i;->e:I

    iget-object v1, p0, Lh4/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2
    iget v0, p0, Lh4/i;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lh4/i;->g:I

    .line 3
    iget-object v0, p0, Lh4/i;->c:Lh4/h;

    const-string v2, "network interceptor "

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc4/y;->m()Lc4/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh4/i;->e(Lc4/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lh4/i;->a:Ljava/util/List;

    iget p4, p0, Lh4/i;->e:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " must retain the same host and port"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lh4/i;->c:Lh4/h;

    const-string v3, " must call proceed() exactly once"

    if-eqz v0, :cond_3

    iget v0, p0, Lh4/i;->g:I

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lh4/i;->a:Ljava/util/List;

    iget p4, p0, Lh4/i;->e:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Lh4/i;

    iget-object v5, p0, Lh4/i;->a:Ljava/util/List;

    iget v4, p0, Lh4/i;->e:I

    add-int/lit8 v9, v4, 0x1

    move-object v4, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lh4/i;-><init>(Ljava/util/List;Lf4/g;Lh4/h;Lc4/i;ILc4/y;)V

    .line 8
    iget-object p1, p0, Lh4/i;->a:Ljava/util/List;

    iget p2, p0, Lh4/i;->e:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc4/s;

    .line 9
    invoke-interface {p1, v0}, Lc4/s;->a(Lc4/s$a;)Lc4/a0;

    move-result-object p2

    if-eqz p3, :cond_5

    .line 10
    iget p3, p0, Lh4/i;->e:I

    add-int/2addr p3, v1

    iget-object p4, p0, Lh4/i;->a:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_5

    iget p3, v0, Lh4/i;->g:I

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    return-object p2

    .line 12
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "interceptor "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final e(Lc4/r;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh4/i;->d:Lc4/i;

    invoke-interface {v1}, Lc4/i;->a()Lc4/c0;

    move-result-object v1

    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    invoke-virtual {v1}, Lc4/a;->k()Lc4/r;

    move-result-object v1

    invoke-virtual {v1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lc4/r;->A()I

    move-result p1

    iget-object v0, p0, Lh4/i;->d:Lc4/i;

    invoke-interface {v0}, Lc4/i;->a()Lc4/c0;

    move-result-object v0

    invoke-virtual {v0}, Lc4/c0;->a()Lc4/a;

    move-result-object v0

    invoke-virtual {v0}, Lc4/a;->k()Lc4/r;

    move-result-object v0

    invoke-virtual {v0}, Lc4/r;->A()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Lf4/g;
    .locals 1

    iget-object v0, p0, Lh4/i;->b:Lf4/g;

    return-object v0
.end method
