.class public Lv1/p;
.super Lj1/b;
.source "Tuple.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj1/b<",
        "Lv1/p;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1/b;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/p;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lv1/p;

    .line 3
    iget-object v0, p0, Lv1/p;->a:[Ljava/lang/Object;

    iget-object p1, p1, Lv1/p;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv1/p;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lv1/p;->b:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x1f

    .line 2
    iget-object v1, p0, Lv1/p;->a:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget-boolean v1, p0, Lv1/p;->c:Z

    if-eqz v1, :cond_1

    .line 4
    iput v0, p0, Lv1/p;->b:I

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ll1/a;

    iget-object v1, p0, Lv1/p;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ll1/a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv1/p;->a:[Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv1/p;->a:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
