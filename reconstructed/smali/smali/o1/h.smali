.class public Lo1/h;
.super Ln1/a;
.source "CalendarConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/h;->h(Ljava/lang/Object;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/Calendar;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lp1/a;->c(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lp1/a;->a(J)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lo1/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lp1/f;->q(Ljava/lang/CharSequence;)Lp1/e;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo1/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lp1/f;->r(Ljava/lang/CharSequence;Ljava/lang/String;)Lp1/e;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lp1/a;->c(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
