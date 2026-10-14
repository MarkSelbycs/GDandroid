.class public Lz0/a0$a;
.super Landroidx/room/i;
.source "WorkTagDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/a0;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/i<",
        "Lz0/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lz0/a0;


# direct methods
.method public constructor <init>(Lz0/a0;Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Lz0/a0$a;->d:Lz0/a0;

    invoke-direct {p0, p2}, Landroidx/room/i;-><init>(Landroidx/room/i0;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Lf0/k;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lz0/y;

    invoke-virtual {p0, p1, p2}, Lz0/a0$a;->k(Lf0/k;Lz0/y;)V

    return-void
.end method

.method public k(Lf0/k;Lz0/y;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lz0/y;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lz0/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf0/i;->E(ILjava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lz0/y;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, Lf0/i;->d0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lz0/y;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lf0/i;->E(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
