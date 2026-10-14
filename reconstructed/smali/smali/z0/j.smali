.class public interface abstract Lz0/j;
.super Ljava/lang/Object;
.source "SystemIdInfoDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/j$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Lz0/j;Lz0/m;)Lz0/i;
    .locals 0

    invoke-super {p0, p1}, Lz0/j;->i(Lz0/m;)Lz0/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lz0/j;Lz0/m;)V
    .locals 0

    invoke-super {p0, p1}, Lz0/j;->h(Lz0/m;)V

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;I)V
.end method

.method public abstract c(Lz0/i;)V
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public abstract g(Ljava/lang/String;I)Lz0/i;
.end method

.method public h(Lz0/m;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz0/m;->a()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lz0/j;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public i(Lz0/m;)Lz0/i;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz0/m;->a()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lz0/j;->g(Ljava/lang/String;I)Lz0/i;

    move-result-object p1

    return-object p1
.end method
