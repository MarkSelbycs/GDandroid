.class public Lz0/s$a;
.super Landroidx/room/i;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/s;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/i<",
        "Lz0/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lz0/s;


# direct methods
.method public constructor <init>(Lz0/s;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/s$a;->d:Lz0/s;

    invoke-direct {p0, p2}, Landroidx/room/i;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Lf0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lz0/q;

    invoke-virtual {p0, p1, p2}, Lz0/s$a;->k(Lf0/k;Lz0/q;)V

    return-void
.end method

.method public k(Lf0/k;Lz0/q;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lz0/q;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lz0/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf0/i;->E(ILjava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lz0/q;->a()Landroidx/work/b;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/b;->q(Landroidx/work/b;)[B

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lf0/i;->d0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1, v0, p2}, Lf0/i;->a0(I[B)V

    :goto_1
    return-void
.end method
