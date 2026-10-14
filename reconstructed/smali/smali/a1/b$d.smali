.class public La1/b$d;
.super La1/b;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/b;->b(Lr0/p0;)La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr0/p0;


# direct methods
.method public constructor <init>(Lr0/p0;)V
    .locals 0

    iput-object p1, p0, La1/b$d;->b:Lr0/p0;

    invoke-direct {p0}, La1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, La1/b$d;->b:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lz0/v;->p()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, La1/b$d;->b:Lr0/p0;

    invoke-virtual {p0, v3, v2}, La1/b;->a(Lr0/p0;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, La1/m;

    iget-object v2, p0, La1/b$d;->b:Lr0/p0;

    invoke-virtual {v2}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, La1/m;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iget-object v2, p0, La1/b$d;->b:Lr0/p0;

    .line 8
    invoke-virtual {v2}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Lq0/b;->a()J

    move-result-wide v2

    .line 10
    invoke-virtual {v1, v2, v3}, La1/m;->d(J)V

    .line 11
    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 13
    throw v1
.end method
