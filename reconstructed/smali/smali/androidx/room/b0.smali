.class public final Landroidx/room/b0;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelper.kt"

# interfaces
.implements Lf0/h;
.implements Landroidx/room/g;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lf0/h;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/room/i0$g;


# direct methods
.method public constructor <init>(Lf0/h;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallbackExecutor"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallback"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/b0;->a:Lf0/h;

    .line 3
    iput-object p2, p0, Landroidx/room/b0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Landroidx/room/b0;->c:Landroidx/room/i0$g;

    return-void
.end method


# virtual methods
.method public c()Lf0/h;
    .locals 1

    iget-object v0, p0, Landroidx/room/b0;->a:Lf0/h;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/b0;->a:Lf0/h;

    invoke-interface {v0}, Lf0/h;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/b0;->a:Lf0/h;

    invoke-interface {v0}, Lf0/h;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l0()Lf0/g;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/a0;

    .line 2
    invoke-virtual {p0}, Landroidx/room/b0;->c()Lf0/h;

    move-result-object v1

    invoke-interface {v1}, Lf0/h;->l0()Lf0/g;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/room/b0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v3, p0, Landroidx/room/b0;->c:Landroidx/room/i0$g;

    .line 5
    invoke-direct {v0, v1, v2, v3}, Landroidx/room/a0;-><init>(Lf0/g;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/room/b0;->a:Lf0/h;

    invoke-interface {v0, p1}, Lf0/h;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
