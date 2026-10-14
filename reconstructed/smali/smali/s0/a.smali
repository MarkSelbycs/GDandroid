.class public Ls0/a;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Lr0/w;

.field public final b:Lq0/v;

.field public final c:Lq0/b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls0/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lr0/w;Lq0/v;Lq0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls0/a;->a:Lr0/w;

    .line 3
    iput-object p2, p0, Ls0/a;->b:Lq0/v;

    .line 4
    iput-object p3, p0, Ls0/a;->c:Lq0/b;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ls0/a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lz0/u;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/a;->d:Ljava/util/Map;

    iget-object v1, p1, Lz0/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ls0/a;->b:Lq0/v;

    invoke-interface {v1, v0}, Lq0/v;->a(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    new-instance v0, Ls0/a$a;

    invoke-direct {v0, p0, p1}, Ls0/a$a;-><init>(Ls0/a;Lz0/u;)V

    .line 4
    iget-object v1, p0, Ls0/a;->d:Ljava/util/Map;

    iget-object p1, p1, Lz0/u;->a:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Ls0/a;->c:Lq0/b;

    invoke-interface {p1}, Lq0/b;->a()J

    move-result-wide v1

    sub-long/2addr p2, v1

    .line 6
    iget-object p1, p0, Ls0/a;->b:Lq0/v;

    invoke-interface {p1, p2, p3, v0}, Lq0/v;->b(JLjava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Ls0/a;->b:Lq0/v;

    invoke-interface {v0, p1}, Lq0/v;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
