.class public Lp1/f;
.super Lp1/a;
.source "DateUtil.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    const-string v0, "sun"

    const-string v1, "mon"

    const-string v2, "tue"

    const-string v3, "wed"

    const-string v4, "thu"

    const-string v5, "fri"

    const-string v6, "sat"

    const-string v7, "jan"

    const-string v8, "feb"

    const-string v9, "mar"

    const-string v10, "apr"

    const-string v11, "may"

    const-string v12, "jun"

    const-string v13, "jul"

    const-string v14, "aug"

    const-string v15, "sep"

    const-string v16, "oct"

    const-string v17, "nov"

    const-string v18, "dec"

    const-string v19, "gmt"

    const-string v20, "ut"

    const-string v21, "utc"

    const-string v22, "est"

    const-string v23, "edt"

    const-string v24, "cst"

    const-string v25, "cdt"

    const-string v26, "mst"

    const-string v27, "mdt"

    const-string v28, "pst"

    const-string v29, "pdt"

    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp1/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public static e(J)Lp1/e;
    .locals 1

    new-instance v0, Lp1/e;

    invoke-direct {v0, p0, p1}, Lp1/e;-><init>(J)V

    return-object v0
.end method

.method public static f(Ljava/time/temporal/TemporalAccessor;)Lp1/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lp1/e;

    invoke-direct {v0, p0}, Lp1/e;-><init>(Ljava/time/temporal/TemporalAccessor;)V

    return-object v0
.end method

