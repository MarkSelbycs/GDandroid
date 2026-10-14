.class public Lq1/m;
.super Ljava/lang/Object;
.source "GlobalCustomFormat.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, La2/u;

    invoke-direct {v0}, La2/u;-><init>()V

    sput-object v0, Lq1/m;->a:Ljava/util/Map;

    .line 2
    new-instance v0, La2/u;

    invoke-direct {v0}, La2/u;-><init>()V

    sput-object v0, Lq1/m;->b:Ljava/util/Map;

    .line 3
    sget-object v0, Lq1/l;->a:Lq1/l;

    const-string v1, "#sss"

    invoke-static {v1, v0}, Lq1/m;->m(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 4
    sget-object v0, Lq1/i;->a:Lq1/i;

    invoke-static {v1, v0}, Lq1/m;->n(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 5
    sget-object v0, Lq1/k;->a:Lq1/k;

    const-string v1, "#SSS"

    invoke-static {v1, v0}, Lq1/m;->m(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 6
    sget-object v0, Lq1/j;->a:Lq1/j;

    invoke-static {v1, v0}, Lq1/m;->n(Ljava/lang/String;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 0

    invoke-static {p0}, Lq1/m;->i(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lq1/m;->j(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lq1/m;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 0

    invoke-static {p0}, Lq1/m;->k(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/time/temporal/TemporalAccessor;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp1/f;->f(Ljava/time/temporal/TemporalAccessor;)Lp1/e;

    move-result-object p0

    invoke-static {p0, p1}, Lq1/m;->f(Ljava/util/Date;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/Date;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lq1/m;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lq1/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lp1/f;->e(J)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lp1/f;->e(J)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lq1/m;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Format must be not null !"

    .line 1
    invoke-static {p0, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Function must be not null !"

    .line 2
    invoke-static {p1, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lq1/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Format must be not null !"

    .line 1
    invoke-static {p0, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Function must be not null !"

    .line 2
    invoke-static {p1, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lq1/m;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
