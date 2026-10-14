.class public Lq1/g;
.super Lq1/a;
.source "FastDatePrinter.java"

# interfaces
.implements Lq1/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/g$i;,
        Lq1/g$c;,
        Lq1/g$k;,
        Lq1/g$j;,
        Lq1/g$s;,
        Lq1/g$b;,
        Lq1/g$m;,
        Lq1/g$l;,
        Lq1/g$n;,
        Lq1/g$p;,
        Lq1/g$o;,
        Lq1/g$e;,
        Lq1/g$q;,
        Lq1/g$r;,
        Lq1/g$h;,
        Lq1/g$g;,
        Lq1/g$a;,
        Lq1/g$d;,
        Lq1/g$f;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lq1/g$i;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public transient d:[Lq1/g$f;

.field public transient e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, La2/u;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, La2/u;-><init>(I)V

    sput-object v0, Lq1/g;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq1/a;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 2
    invoke-virtual {p0}, Lq1/g;->P()V

    return-void
.end method

.method public static M(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lq1/g$i;

    invoke-direct {v0, p0, p1, p2, p3}, Lq1/g$i;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 2
    sget-object v1, Lq1/g;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object v2, p0

    :cond_0
    return-object v2
.end method

.method public static synthetic c(Ljava/lang/Appendable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lq1/g;->q(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Appendable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lq1/g;->u(Ljava/lang/Appendable;II)V

    return-void
.end method

.method public static q(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2
    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public static u(Ljava/lang/Appendable;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x30

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_a

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    const/16 v7, 0x64

    if-ge p1, v6, :cond_2

    if-ge p1, v7, :cond_1

    if-ge p1, v0, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    sub-int/2addr p2, v6

    :goto_1
    if-lez p2, :cond_3

    .line 1
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    if-eq v6, v5, :cond_9

    if-eq v6, v2, :cond_7

    if-eq v6, v3, :cond_5

    if-eq v6, v4, :cond_4

    goto :goto_7

    .line 2
    :cond_4
    div-int/lit16 p2, p1, 0x3e8

    add-int/2addr p2, v1

    int-to-char p2, p2

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 3
    rem-int/lit16 p1, p1, 0x3e8

    :cond_5
    if-lt p1, v7, :cond_6

    .line 4
    div-int/lit8 p2, p1, 0x64

    add-int/2addr p2, v1

    int-to-char p2, p2

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 5
    rem-int/lit8 p1, p1, 0x64

    goto :goto_2

    .line 6
    :cond_6
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_7
    :goto_2
    if-lt p1, v0, :cond_8

    .line 7
    div-int/lit8 p2, p1, 0xa

    add-int/2addr p2, v1

    int-to-char p2, p2

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 8
    rem-int/lit8 p1, p1, 0xa

    goto :goto_3

    .line 9
    :cond_8
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_9
    :goto_3
    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 10
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_7

    :cond_a
    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-eqz p1, :cond_b

    add-int/lit8 v3, v2, 0x1

    .line 11
    rem-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v1

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 12
    div-int/lit8 p1, p1, 0xa

    move v2, v3

    goto :goto_4

    :cond_b
    :goto_5
    if-ge v2, p2, :cond_c

    .line 13
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_d

    .line 14
    aget-char p1, v0, v2

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6

    :cond_d
    :goto_7
    return-void
.end method


# virtual methods
.method public D(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lq1/a;->b:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 3
    iget-object v0, p0, Lq1/a;->b:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lq1/g;->x(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public F(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/a;->b:Ljava/util/TimeZone;

    iget-object v1, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    invoke-virtual {p0, v0}, Lq1/g;->y(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lq1/g;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lq1/g;->I(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lq1/g;->F(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p1, "<null>"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/g;->e:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lq1/g;->D(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final P()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq1/g;->T()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lq1/g$f;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq1/g$f;

    iput-object v0, p0, Lq1/g;->d:[Lq1/g$f;

    .line 3
    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 4
    iget-object v2, p0, Lq1/g;->d:[Lq1/g$f;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lq1/g$f;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lq1/g;->e:I

    return-void
.end method

.method public T()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq1/g$f;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lq1/a;->c:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v8, v0, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v8, :cond_d

    aput v12, v10, v11

    .line 10
    iget-object v12, v0, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v12, v10}, Lq1/g;->U(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v12

    aget v13, v10, v11

    .line 11
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    goto/16 :goto_7

    .line 12
    :cond_0
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v11, 0x79

    const/4 v9, 0x4

    if-eq v15, v11, :cond_3

    const/16 v11, 0x7a

    if-eq v15, v11, :cond_9

    const/4 v11, 0x7

    sparse-switch v15, :sswitch_data_0

    packed-switch v15, :pswitch_data_0

    packed-switch v15, :pswitch_data_1

    .line 13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v9, 0x1

    if-ne v14, v9, :cond_1

    .line 14
    sget-object v9, Lq1/g$k;->c:Lq1/g$k;

    goto :goto_2

    :cond_1
    const/4 v9, 0x2

    if-ne v14, v9, :cond_2

    .line 15
    sget-object v9, Lq1/g$c;->d:Lq1/g$c;

    goto :goto_2

    .line 16
    :cond_2
    sget-object v9, Lq1/g$k;->b:Lq1/g$k;

    goto :goto_2

    :cond_3
    :pswitch_1
    const/4 v11, 0x0

    const/4 v12, 0x2

    goto/16 :goto_4

    .line 17
    :pswitch_2
    invoke-static {v14}, Lq1/g$c;->d(I)Lq1/g$c;

    move-result-object v9

    goto :goto_2

    .line 18
    :pswitch_3
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    :pswitch_4
    const/16 v9, 0xb

    .line 19
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    .line 20
    :pswitch_5
    new-instance v9, Lq1/g$h;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v3}, Lq1/g$h;-><init>(I[Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    const/16 v9, 0x8

    .line 21
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    .line 22
    :pswitch_7
    new-instance v12, Lq1/g$h;

    if-ge v14, v9, :cond_4

    move-object v9, v7

    goto :goto_1

    :cond_4
    move-object v9, v6

    :goto_1
    invoke-direct {v12, v11, v9}, Lq1/g$h;-><init>(I[Ljava/lang/String;)V

    move-object v9, v12

    goto :goto_2

    :pswitch_8
    const/4 v9, 0x6

    .line 23
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    :goto_2
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_6

    :sswitch_0
    const/4 v9, 0x3

    .line 24
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    .line 25
    :sswitch_1
    new-instance v9, Lq1/g$b;

    invoke-virtual {v0, v11, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v11

    invoke-direct {v9, v11}, Lq1/g$b;-><init>(Lq1/g$d;)V

    goto :goto_2

    :sswitch_2
    const/16 v9, 0xd

    .line 26
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    :sswitch_3
    const/16 v9, 0xc

    .line 27
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    .line 28
    :sswitch_4
    new-instance v9, Lq1/g$m;

    const/16 v11, 0xb

    invoke-virtual {v0, v11, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v11

    invoke-direct {v9, v11}, Lq1/g$m;-><init>(Lq1/g$d;)V

    goto :goto_2

    .line 29
    :sswitch_5
    new-instance v9, Lq1/g$l;

    const/16 v11, 0xa

    invoke-virtual {v0, v11, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v11

    invoke-direct {v9, v11}, Lq1/g$l;-><init>(Lq1/g$d;)V

    goto :goto_2

    :sswitch_6
    const/4 v9, 0x5

    .line 30
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    .line 31
    :sswitch_7
    new-instance v9, Lq1/g$h;

    const/16 v11, 0x9

    invoke-direct {v9, v11, v1}, Lq1/g$h;-><init>(I[Ljava/lang/String;)V

    goto :goto_2

    :sswitch_8
    const/16 v9, 0xe

    .line 32
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    :sswitch_9
    if-lt v14, v9, :cond_5

    .line 33
    new-instance v9, Lq1/g$h;

    const/4 v11, 0x2

    invoke-direct {v9, v11, v4}, Lq1/g$h;-><init>(I[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v9, 0x3

    const/4 v11, 0x2

    if-ne v14, v9, :cond_6

    .line 34
    new-instance v9, Lq1/g$h;

    invoke-direct {v9, v11, v5}, Lq1/g$h;-><init>(I[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-ne v14, v11, :cond_7

    .line 35
    sget-object v9, Lq1/g$n;->a:Lq1/g$n;

    goto :goto_2

    .line 36
    :cond_7
    sget-object v9, Lq1/g$q;->a:Lq1/g$q;

    goto :goto_2

    :sswitch_a
    const/16 v9, 0xa

    .line 37
    invoke-virtual {v0, v9, v14}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    goto :goto_2

    :sswitch_b
    const/4 v9, 0x1

    .line 38
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v9, :cond_8

    .line 40
    new-instance v9, Lq1/g$a;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {v9, v11}, Lq1/g$a;-><init>(C)V

    goto/16 :goto_2

    .line 41
    :cond_8
    new-instance v9, Lq1/g$g;

    invoke-direct {v9, v11}, Lq1/g$g;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    if-lt v14, v9, :cond_a

    .line 42
    new-instance v9, Lq1/g$j;

    iget-object v11, v0, Lq1/a;->b:Ljava/util/TimeZone;

    iget-object v12, v0, Lq1/a;->c:Ljava/util/Locale;

    const/4 v14, 0x1

    invoke-direct {v9, v11, v12, v14}, Lq1/g$j;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    move v12, v14

    const/4 v11, 0x0

    goto :goto_6

    .line 43
    :cond_a
    new-instance v9, Lq1/g$j;

    iget-object v11, v0, Lq1/a;->b:Ljava/util/TimeZone;

    iget-object v12, v0, Lq1/a;->c:Ljava/util/Locale;

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v14}, Lq1/g$j;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    move v11, v14

    goto/16 :goto_3

    :goto_4
    if-ne v14, v12, :cond_b

    .line 44
    sget-object v9, Lq1/g$p;->a:Lq1/g$p;

    const/4 v12, 0x1

    goto :goto_5

    .line 45
    :cond_b
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v9}, Lq1/g;->V(II)Lq1/g$d;

    move-result-object v9

    :goto_5
    const/16 v14, 0x59

    if-ne v15, v14, :cond_c

    .line 46
    new-instance v14, Lq1/g$s;

    invoke-direct {v14, v9}, Lq1/g$s;-><init>(Lq1/g$d;)V

    move-object v9, v14

    .line 47
    :cond_c
    :goto_6
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v13, 0x1

    move/from16 v16, v12

    move v12, v9

    move/from16 v9, v16

    goto/16 :goto_0

    :cond_d
    :goto_7
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_b
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public U(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    aget v2, p2, v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_2

    if-gt v4, v7, :cond_2

    .line 5
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_8

    .line 6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_8

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    :cond_2
    const/16 v4, 0x27

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v1

    :goto_1
    if-ge v2, v3, :cond_8

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v4, :cond_4

    add-int/lit8 v11, v2, 0x1

    if-ge v11, v3, :cond_3

    .line 10
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v4, :cond_3

    .line 11
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v11

    goto :goto_2

    :cond_3
    xor-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    if-nez v9, :cond_7

    if-lt v10, v6, :cond_5

    if-le v10, v5, :cond_6

    :cond_5
    if-lt v10, v8, :cond_7

    if-gt v10, v7, :cond_7

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_8
    :goto_3
    aput v2, p2, v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public V(II)Lq1/g$d;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    new-instance v0, Lq1/g$e;

    invoke-direct {v0, p1, p2}, Lq1/g$e;-><init>(II)V

    return-object v0

    .line 2
    :cond_0
    new-instance p2, Lq1/g$o;

    invoke-direct {p2, p1}, Lq1/g$o;-><init>(I)V

    return-object p2

    .line 3
    :cond_1
    new-instance p2, Lq1/g$r;

    invoke-direct {p2, p1}, Lq1/g$r;-><init>(I)V

    return-object p2
.end method

.method public e(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/a;->b:Ljava/util/TimeZone;

    iget-object v1, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3
    invoke-virtual {p0, v0}, Lq1/g;->y(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lq1/g;->d:[Lq1/g$f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p2, p1}, Lq1/g$f;->b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lp1/b;

    invoke-direct {p2, p1}, Lp1/b;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final y(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/g;->e:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lq1/g;->x(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
