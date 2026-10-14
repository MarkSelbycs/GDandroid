.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "WorkerParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroidx/work/b;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/work/WorkerParameters$a;

.field public e:I

.field public f:Ljava/util/concurrent/Executor;

.field public g:Lc1/b;

.field public h:Lq0/c0;

.field public i:Lq0/u;

.field public j:Lq0/i;

.field public k:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;IILjava/util/concurrent/Executor;Lc1/b;Lq0/c0;Lq0/u;Lq0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/WorkerParameters$a;",
            "II",
            "Ljava/util/concurrent/Executor;",
            "Lc1/b;",
            "Lq0/c0;",
            "Lq0/u;",
            "Lq0/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/b;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    .line 6
    iput p5, p0, Landroidx/work/WorkerParameters;->e:I

    .line 7
    iput p6, p0, Landroidx/work/WorkerParameters;->k:I

    .line 8
    iput-object p7, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p8, p0, Landroidx/work/WorkerParameters;->g:Lc1/b;

    .line 10
    iput-object p9, p0, Landroidx/work/WorkerParameters;->h:Lq0/c0;

    .line 11
    iput-object p10, p0, Landroidx/work/WorkerParameters;->i:Lq0/u;

    .line 12
    iput-object p11, p0, Landroidx/work/WorkerParameters;->j:Lq0/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Lq0/i;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->j:Lq0/i;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroidx/work/WorkerParameters;->k:I

    return v0
.end method

.method public d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public e()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/b;

    return-object v0
.end method

.method public f()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    iget-object v0, v0, Landroidx/work/WorkerParameters$a;->c:Landroid/net/Network;

    return-object v0
.end method

.method public g()Lq0/u;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->i:Lq0/u;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroidx/work/WorkerParameters;->e:I

    return v0
.end method

.method public i()Landroidx/work/WorkerParameters$a;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/Set;

    return-object v0
.end method

.method public k()Lc1/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->g:Lc1/b;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    iget-object v0, v0, Landroidx/work/WorkerParameters$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    iget-object v0, v0, Landroidx/work/WorkerParameters$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public n()Lq0/c0;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->h:Lq0/c0;

    return-object v0
.end method
