.class public final Ls2/e;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/e$h;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lx2/a<",
            "*>;",
            "Ls2/e$h<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lx2/a<",
            "*>;",
            "Ls2/s<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls2/t;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lu2/c;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Ls2/h;

.field public final k:Ls2/p;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    sget-object v1, Lu2/d;->g:Lu2/d;

    sget-object v2, Ls2/c;->a:Ls2/c;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Ls2/r;->a:Ls2/r;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v12}, Ls2/e;-><init>(Lu2/d;Ls2/d;Ljava/util/Map;ZZZZZZZLs2/r;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lu2/d;Ls2/d;Ljava/util/Map;ZZZZZZZLs2/r;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/d;",
            "Ls2/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ls2/f<",
            "*>;>;ZZZZZZZ",
            "Ls2/r;",
            "Ljava/util/List<",
            "Ls2/t;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ls2/e;->a:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ls2/e;->b:Ljava/util/Map;

    .line 9
    new-instance v0, Ls2/e$a;

    invoke-direct {v0, p0}, Ls2/e$a;-><init>(Ls2/e;)V

    iput-object v0, p0, Ls2/e;->j:Ls2/h;

    .line 10
    new-instance v0, Ls2/e$b;

    invoke-direct {v0, p0}, Ls2/e$b;-><init>(Ls2/e;)V

    iput-object v0, p0, Ls2/e;->k:Ls2/p;

    .line 11
    new-instance v0, Lu2/c;

    invoke-direct {v0, p3}, Lu2/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ls2/e;->d:Lu2/c;

    .line 12
    iput-boolean p4, p0, Ls2/e;->e:Z

    .line 13
    iput-boolean p6, p0, Ls2/e;->g:Z

    .line 14
    iput-boolean p7, p0, Ls2/e;->f:Z

    .line 15
    iput-boolean p8, p0, Ls2/e;->h:Z

    .line 16
    iput-boolean p9, p0, Ls2/e;->i:Z

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sget-object p4, Lv2/m;->Y:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p4, Lv2/h;->b:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p3, p12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    sget-object p4, Lv2/m;->D:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p4, Lv2/m;->m:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p4, Lv2/m;->g:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p4, Lv2/m;->i:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p4, Lv2/m;->k:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {p11}, Ls2/e;->i(Ls2/r;)Ls2/s;

    move-result-object p4

    .line 28
    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-static {p6, p7, p4}, Lv2/m;->a(Ljava/lang/Class;Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Double;

    .line 30
    invoke-virtual {p0, p10}, Ls2/e;->d(Z)Ls2/s;

    move-result-object p8

    .line 31
    invoke-static {p6, p7, p8}, Lv2/m;->a(Ljava/lang/Class;Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Float;

    .line 33
    invoke-virtual {p0, p10}, Ls2/e;->e(Z)Ls2/s;

    move-result-object p8

    .line 34
    invoke-static {p6, p7, p8}, Lv2/m;->a(Ljava/lang/Class;Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object p6, Lv2/m;->x:Ls2/t;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object p6, Lv2/m;->o:Ls2/t;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object p6, Lv2/m;->q:Ls2/t;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p4}, Ls2/e;->a(Ls2/s;)Ls2/s;

    move-result-object p7

    invoke-static {p6, p7}, Lv2/m;->b(Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-class p6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p4}, Ls2/e;->b(Ls2/s;)Ls2/s;

    move-result-object p4

    invoke-static {p6, p4}, Lv2/m;->b(Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object p4, Lv2/m;->s:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object p4, Lv2/m;->z:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object p4, Lv2/m;->F:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object p4, Lv2/m;->H:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lv2/m;->B:Ls2/s;

    invoke-static {p4, p6}, Lv2/m;->b(Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lv2/m;->C:Ls2/s;

    invoke-static {p4, p6}, Lv2/m;->b(Ljava/lang/Class;Ls2/s;)Ls2/t;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object p4, Lv2/m;->J:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object p4, Lv2/m;->L:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object p4, Lv2/m;->P:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object p4, Lv2/m;->R:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object p4, Lv2/m;->W:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object p4, Lv2/m;->N:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p4, Lv2/m;->d:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object p4, Lv2/c;->c:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object p4, Lv2/m;->U:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p4, Lv2/k;->b:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object p4, Lv2/j;->b:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object p4, Lv2/m;->S:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object p4, Lv2/a;->c:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object p4, Lv2/m;->b:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p4, Lv2/b;

    invoke-direct {p4, v0}, Lv2/b;-><init>(Lu2/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p4, Lv2/g;

    invoke-direct {p4, v0, p5}, Lv2/g;-><init>(Lu2/c;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p4, Lv2/d;

    invoke-direct {p4, v0}, Lv2/d;-><init>(Lu2/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object p4, Lv2/m;->Z:Ls2/t;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p4, Lv2/i;

    invoke-direct {p4, v0, p2, p1}, Lv2/i;-><init>(Lu2/c;Ls2/d;Lu2/d;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls2/e;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Ls2/s;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/s<",
            "Ljava/lang/Number;",
            ">;)",
            "Ls2/s<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls2/e$f;

    invoke-direct {v0, p0}, Ls2/e$f;-><init>(Ls2/s;)V

    .line 2
    invoke-virtual {v0}, Ls2/s;->a()Ls2/s;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ls2/s;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/s<",
            "Ljava/lang/Number;",
            ">;)",
            "Ls2/s<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls2/e$g;

    invoke-direct {v0, p0}, Ls2/e$g;-><init>(Ls2/s;)V

    .line 2
    invoke-virtual {v0}, Ls2/s;->a()Ls2/s;

    move-result-object p0

    return-object p0
.end method

.method public static c(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ls2/r;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/r;",
            ")",
            "Ls2/s<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls2/r;->a:Ls2/r;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lv2/m;->t:Ls2/s;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ls2/e$e;

    invoke-direct {p0}, Ls2/e$e;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final d(Z)Ls2/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ls2/s<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lv2/m;->v:Ls2/s;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ls2/e$c;

    invoke-direct {p1, p0}, Ls2/e$c;-><init>(Ls2/e;)V

    return-object p1
.end method

.method public final e(Z)Ls2/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ls2/s<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lv2/m;->u:Ls2/s;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ls2/e$d;

    invoke-direct {p1, p0}, Ls2/e$d;-><init>(Ls2/e;)V

    return-object p1
.end method

.method public f(Ljava/lang/Class;)Ls2/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lx2/a;->a(Ljava/lang/Class;)Lx2/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object p1

    return-object p1
.end method

.method public g(Lx2/a;)Ls2/s;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx2/a<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/s;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ls2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Ls2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/e$h;

    if-eqz v2, :cond_2

    return-object v2

    .line 6
    :cond_2
    :try_start_0
    new-instance v2, Ls2/e$h;

    invoke-direct {v2}, Ls2/e$h;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Ls2/e;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls2/t;

    .line 9
    invoke-interface {v4, p0, p1}, Ls2/t;->a(Ls2/e;Lx2/a;)Ls2/s;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v2, v4}, Ls2/e$h;->e(Ls2/s;)V

    .line 11
    iget-object v2, p0, Ls2/e;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 13
    iget-object p1, p0, Ls2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    .line 14
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 16
    iget-object p1, p0, Ls2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v2
.end method

.method public h(Ls2/t;Lx2/a;)Ls2/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/t;",
            "Lx2/a<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Ls2/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls2/t;

    if-nez v0, :cond_1

    if-ne v3, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v3, p0, p2}, Ls2/t;->a(Ls2/e;Lx2/a;)Ls2/s;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/io/Writer;)Ly2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls2/e;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Ly2/c;

    invoke-direct {v0, p1}, Ly2/c;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Ls2/e;->h:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 5
    invoke-virtual {v0, p1}, Ly2/c;->I(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Ls2/e;->e:Z

    invoke-virtual {v0, p1}, Ly2/c;->M(Z)V

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ls2/k;->a:Ls2/k;

    invoke-virtual {p0, p1}, Ls2/e;->m(Ls2/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls2/e;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Ls2/e;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Ls2/i;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Ls2/e;->p(Ls2/i;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/j;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p3}, Lu2/j;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ls2/e;->j(Ljava/io/Writer;)Ly2/c;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ls2/e;->o(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ls2/j;

    invoke-direct {p2, p1}, Ls2/j;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public o(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly2/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/j;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Ly2/c;->q()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v1}, Ly2/c;->K(Z)V

    .line 4
    invoke-virtual {p3}, Ly2/c;->o()Z

    move-result v1

    .line 5
    iget-boolean v2, p0, Ls2/e;->f:Z

    invoke-virtual {p3, v2}, Ly2/c;->H(Z)V

    .line 6
    invoke-virtual {p3}, Ly2/c;->n()Z

    move-result v2

    .line 7
    iget-boolean v3, p0, Ls2/e;->e:Z

    invoke-virtual {p3, v3}, Ly2/c;->M(Z)V

    .line 8
    :try_start_0
    invoke-virtual {p2, p3, p1}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p3, v0}, Ly2/c;->K(Z)V

    .line 10
    invoke-virtual {p3, v1}, Ly2/c;->H(Z)V

    .line 11
    invoke-virtual {p3, v2}, Ly2/c;->M(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    new-instance p2, Ls2/j;

    invoke-direct {p2, p1}, Ls2/j;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    invoke-virtual {p3, v0}, Ly2/c;->K(Z)V

    .line 14
    invoke-virtual {p3, v1}, Ly2/c;->H(Z)V

    .line 15
    invoke-virtual {p3, v2}, Ly2/c;->M(Z)V

    throw p1
.end method

.method public p(Ls2/i;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/j;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lu2/j;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ls2/e;->j(Ljava/io/Writer;)Ly2/c;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Ls2/e;->q(Ls2/i;Ly2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public q(Ls2/i;Ly2/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls2/j;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ly2/c;->q()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Ly2/c;->K(Z)V

    .line 3
    invoke-virtual {p2}, Ly2/c;->o()Z

    move-result v1

    .line 4
    iget-boolean v2, p0, Ls2/e;->f:Z

    invoke-virtual {p2, v2}, Ly2/c;->H(Z)V

    .line 5
    invoke-virtual {p2}, Ly2/c;->n()Z

    move-result v2

    .line 6
    iget-boolean v3, p0, Ls2/e;->e:Z

    invoke-virtual {p2, v3}, Ly2/c;->M(Z)V

    .line 7
    :try_start_0
    invoke-static {p1, p2}, Lu2/j;->b(Ls2/i;Ly2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p2, v0}, Ly2/c;->K(Z)V

    .line 9
    invoke-virtual {p2, v1}, Ly2/c;->H(Z)V

    .line 10
    invoke-virtual {p2, v2}, Ly2/c;->M(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    new-instance v3, Ls2/j;

    invoke-direct {v3, p1}, Ls2/j;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {p2, v0}, Ly2/c;->K(Z)V

    .line 13
    invoke-virtual {p2, v1}, Ly2/c;->H(Z)V

    .line 14
    invoke-virtual {p2, v2}, Ly2/c;->M(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ls2/e;->e:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/e;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/e;->d:Lu2/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
