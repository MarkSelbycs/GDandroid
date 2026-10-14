.class public Landroidx/work/impl/foreground/a$a;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/foreground/a;->j(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/work/impl/foreground/a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    iput-object p2, p0, Landroidx/work/impl/foreground/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    invoke-static {v0}, Landroidx/work/impl/foreground/a;->b(Landroidx/work/impl/foreground/a;)Lr0/p0;

    move-result-object v0

    invoke-virtual {v0}, Lr0/p0;->q()Lr0/u;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/foreground/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr0/u;->g(Ljava/lang/String;)Lz0/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lz0/u;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    iget-object v1, v1, Landroidx/work/impl/foreground/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->g:Ljava/util/Map;

    invoke-static {v0}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    iget-object v3, v2, Landroidx/work/impl/foreground/a;->i:Lv0/e;

    .line 6
    invoke-static {v2}, Landroidx/work/impl/foreground/a;->d(Landroidx/work/impl/foreground/a;)Lc1/b;

    move-result-object v2

    invoke-interface {v2}, Lc1/b;->d()Lt3/b0;

    move-result-object v2

    iget-object v4, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    .line 7
    invoke-static {v3, v0, v2, v4}, Lv0/f;->b(Lv0/e;Lz0/u;Lt3/b0;Lv0/d;)Lt3/h1;

    move-result-object v2

    .line 8
    iget-object v3, p0, Landroidx/work/impl/foreground/a$a;->b:Landroidx/work/impl/foreground/a;

    iget-object v3, v3, Landroidx/work/impl/foreground/a;->h:Ljava/util/Map;

    invoke-static {v0}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
