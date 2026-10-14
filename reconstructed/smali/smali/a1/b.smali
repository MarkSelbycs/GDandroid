.class public abstract La1/b;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr0/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr0/q;

    invoke-direct {v0}, Lr0/q;-><init>()V

    iput-object v0, p0, La1/b;->a:Lr0/q;

    return-void
.end method

.method public static b(Lr0/p0;)La1/b;
    .locals 1

    new-instance v0, La1/b$d;

    invoke-direct {v0, p0}, La1/b$d;-><init>(Lr0/p0;)V

    return-object v0
.end method

.method public static c(Ljava/util/UUID;Lr0/p0;)La1/b;
    .locals 1

    new-instance v0, La1/b$a;

    invoke-direct {v0, p1, p0}, La1/b$a;-><init>(Lr0/p0;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lr0/p0;Z)La1/b;
    .locals 1

    new-instance v0, La1/b$c;

    invoke-direct {v0, p1, p0, p2}, La1/b$c;-><init>(Lr0/p0;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Lr0/p0;)La1/b;
    .locals 1

    new-instance v0, La1/b$b;

    invoke-direct {v0, p1, p0}, La1/b$b;-><init>(Lr0/p0;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lr0/p0;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, La1/b;->g(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lr0/p0;->q()Lr0/u;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p2, v1}, Lr0/u;->t(Ljava/lang/String;I)Z

    .line 4
    invoke-virtual {p1}, Lr0/p0;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/w;

    .line 5
    invoke-interface {v0, p2}, Lr0/w;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Lq0/r;
    .locals 1

    iget-object v0, p0, La1/b;->a:Lr0/q;

    return-object v0
.end method

.method public final g(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->D()Lz0/b;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-interface {v0, p2}, Lz0/v;->b(Ljava/lang/String;)Lq0/y$c;

    move-result-object v2

    .line 8
    sget-object v3, Lq0/y$c;->c:Lq0/y$c;

    if-eq v2, v3, :cond_0

    sget-object v3, Lq0/y$c;->d:Lq0/y$c;

    if-eq v2, v3, :cond_0

    .line 9
    invoke-interface {v0, p2}, Lz0/v;->k(Ljava/lang/String;)I

    .line 10
    :cond_0
    invoke-interface {p1, p2}, Lz0/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Lr0/p0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lr0/p0;->s()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {v0, v1, p1}, Lr0/z;->h(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public abstract i()V
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, La1/b;->i()V

    .line 2
    iget-object v0, p0, La1/b;->a:Lr0/q;

    sget-object v1, Lq0/r;->a:Lq0/r$b$c;

    invoke-virtual {v0, v1}, Lr0/q;->b(Lq0/r$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, La1/b;->a:Lr0/q;

    new-instance v2, Lq0/r$b$a;

    invoke-direct {v2, v0}, Lq0/r$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lr0/q;->b(Lq0/r$b;)V

    :goto_0
    return-void
.end method
