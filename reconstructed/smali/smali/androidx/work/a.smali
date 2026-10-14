.class public final Landroidx/work/a;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/a$a;,
        Landroidx/work/a$b;,
        Landroidx/work/a$c;
    }
.end annotation


# static fields
.field public static final p:Landroidx/work/a$b;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lq0/b;

.field public final d:Lq0/c0;

.field public final e:Lq0/k;

.field public final f:Lq0/v;

.field public final g:Lv/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lv/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/a$b;-><init>(Lm3/g;)V

    sput-object v0, Landroidx/work/a;->p:Landroidx/work/a$b;

    return-void
.end method

.method public constructor <init>(Landroidx/work/a$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/work/a$a;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lq0/c;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {p1}, Landroidx/work/a$a;->n()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/work/a;->o:Z

    .line 4
    invoke-virtual {p1}, Landroidx/work/a$a;->n()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lq0/c;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p1}, Landroidx/work/a$a;->b()Lq0/b;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lq0/w;

    invoke-direct {v0}, Lq0/w;-><init>()V

    :cond_3
    iput-object v0, p0, Landroidx/work/a;->c:Lq0/b;

    .line 6
    invoke-virtual {p1}, Landroidx/work/a$a;->o()Lq0/c0;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lq0/c0;->c()Lq0/c0;

    move-result-object v0

    const-string v1, "getDefaultWorkerFactory()"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iput-object v0, p0, Landroidx/work/a;->d:Lq0/c0;

    .line 7
    invoke-virtual {p1}, Landroidx/work/a$a;->g()Lq0/k;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lq0/p;->a:Lq0/p;

    :cond_5
    iput-object v0, p0, Landroidx/work/a;->e:Lq0/k;

    .line 8
    invoke-virtual {p1}, Landroidx/work/a$a;->l()Lq0/v;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lr0/e;

    invoke-direct {v0}, Lr0/e;-><init>()V

    :cond_6
    iput-object v0, p0, Landroidx/work/a;->f:Lq0/v;

    .line 9
    invoke-virtual {p1}, Landroidx/work/a$a;->h()I

    move-result v0

    iput v0, p0, Landroidx/work/a;->j:I

    .line 10
    invoke-virtual {p1}, Landroidx/work/a$a;->k()I

    move-result v0

    iput v0, p0, Landroidx/work/a;->k:I

    .line 11
    invoke-virtual {p1}, Landroidx/work/a$a;->i()I

    move-result v0

    iput v0, p0, Landroidx/work/a;->l:I

    .line 12
    invoke-virtual {p1}, Landroidx/work/a$a;->j()I

    move-result v0

    .line 13
    iput v0, p0, Landroidx/work/a;->n:I

    .line 14
    invoke-virtual {p1}, Landroidx/work/a$a;->f()Lv/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->g:Lv/a;

    .line 15
    invoke-virtual {p1}, Landroidx/work/a$a;->m()Lv/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->h:Lv/a;

    .line 16
    invoke-virtual {p1}, Landroidx/work/a$a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->i:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroidx/work/a$a;->c()I

    move-result p1

    iput p1, p0, Landroidx/work/a;->m:I

    return-void
.end method


# virtual methods
.method public final a()Lq0/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->c:Lq0/b;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->m:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final e()Lv/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/a;->g:Lv/a;

    return-object v0
.end method

.method public final f()Lq0/k;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->e:Lq0/k;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->l:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->n:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->k:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->j:I

    return v0
.end method

.method public final k()Lq0/v;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->f:Lq0/v;

    return-object v0
.end method

.method public final l()Lv/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/a;->h:Lv/a;

    return-object v0
.end method

.method public final m()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final n()Lq0/c0;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->d:Lq0/c0;

    return-object v0
.end method
