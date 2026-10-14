.class public Lg2/d;
.super Ljava/io/Writer;
.source "JSONWriter.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/io/Writer;

.field public final d:Lf2/f;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;IILf2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/d;->c:Ljava/io/Writer;

    .line 3
    iput p2, p0, Lg2/d;->a:I

    .line 4
    iput p3, p0, Lg2/d;->b:I

    .line 5
    iput-object p4, p0, Lg2/d;->d:Lf2/f;

    return-void
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lb2/c;->s(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p0, p1}, Lp1/h;->a(Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Ln1/c;->g(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0, p1}, Lp1/f;->j(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "#sss"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#SSS"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p0}, Lf2/p;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0

    .line 8
    :cond_3
    instance-of p1, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz p1, :cond_4

    .line 9
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p0}, Lp1/h;->d(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide p0

    goto :goto_2

    .line 10
    :cond_4
    instance-of p1, p0, Ljava/util/Date;

    if-eqz p1, :cond_5

    .line 11
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_2

    .line 12
    :cond_5
    instance-of p1, p0, Ljava/util/Calendar;

    if-eqz p1, :cond_6

    .line 13
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 14
    :goto_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Date type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Ljava/io/Writer;IILf2/f;)Lg2/d;
    .locals 1

    new-instance v0, Lg2/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lg2/d;-><init>(Ljava/io/Writer;IILf2/f;)V

    return-object v0
.end method


# virtual methods
.method public final C(Ljava/lang/Object;Lv1/i;)Lg2/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lg2/d;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg2/d;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lg2/d;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 3
    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lg2/d;->q()Lg2/d;

    move-result-object v0

    iget v2, p0, Lg2/d;->a:I

    iget v3, p0, Lg2/d;->b:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lg2/d;->y(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    .line 5
    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg2/d;->y(I)V

    .line 6
    :goto_0
    iput-boolean v1, p0, Lg2/d;->e:Z

    .line 7
    invoke-virtual {p0, p1, p2}, Lg2/d;->s(Ljava/lang/Object;Lv1/i;)Lg2/d;

    move-result-object p1

    return-object p1
.end method

.method public c()Lg2/d;
    .locals 1

    const/16 v0, 0x5b

    .line 1
    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg2/d;->f:Z

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public e()Lg2/d;
    .locals 1

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    return-object p0
.end method

.method public f()Lg2/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg2/d;->q()Lg2/d;

    move-result-object v0

    iget v1, p0, Lg2/d;->b:I

    invoke-virtual {v0, v1}, Lg2/d;->y(I)V

    .line 2
    iget-boolean v0, p0, Lg2/d;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d

    :goto_0
    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    .line 3
    invoke-virtual {p0}, Lg2/d;->flush()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lg2/d;->f:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lg2/d;->e:Z

    return-object p0
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lt1/c;

    invoke-direct {v1, v0}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->x(Ljava/lang/String;)Lg2/d;

    return-void
.end method

.method public l(Ly1/d;Lv1/i;)Lg2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lg2/d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lv1/l;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lf2/p;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg2/d;->d:Lf2/f;

    invoke-virtual {v0}, Lf2/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2, p1}, Lv1/i;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 3
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lg2/d;->f:Z

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lv1/l;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le2/b0;->j0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg2/d;->o(Ljava/lang/String;)Lg2/d;

    .line 5
    :cond_3
    invoke-virtual {p1}, Lv1/l;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lg2/d;->C(Ljava/lang/Object;Lv1/i;)Lg2/d;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lf2/n;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lf2/n;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lg2/d;->x(Ljava/lang/String;)Lg2/d;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->z(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lf2/h;

    invoke-direct {v0, p1}, Lf2/h;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public o(Ljava/lang/String;)Lg2/d;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lg2/d;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 2
    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg2/d;->q()Lg2/d;

    move-result-object v0

    iget v1, p0, Lg2/d;->a:I

    iget v2, p0, Lg2/d;->b:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lg2/d;->y(I)V

    .line 4
    invoke-static {p1}, Lf2/p;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->x(Ljava/lang/String;)Lg2/d;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lg2/d;
    .locals 1

    .line 1
    iget v0, p0, Lg2/d;->a:I

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lg2/d;->u(C)Lg2/d;

    :cond_0
    return-object p0
.end method

.method public final r(Ljava/lang/Number;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/d;->d:Lf2/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf2/f;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-static {p1, v0}, Le2/o;->o(Ljava/lang/Number;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->x(Ljava/lang/String;)Lg2/d;

    return-void
.end method

.method public final s(Ljava/lang/Object;Lv1/i;)Lg2/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lg2/d;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lg2/d;->a:I

    iget v1, p0, Lg2/d;->b:I

    add-int/2addr v1, v0

    if-eqz p1, :cond_e

    .line 2
    instance-of v2, p1, Lf2/j;

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    instance-of v2, p1, Lf2/b;

    if-eqz v2, :cond_2

    .line 4
    instance-of v2, p1, Lf2/l;

    if-eqz v2, :cond_1

    .line 5
    check-cast p1, Lf2/l;

    iget-object v2, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {p1, v2, v0, v1, p2}, Lf2/l;->U(Ljava/io/Writer;IILv1/i;)Ljava/io/Writer;

    goto/16 :goto_5

    .line 6
    :cond_1
    instance-of v2, p1, Lf2/e;

    if-eqz v2, :cond_f

    .line 7
    check-cast p1, Lf2/e;

    iget-object v2, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {p1, v2, v0, v1, p2}, Lf2/e;->H(Ljava/io/Writer;IILv1/i;)Ljava/io/Writer;

    goto/16 :goto_5

    .line 8
    :cond_2
    instance-of p2, p1, Ljava/util/Map;

    if-nez p2, :cond_d

    instance-of p2, p1, Ljava/util/Map$Entry;

    if-eqz p2, :cond_3

    goto/16 :goto_3

    .line 9
    :cond_3
    instance-of p2, p1, Ljava/lang/Iterable;

    if-nez p2, :cond_c

    instance-of p2, p1, Ljava/util/Iterator;

    if-nez p2, :cond_c

    invoke-static {p1}, Le2/c;->s(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_5

    .line 11
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lg2/d;->r(Ljava/lang/Number;)V

    goto/16 :goto_5

    .line 12
    :cond_5
    instance-of p2, p1, Ljava/util/Date;

    if-nez p2, :cond_9

    instance-of p2, p1, Ljava/util/Calendar;

    if-nez p2, :cond_9

    instance-of p2, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz p2, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lg2/d;->j(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 15
    :cond_7
    instance-of p2, p1, Lf2/n;

    if-eqz p2, :cond_8

    .line 16
    check-cast p1, Lf2/n;

    invoke-virtual {p0, p1}, Lg2/d;->n(Lf2/n;)V

    goto :goto_5

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->z(Ljava/lang/String;)V

    goto :goto_5

    .line 18
    :cond_9
    :goto_0
    instance-of p2, p1, Ljava/time/MonthDay;

    if-eqz p2, :cond_a

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->z(Ljava/lang/String;)V

    return-object p0

    .line 20
    :cond_a
    iget-object p2, p0, Lg2/d;->d:Lf2/f;

    if-nez p2, :cond_b

    const/4 p2, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Lf2/f;->c()Ljava/lang/String;

    move-result-object p2

    .line 21
    :goto_1
    invoke-static {p1, p2}, Lg2/d;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->x(Ljava/lang/String;)Lg2/d;

    goto :goto_5

    .line 22
    :cond_c
    :goto_2
    new-instance p2, Lf2/e;

    invoke-direct {p2, p1}, Lf2/e;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lg2/d;->c:Ljava/io/Writer;

    iget v0, p0, Lg2/d;->a:I

    invoke-virtual {p2, p1, v0, v1}, Lf2/e;->r(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_5

    .line 23
    :cond_d
    :goto_3
    new-instance p2, Lf2/l;

    invoke-direct {p2, p1}, Lf2/l;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lg2/d;->c:Ljava/io/Writer;

    iget v0, p0, Lg2/d;->a:I

    invoke-virtual {p2, p1, v0, v1}, Lf2/l;->r(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_5

    .line 24
    :cond_e
    :goto_4
    sget-object p1, Lf2/j;->a:Lf2/j;

    invoke-virtual {p1}, Lf2/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/d;->x(Ljava/lang/String;)Lg2/d;

    :cond_f
    :goto_5
    return-object p0
.end method

.method public final u(C)Lg2/d;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lt1/c;

    invoke-direct {v0, p1}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public final x(Ljava/lang/String;)Lg2/d;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lt1/c;

    invoke-direct {v0, p1}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final y(I)V
    .locals 2

    .line 1
    iget v0, p0, Lg2/d;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v1, 0x20

    .line 2
    invoke-virtual {p0, v1}, Lg2/d;->u(C)Lg2/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lg2/d;->c:Ljava/io/Writer;

    invoke-static {p1, v0}, Lf2/p;->j(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lt1/c;

    invoke-direct {v0, p1}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
