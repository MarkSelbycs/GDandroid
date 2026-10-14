.class public Lo1/n;
.super Ln1/a;
.source "DateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/n;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 4
    iput-object p1, p0, Lo1/n;->a:Ljava/lang/Class;

    .line 5
    iput-object p2, p0, Lo1/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/n;->h(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo1/n;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4

    if-eqz p1, :cond_6

    .line 1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p1}, Lp1/f;->f(Ljava/time/temporal/TemporalAccessor;)Lp1/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/n;->q(Lp1/e;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lp1/f;->g(Ljava/util/Calendar;)Lp1/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/n;->q(Lp1/e;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo1/n;->j(J)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lo1/n;->b:Ljava/lang/String;

    invoke-static {v1}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {v0}, Lp1/f;->q(Ljava/lang/CharSequence;)Lp1/e;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lo1/n;->b:Ljava/lang/String;

    .line 11
    invoke-static {v0, v1}, Lp1/f;->r(Ljava/lang/CharSequence;Ljava/lang/String;)Lp1/e;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, v0}, Lo1/n;->q(Lp1/e;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    new-instance v0, Ln1/d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget-object v2, p0, Lo1/n;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Can not convert {}:[{}] to {}"

    invoke-direct {v0, p1, v1}, Ln1/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(J)Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/n;->b:Ljava/lang/String;

    const-string v1, "#sss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Lp1/f;->e(J)Lp1/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Ljava/util/Date;

    iget-object v1, p0, Lo1/n;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 5
    :cond_1
    const-class v0, Lp1/e;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {p1, p2}, Lp1/f;->e(J)Lp1/e;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Ljava/sql/Date;

    if-ne v0, v1, :cond_3

    .line 8
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 9
    :cond_3
    const-class v0, Ljava/sql/Time;

    if-ne v0, v1, :cond_4

    .line 10
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 11
    :cond_4
    const-class v0, Ljava/sql/Timestamp;

    if-ne v0, v1, :cond_5

    .line 12
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lo1/n;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Unsupported target Date type: {}"

    invoke-static {v0, p2}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Lp1/e;)Ljava/util/Date;
    .locals 3

    .line 1
    const-class v0, Ljava/util/Date;

    iget-object v1, p0, Lo1/n;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lp1/e;->D()Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lp1/e;

    if-ne v0, v1, :cond_1

    return-object p1

    .line 4
    :cond_1
    const-class v0, Ljava/sql/Date;

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lp1/e;->F()Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    const-class v0, Ljava/sql/Time;

    if-ne v0, v1, :cond_3

    .line 7
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 8
    :cond_3
    const-class v0, Ljava/sql/Timestamp;

    if-ne v0, v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lp1/e;->P()Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo1/n;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unsupported target Date type: {}"

    invoke-static {v1, v0}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
