.class public abstract Landroidx/room/o0;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Landroidx/room/i0;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:La3/d;


# direct methods
.method public constructor <init>(Landroidx/room/i0;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/o0;->a:Landroidx/room/i0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/o0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance p1, Landroidx/room/o0$a;

    invoke-direct {p1, p0}, Landroidx/room/o0$a;-><init>(Landroidx/room/o0;)V

    invoke-static {p1}, La3/e;->a(Ll3/a;)La3/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/o0;->c:La3/d;

    return-void
.end method

.method public static final synthetic a(Landroidx/room/o0;)Lf0/k;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/o0;->d()Lf0/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lf0/k;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/room/o0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/room/o0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/room/o0;->g(Z)Lf0/k;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/room/o0;->a:Landroidx/room/i0;

    invoke-virtual {v0}, Landroidx/room/i0;->c()V

    return-void
.end method

.method public final d()Lf0/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/o0;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/room/o0;->a:Landroidx/room/i0;

    invoke-virtual {v1, v0}, Landroidx/room/i0;->f(Ljava/lang/String;)Lf0/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()Lf0/k;
    .locals 1

    iget-object v0, p0, Landroidx/room/o0;->c:La3/d;

    invoke-interface {v0}, La3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/k;

    return-object v0
.end method

.method public final g(Z)Lf0/k;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/room/o0;->f()Lf0/k;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/room/o0;->d()Lf0/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Lf0/k;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/room/o0;->f()Lf0/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/room/o0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
