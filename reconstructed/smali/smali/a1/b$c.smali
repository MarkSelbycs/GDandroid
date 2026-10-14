.class public La1/b$c;
.super La1/b;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/b;->d(Ljava/lang/String;Lr0/p0;Z)La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr0/p0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lr0/p0;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, La1/b$c;->b:Lr0/p0;

    iput-object p2, p0, La1/b$c;->c:Ljava/lang/String;

    iput-boolean p3, p0, La1/b$c;->d:Z

    invoke-direct {p0}, La1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, La1/b$c;->b:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v1

    .line 4
    iget-object v2, p0, La1/b$c;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lz0/v;->y(Ljava/lang/String;)Ljava/util/List;

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
    iget-object v3, p0, La1/b$c;->b:Lr0/p0;

    invoke-virtual {p0, v3, v2}, La1/b;->a(Lr0/p0;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 9
    iget-boolean v0, p0, La1/b$c;->d:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, La1/b$c;->b:Lr0/p0;

    invoke-virtual {p0, v0}, La1/b;->h(Lr0/p0;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 12
    throw v1
.end method
