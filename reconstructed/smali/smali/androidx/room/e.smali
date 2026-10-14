.class public final Landroidx/room/e;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelperFactory.kt"

# interfaces
.implements Lf0/h$c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lf0/h$c;

.field public final b:Landroidx/room/c;


# direct methods
.method public constructor <init>(Lf0/h$c;Landroidx/room/c;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/e;->a:Lf0/h$c;

    .line 3
    iput-object p2, p0, Landroidx/room/e;->b:Landroidx/room/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lf0/h$b;)Lf0/h;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/e;->b(Lf0/h$b;)Landroidx/room/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lf0/h$b;)Landroidx/room/d;
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/d;

    iget-object v1, p0, Landroidx/room/e;->a:Lf0/h$c;

    invoke-interface {v1, p1}, Lf0/h$c;->a(Lf0/h$b;)Lf0/h;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/e;->b:Landroidx/room/c;

    invoke-direct {v0, p1, v1}, Landroidx/room/d;-><init>(Lf0/h;Landroidx/room/c;)V

    return-object v0
.end method