.method public static g(Ljava/util/Calendar;)Lp1/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lp1/e;

    invoke-direct {v0, p0}, Lp1/e;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static h(Ljava/util/Date;)Lp1/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Lp1/e;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lp1/e;

    return-object p0

    .line 3
    :cond_1
    invoke-static {p0}, Lp1/f;->i(Ljava/util/Date;)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Date;)Lp1/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lp1/e;

    invoke-direct {v0, p0}, Lp1/e;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static j(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-static {p1}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lq1/m;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p0, p1}, Lq1/m;->f(Ljava/util/Date;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    instance-of v1, p0, Lp1/e;

    if-eqz v1, :cond_2

    .line 5
    move-object v1, p0

    check-cast v1, Lp1/e;

    invoke-virtual {v1}, Lp1/e;->b()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 6
    :goto_0
    invoke-static {p1, v0, v1}, Lp1/f;->n(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-static {p0, p1}, Lp1/f;->k(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static k(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lp1/c;->f:Lq1/e;

    invoke-virtual {v0, p0}, Lq1/e;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lp1/f;->n(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v0
.end method

.method public static o(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x20

    .line 3
    invoke-static {p0, v0}, Lb2/c;->F(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Le2/b0;->c0()Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v5, 0x0

    .line 6
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "[/.\u5e74\u6708]"

    const-string v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u65e5"

    .line 7
    invoke-static {v5, v6}, Lb2/c;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "[\u65f6\u5206\u79d2]"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0, v2}, Lb2/c;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    :goto_0
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p2}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, v2}, Lb2/c;->O(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lb2/c;->S(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v2}, Lb2/c;->Q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lb2/c;->R(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lb2/c;->S(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v2}, Lb2/c;->Q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0, p2, v2}, Lb2/c;->O(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/CharSequence;)Lp1/e;
    .locals 3

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lb2/c;->x(Ljava/lang/CharSequence;[C)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5
    invoke-static {p0}, Le2/o;->d(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 6
    sget-object v0, Lp1/c;->z:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 7
    sget-object v0, Lp1/c;->B:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 8
    sget-object v0, Lp1/c;->v:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 9
    sget-object v0, Lp1/c;->x:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 10
    :cond_4
    sget-object v1, Lv1/o;->A:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Le2/r;->c(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {p0}, Lp1/f;->u(Ljava/lang/CharSequence;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 12
    :cond_5
    sget-object v1, Lp1/f;->a:[Ljava/lang/String;

    invoke-static {p0, v1}, Lb2/c;->d(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    invoke-static {p0}, Lp1/f;->t(Ljava/lang/CharSequence;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 v1, 0x54

    .line 14
    invoke-static {p0, v1}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-static {p0}, Lp1/f;->v(Ljava/lang/String;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    invoke-static {p0}, Lp1/f;->o(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 17
    sget-object v1, Lp1/c;->a:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Le2/r;->c(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    const/16 v1, 0x3a

    .line 18
    invoke-static {p0, v1}, Lb2/c;->f(Ljava/lang/CharSequence;C)I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_a

    if-ne v1, v0, :cond_c

    const/16 v0, 0x2e

    .line 19
    invoke-static {p0, v0}, Lb2/c;->k(Ljava/lang/CharSequence;C)I

    move-result v0

    if-lez v0, :cond_9

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_8

    add-int/2addr v0, v2

    .line 21
    invoke-static {p0, v0}, Lb2/c;->S(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    .line 22
    :cond_8
    sget-object v0, Lp1/c;->n:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 23
    :cond_9
    sget-object v0, Lp1/c;->l:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 24
    :cond_a
    sget-object v0, Lp1/c;->j:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 25
    :cond_b
    sget-object v0, Lp1/c;->f:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 26
    :cond_c
    new-instance v0, Lp1/b;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "No format fit for date String [{}] !"

    invoke-direct {v0, p0, v1}, Lp1/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :array_0
    .array-data 2
        0x65e5s
        0x79d2s
    .end array-data
.end method

.method public static r(Ljava/lang/CharSequence;Ljava/lang/String;)Lp1/e;
    .locals 1

    new-instance v0, Lp1/e;

    invoke-direct {v0, p0, p1}, Lp1/e;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;
    .locals 1

    new-instance v0, Lp1/e;

    invoke-direct {v0, p0, p1}, Lp1/e;-><init>(Ljava/lang/CharSequence;Lq1/c;)V

    return-object v0
.end method

.method public static t(Ljava/lang/CharSequence;)Lp1/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lp1/c;->E:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/CharSequence;)Lp1/e;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Lp1/f;->x()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{} {}"

    invoke-static {p0, v0}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 2
    invoke-static {p0, v0}, Lb2/c;->f(Ljava/lang/CharSequence;C)I

    move-result v0

    if-ne v1, v0, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 3
    invoke-static {p0, v0}, Lp1/f;->r(Ljava/lang/CharSequence;Ljava/lang/String;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lp1/c;->l:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;)Lp1/e;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x5a

    .line 2
    invoke-static {p0, v2}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/16 v0, 0x14

    if-ne v1, v0, :cond_1

    .line 3
    sget-object v0, Lp1/c;->H:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x18

    if-gt v1, v0, :cond_c

    const/16 v0, 0x16

    if-lt v1, v0, :cond_c

    .line 4
    sget-object v0, Lp1/c;->K:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x2b

    .line 5
    invoke-static {p0, v2}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x3a

    const-string v8, "."

    const-string v9, ":00"

    const/16 v10, 0x2e

    if-eqz v5, :cond_6

    const-string v0, " +"

    const-string v1, "+"

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0, v2, v4}, Lb2/c;->N(Ljava/lang/CharSequence;CZ)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 9
    invoke-static {v0, v7}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    invoke-static {p0, v2, v4}, Lb2/c;->P(Ljava/lang/CharSequence;CZ)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    :cond_3
    invoke-static {p0, v10}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p0, v8, v1}, Lp1/f;->p(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 14
    sget-object v0, Lp1/c;->M:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    sget-object v0, Lp1/c;->J:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    new-instance v0, Lp1/b;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "Invalid format: [{}]"

    invoke-direct {v0, p0, v1}, Lp1/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    const-string v2, "-\\d{2}:?00"

    .line 17
    invoke-static {v2, p0}, Le2/r;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, " -"

    const-string v1, "-"

    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v7, v0, :cond_7

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 21
    :cond_7
    invoke-static {p0, v10}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-static {p0, v8, v1}, Lp1/f;->p(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Lp1/e;

    sget-object v1, Lp1/c;->M:Lq1/e;

    invoke-direct {v0, p0, v1}, Lp1/e;-><init>(Ljava/lang/CharSequence;Lq1/c;)V

    return-object v0

    .line 24
    :cond_8
    new-instance v0, Lp1/e;

    sget-object v1, Lp1/c;->J:Lq1/e;

    invoke-direct {v0, p0, v1}, Lp1/e;-><init>(Ljava/lang/CharSequence;Lq1/c;)V

    return-object v0

    :cond_9
    const/16 v2, 0x13

    if-ne v1, v2, :cond_a

    .line 25
    sget-object v0, Lp1/c;->F:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lp1/c;->F:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 27
    :cond_b
    invoke-static {p0, v10}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    invoke-static {p0, v8, v0}, Lp1/f;->p(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 29
    sget-object v0, Lp1/c;->G:Lq1/e;

    invoke-static {p0, v0}, Lp1/f;->s(Ljava/lang/CharSequence;Lq1/c;)Lp1/e;

    move-result-object p0

    return-object p0

    .line 30
    :cond_c
    new-instance v0, Lp1/b;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "No format fit for date String [{}] !"

    invoke-direct {v0, p0, v1}, Lp1/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static w(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Lp1/h;->e(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static x()Ljava/lang/String;
    .locals 2

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    invoke-static {v0}, Lp1/f;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
