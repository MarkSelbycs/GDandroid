.class public final Lv3/i;
.super Ly3/e0;
.source "BufferedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ly3/e0<",
        "Lv3/i<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final e:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLv3/i;Lv3/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lv3/i<",
            "TE;>;",
            "Lv3/b<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Ly3/e0;-><init>(JLy3/e0;I)V

    .line 2
    iput-object p4, p0, Lv3/i;->e:Lv3/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    sget p2, Lv3/c;->b:I

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final B(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lv3/i;->z(ILjava/lang/Object;)V

    return-void
.end method

.method public n()I
    .locals 1

    sget v0, Lv3/c;->b:I

    return v0
.end method

.method public o(ILjava/lang/Throwable;Ld3/g;)V
    .locals 3

    .line 1
    sget p2, Lv3/c;->b:I

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sub-int/2addr p1, p2

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lv3/i;->v(I)Ljava/lang/Object;

    move-result-object p2

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lt3/c2;

    if-nez v2, :cond_b

    instance-of v2, v1, Lv3/u;

    if-eqz v2, :cond_3

    goto :goto_4

    .line 5
    :cond_3
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v2

    if-eq v1, v2, :cond_9

    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lv3/c;->q()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object p1

    if-eq v1, p1, :cond_8

    sget-object p1, Lv3/c;->d:Ly3/h0;

    if-ne v1, p1, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object p1

    if-ne v1, p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-void

    .line 10
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lv3/i;->s(I)V

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lv3/i;->u()Lv3/b;

    move-result-object p1

    iget-object p1, p1, Lv3/b;->b:Ll3/l;

    if-eqz p1, :cond_a

    invoke-static {p1, p2, p3}, Ly3/z;->b(Ll3/l;Ljava/lang/Object;Ld3/g;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 12
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v2

    goto :goto_5

    :cond_c
    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object v2

    .line 13
    :goto_5
    invoke-virtual {p0, p1, v1, v2}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0, p1}, Lv3/i;->s(I)V

    xor-int/lit8 v1, v0, 0x1

    .line 15
    invoke-virtual {p0, p1, v1}, Lv3/i;->x(IZ)V

    if-eqz v0, :cond_d

    .line 16
    invoke-virtual {p0}, Lv3/i;->u()Lv3/b;

    move-result-object p1

    iget-object p1, p1, Lv3/b;->b:Ll3/l;

    if-eqz p1, :cond_d

    invoke-static {p1, p2, p3}, Ly3/z;->b(Ll3/l;Ljava/lang/Object;Ld3/g;)V

    :cond_d
    return-void
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final s(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/i;->z(ILjava/lang/Object;)V

    return-void
.end method

.method public final t(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u()Lv3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/i;->e:Lv3/b;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final v(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lv3/i;->u()Lv3/b;

    move-result-object p2

    iget-wide v0, p0, Ly3/e0;->c:J

    sget v2, Lv3/c;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lv3/b;->I0(J)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Ly3/e0;->p()V

    return-void
.end method

.method public final y(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv3/i;->v(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lv3/i;->s(I)V

    return-object v0
.end method

.method public final z(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv3/i;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method
