.class public Lp4/j0;
.super Ljava/lang/Object;
.source "UsmUserTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/j0$a;
    }
.end annotation


# static fields
.field public static final b:Ln4/a;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lp4/j0$a;",
            "Lp4/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lp4/j0;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/j0;->b:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lp4/j0;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized b(Lp4/i0;)Lp4/i0;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lp4/j0;->b:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lp4/i0;->h()Lr4/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lp4/j0;->a:Ljava/util/Map;

    new-instance v1, Lp4/j0$a;

    invoke-direct {v1, p1}, Lp4/j0$a;-><init>(Lp4/i0;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lr4/k;)Lp4/i0;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp4/j0;->a:Ljava/util/Map;

    new-instance v1, Lp4/j0$a;

    new-instance v2, Lr4/k;

    invoke-direct {v2}, Lr4/k;-><init>()V

    invoke-direct {v1, v2, p1}, Lp4/j0$a;-><init>(Lr4/k;Lr4/k;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lr4/k;Lr4/k;)Lp4/i0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp4/j0;->a:Ljava/util/Map;

    new-instance v1, Lp4/j0$a;

    invoke-direct {v1, p1, p2}, Lp4/j0$a;-><init>(Lr4/k;Lr4/k;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
