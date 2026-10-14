.class public final Landroidx/room/d;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Lf0/h;
.implements Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/d$a;,
        Landroidx/room/d$c;,
        Landroidx/room/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lf0/h;

.field public final b:Landroidx/room/c;

.field public final c:Landroidx/room/d$a;


# direct methods
.method public constructor <init>(Lf0/h;Landroidx/room/c;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/d;->a:Lf0/h;

    .line 3
    iput-object p2, p0, Landroidx/room/d;->b:Landroidx/room/c;

    .line 4
    invoke-virtual {p0}, Landroidx/room/d;->c()Lf0/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/room/c;->k(Lf0/h;)V

    .line 5
    new-instance p1, Landroidx/room/d$a;

    invoke-direct {p1, p2}, Landroidx/room/d$a;-><init>(Landroidx/room/c;)V

    iput-object p1, p0, Landroidx/room/d;->c:Landroidx/room/d$a;

    return-void
.end method


# virtual methods
.method public c()Lf0/h;
    .locals 1

    iget-object v0, p0, Landroidx/room/d;->a:Lf0/h;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/d;->c:Landroidx/room/d$a;

    invoke-virtual {v0}, Landroidx/room/d$a;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/d;->a:Lf0/h;

    invoke-interface {v0}, Lf0/h;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l0()Lf0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/d;->c:Landroidx/room/d$a;

    invoke-virtual {v0}, Landroidx/room/d$a;->c()V

    .line 2
    iget-object v0, p0, Landroidx/room/d;->c:Landroidx/room/d$a;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/room/d;->a:Lf0/h;

    invoke-interface {v0, p1}, Lf0/h;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
