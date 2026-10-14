.class public Lq1/f$n;
.super Lq1/f$j;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/f$n$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Locale;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq1/f$n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 14

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq1/f$j;-><init>(Lq1/f$a;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq1/f$n;->c:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lq1/f$n;->b:Ljava/util/Locale;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((?iu)[+-]\\d{4}|[+-]\\d{2}:\\d{2}|GMT[+-]\\d{1,2}:\\d{2}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lq1/f;->x()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 7
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 8
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 9
    aget-object v7, v6, v4

    const-string v8, "GMT"

    .line 10
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    .line 11
    :cond_0
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 12
    new-instance v8, Lq1/f$n$a;

    invoke-direct {v8, v7, v4}, Lq1/f$n$a;-><init>(Ljava/util/TimeZone;Z)V

    const/4 v9, 0x1

    move-object v11, v8

    move v10, v9

    .line 13
    :goto_1
    array-length v12, v6

    if-ge v10, v12, :cond_4

    const/4 v12, 0x3

    if-eq v10, v12, :cond_2

    const/4 v12, 0x5

    if-eq v10, v12, :cond_1

    goto :goto_2

    :cond_1
    move-object v11, v8

    goto :goto_2

    .line 14
    :cond_2
    new-instance v11, Lq1/f$n$a;

    invoke-direct {v11, v7, v9}, Lq1/f$n$a;-><init>(Ljava/util/TimeZone;Z)V

    .line 15
    :goto_2
    aget-object v12, v6, v10

    if-eqz v12, :cond_3

    .line 16
    aget-object v12, v6, v10

    invoke-virtual {v12, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 18
    iget-object v13, p0, Lq1/f$n;->c:Ljava/util/Map;

    invoke-interface {v13, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x7c

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lq1/f;->y(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const-string p1, ")"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0, v0}, Lq1/f$j;->d(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public e(Lq1/f;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v5, "GMT"

    move-object v2, p3

    .line 2
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lq1/f$n;->c:Ljava/util/Map;

    iget-object v1, p0, Lq1/f$n;->b:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lq1/f$n$a;

    const/16 v0, 0x10

    .line 6
    iget p3, p3, Lq1/f$n$a;->b:I

    invoke-virtual {p2, v0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xf

    .line 7
    invoke-virtual {p1}, Lq1/a;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_1
    return-void
.end method
