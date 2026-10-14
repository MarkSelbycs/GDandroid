.class public final Landroidx/work/a$a;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:Lq0/c0;

.field public c:Lq0/k;

.field public d:Ljava/util/concurrent/Executor;

.field public e:Lq0/b;

.field public f:Lq0/v;

.field public g:Lv/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lv/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/work/a$a;->j:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Landroidx/work/a$a;->l:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Landroidx/work/a$a;->m:I

    .line 5
    invoke-static {}, Lq0/c;->c()I

    move-result v0

    iput v0, p0, Landroidx/work/a$a;->n:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/a;
    .locals 1

    new-instance v0, Landroidx/work/a;

    invoke-direct {v0, p0}, Landroidx/work/a;-><init>(Landroidx/work/a$a;)V

    return-object v0
.end method

.method public final b()Lq0/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->e:Lq0/b;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/work/a$a;->n:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final f()Lv/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/a$a;->g:Lv/a;

    return-object v0
.end method

.method public final g()Lq0/k;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->c:Lq0/k;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/work/a$a;->j:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/work/a$a;->l:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/work/a$a;->m:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Landroidx/work/a$a;->k:I

    return v0
.end method

.method public final l()Lq0/v;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->f:Lq0/v;

    return-object v0
.end method

.method public final m()Lv/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv/a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/a$a;->h:Lv/a;

    return-object v0
.end method

.method public final n()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final o()Lq0/c0;
    .locals 1

    iget-object v0, p0, Landroidx/work/a$a;->b:Lq0/c0;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Landroidx/work/a$a;
    .locals 1

    const-string v0, "processName"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/a$a;->i:Ljava/lang/String;

    return-object p0
.end method
