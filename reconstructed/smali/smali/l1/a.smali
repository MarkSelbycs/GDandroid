.class public Ll1/a;
.super Ljava/lang/Object;
.source "ArrayIter.java"

# interfaces
.implements Ll1/g;
.implements Ljava/util/Iterator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll1/g<",
        "TE;>;",
        "Ljava/util/Iterator;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ll1/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Ll1/a;-><init>(Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ll1/a;->c:I

    if-lez p3, :cond_0

    if-ge p3, v0, :cond_0

    .line 6
    iput p3, p0, Ll1/a;->c:I

    :cond_0
    if-ltz p2, :cond_1

    .line 7
    iget p3, p0, Ll1/a;->c:I

    if-ge p2, p3, :cond_1

    .line 8
    iput p2, p0, Ll1/a;->b:I

    .line 9
    :cond_1
    iput-object p1, p0, Ll1/a;->a:Ljava/lang/Object;

    .line 10
    iget p1, p0, Ll1/a;->b:I

    iput p1, p0, Ll1/a;->d:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ll1/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Ll1/a;->d:I

    iget v1, p0, Ll1/a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll1/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ll1/a;->a:Ljava/lang/Object;

    iget v1, p0, Ll1/a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ll1/a;->d:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
