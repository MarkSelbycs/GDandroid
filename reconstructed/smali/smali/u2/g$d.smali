.class public abstract Lu2/g$d;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lu2/g$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/g$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Lu2/g$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/g$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Lu2/g;


# direct methods
.method public constructor <init>(Lu2/g;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu2/g$d;->d:Lu2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lu2/g;->e:Lu2/g$e;

    iget-object v0, v0, Lu2/g$e;->d:Lu2/g$e;

    iput-object v0, p0, Lu2/g$d;->a:Lu2/g$e;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lu2/g$d;->b:Lu2/g$e;

    .line 4
    iget p1, p1, Lu2/g;->d:I

    iput p1, p0, Lu2/g$d;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lu2/g$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu2/g$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/g$d;->a:Lu2/g$e;

    .line 2
    iget-object v1, p0, Lu2/g$d;->d:Lu2/g;

    iget-object v2, v1, Lu2/g;->e:Lu2/g$e;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, Lu2/g;->d:I

    iget v2, p0, Lu2/g$d;->c:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Lu2/g$e;->d:Lu2/g$e;

    iput-object v1, p0, Lu2/g$d;->a:Lu2/g$e;

    .line 5
    iput-object v0, p0, Lu2/g$d;->b:Lu2/g$e;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lu2/g$d;->a:Lu2/g$e;

    iget-object v1, p0, Lu2/g$d;->d:Lu2/g;

    iget-object v1, v1, Lu2/g;->e:Lu2/g$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu2/g$d;->b:Lu2/g$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lu2/g$d;->d:Lu2/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lu2/g;->q(Lu2/g$e;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lu2/g$d;->b:Lu2/g$e;

    .line 4
    iget-object v0, p0, Lu2/g$d;->d:Lu2/g;

    iget v0, v0, Lu2/g;->d:I

    iput v0, p0, Lu2/g$d;->c:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
