.class public final Lu2/d;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Ls2/t;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final g:Lu2/d;


# instance fields
.field public a:D

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls2/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu2/d;

    invoke-direct {v0}, Lu2/d;-><init>()V

    sput-object v0, Lu2/d;->g:Lu2/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lu2/d;->a:D

    const/16 v0, 0x88

    .line 3
    iput v0, p0, Lu2/d;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lu2/d;->c:Z

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu2/d;->e:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu2/d;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/e;",
            "Lx2/a<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lu2/d;->d(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lu2/d;->d(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lu2/d$a;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lu2/d$a;-><init>(Lu2/d;ZZLs2/e;Lx2/a;)V

    return-object v0
.end method

.method public b()Lu2/d;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lu2/d;->b()Lu2/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Class;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lu2/d;->a:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lt2/d;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lt2/d;

    const-class v2, Lt2/e;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lt2/e;

    invoke-virtual {p0, v0, v2}, Lu2/d;->m(Lt2/d;Lt2/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lu2/d;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lu2/d;->g(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lu2/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Lu2/d;->e:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lu2/d;->f:Ljava/util/List;

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/a;

    .line 7
    invoke-interface {v0, p1}, Ls2/a;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    .line 1
    iget v0, p0, Lu2/d;->b:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lu2/d;->a:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lt2/d;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lt2/d;

    const-class v2, Lt2/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lt2/e;

    invoke-virtual {p0, v0, v2}, Lu2/d;->m(Lt2/d;Lt2/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-boolean v0, p0, Lu2/d;->d:Z

    if-eqz v0, :cond_5

    .line 6
    const-class v0, Lt2/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lt2/a;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {v0}, Lt2/a;->serialize()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lt2/a;->deserialize()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    .line 8
    :cond_5
    iget-boolean v0, p0, Lu2/d;->c:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu2/d;->g(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 9
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu2/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    .line 10
    iget-object p2, p0, Lu2/d;->e:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lu2/d;->f:Ljava/util/List;

    .line 11
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 12
    new-instance v0, Ls2/b;

    invoke-direct {v0, p1}, Ls2/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls2/a;

    .line 14
    invoke-interface {p2, v0}, Ls2/a;->b(Ls2/b;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lu2/d;->h(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j(Lt2/d;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lt2/d;->value()D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lu2/d;->a:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final k(Lt2/e;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lt2/e;->value()D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lu2/d;->a:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final m(Lt2/d;Lt2/e;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lu2/d;->j(Lt2/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lu2/d;->k(Lt2/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
