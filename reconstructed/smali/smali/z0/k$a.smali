.class public Lz0/k$a;
.super Landroidx/room/i;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/k;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/i<",
        "Lz0/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lz0/k;


# direct methods
.method public constructor <init>(Lz0/k;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/k$a;->d:Lz0/k;

    invoke-direct {p0, p2}, Landroidx/room/i;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Lf0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lz0/i;

    invoke-virtual {p0, p1, p2}, Lz0/k$a;->k(Lf0/k;Lz0/i;)V

    return-void
.end method

.method public k(Lf0/k;Lz0/i;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lz0/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1, v0}, Lf0/i;->E(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2}, Lz0/i;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    const/4 v0, 0x3

    .line 5
    iget p2, p2, Lz0/i;->c:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lf0/i;->G(IJ)V

    return-void
.end method
