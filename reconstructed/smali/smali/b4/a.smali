.class public Lb4/a;
.super Lt3/h;
.source "Select.kt"

# interfaces
.implements Lb4/b;
.implements Lt3/c2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lt3/h;",
        "Lb4/b;",
        "Lt3/c2;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final a:Ld3/g;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb4/a<",
            "TR;>.a;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:Ljava/lang/Object;

.field private volatile state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lb4/a;

    const-class v1, Ljava/lang/Object;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb4/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb4/a;->k(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ld3/g;
    .locals 1

    iget-object v0, p0, Lb4/a;->a:Ld3/g;

    return-object v0
.end method

.method public d(Ly3/e0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/e0<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 2
    iput p2, p0, Lb4/a;->d:I

    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 2

    sget-object p1, Lb4/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    invoke-static {}, Lb4/c;->e()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lb4/c;->d()Ly3/h0;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lb4/a;->b:Ljava/util/List;

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb4/a$a;

    .line 5
    invoke-virtual {v0}, Lb4/a$a;->b()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lb4/c;->c()Ly3/h0;

    move-result-object p1

    iput-object p1, p0, Lb4/a;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lb4/a;->b:Ljava/util/List;

    return-void
.end method

.method public final g(Ljava/lang/Object;)Lb4/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb4/a<",
            "TR;>.a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb4/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lb4/a$a;

    iget-object v3, v3, Lb4/a$a;->a:Ljava/lang/Object;

    if-ne v3, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_3
    check-cast v1, Lb4/a$a;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clause with object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Lb4/d;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb4/a;->k(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lb4/c;->b(I)Lb4/d;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lb4/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lt3/j;

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lb4/a;->g(Ljava/lang/Object;)Lb4/a$a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, p0, p2}, Lb4/a$a;->a(Lb4/b;Ljava/lang/Object;)Ll3/l;

    move-result-object v4

    .line 6
    invoke-static {v0, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    check-cast v1, Lt3/j;

    .line 8
    iput-object p2, p0, Lb4/a;->e:Ljava/lang/Object;

    .line 9
    invoke-static {v1, v4}, Lb4/c;->g(Lt3/j;Ll3/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lb4/a;->e:Ljava/lang/Object;

    return v3

    .line 11
    :cond_3
    invoke-static {}, Lb4/c;->e()Ly3/h0;

    move-result-object v2

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lb4/a$a;

    :goto_1
    if-eqz v2, :cond_5

    const/4 p1, 0x3

    return p1

    .line 12
    :cond_5
    invoke-static {}, Lb4/c;->d()Ly3/h0;

    move-result-object v2

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-static {}, Lb4/c;->f()Ly3/h0;

    move-result-object v2

    invoke-static {v1, v2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lb3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 14
    :cond_7
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Lb3/w;->v(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lb4/a;->f(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
