.class public final Lq0/d$a;
.super Ljava/lang/Object;
.source "Constraints.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lq0/o;

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq0/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lq0/o;->a:Lq0/o;

    iput-object v0, p0, Lq0/d$a;->c:Lq0/o;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lq0/d$a;->f:J

    .line 4
    iput-wide v0, p0, Lq0/d$a;->g:J

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lq0/d$a;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)Lq0/d$a;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/d$a;->h:Ljava/util/Set;

    new-instance v1, Lq0/d$c;

    invoke-direct {v1, p1, p2}, Lq0/d$c;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b()Lq0/d;
    .locals 12

    .line 1
    iget-object v0, p0, Lq0/d$a;->h:Ljava/util/Set;

    invoke-static {v0}, Lb3/w;->E(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    .line 2
    iget-wide v7, p0, Lq0/d$a;->f:J

    .line 3
    iget-wide v9, p0, Lq0/d$a;->g:J

    .line 4
    iget-boolean v3, p0, Lq0/d$a;->a:Z

    .line 5
    iget-boolean v0, p0, Lq0/d$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 6
    iget-object v2, p0, Lq0/d$a;->c:Lq0/o;

    .line 7
    iget-boolean v5, p0, Lq0/d$a;->d:Z

    .line 8
    iget-boolean v6, p0, Lq0/d$a;->e:Z

    .line 9
    new-instance v0, Lq0/d;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lq0/d;-><init>(Lq0/o;ZZZZJJLjava/util/Set;)V

    return-object v0
.end method

.method public final c(Lq0/o;)Lq0/d$a;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lq0/d$a;->c:Lq0/o;

    return-object p0
.end method

.method public final d(Z)Lq0/d$a;
    .locals 0

    iput-boolean p1, p0, Lq0/d$a;->d:Z

    return-object p0
.end method

.method public final e(Z)Lq0/d$a;
    .locals 0

    iput-boolean p1, p0, Lq0/d$a;->a:Z

    return-object p0
.end method

.method public final f(Z)Lq0/d$a;
    .locals 0

    iput-boolean p1, p0, Lq0/d$a;->b:Z

    return-object p0
.end method

.method public final g(Z)Lq0/d$a;
    .locals 0

    iput-boolean p1, p0, Lq0/d$a;->e:Z

    return-object p0
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;)Lq0/d$a;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lq0/d$a;->g:J

    return-object p0
.end method

.method public final i(JLjava/util/concurrent/TimeUnit;)Lq0/d$a;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lq0/d$a;->f:J

    return-object p0
.end method
