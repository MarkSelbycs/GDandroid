.class public Lq1/f$h;
.super Lq1/f$j;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final b:Lq1/f$k;

.field public static final c:Lq1/f$k;

.field public static final d:Lq1/f$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq1/f$h;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lq1/f$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/f$h;->b:Lq1/f$k;

    .line 2
    new-instance v0, Lq1/f$h;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lq1/f$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/f$h;->c:Lq1/f$k;

    .line 3
    new-instance v0, Lq1/f$h;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lq1/f$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/f$h;->d:Lq1/f$k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq1/f$j;-><init>(Lq1/f$a;)V

    .line 2
    invoke-virtual {p0, p1}, Lq1/f$j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f()Lq1/f$k;
    .locals 1

    sget-object v0, Lq1/f$h;->d:Lq1/f$k;

    return-object v0
.end method

.method public static g(I)Lq1/f$k;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lq1/f$h;->d:Lq1/f$k;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    sget-object p0, Lq1/f$h;->c:Lq1/f$k;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lq1/f$h;->b:Lq1/f$k;

    return-object p0
.end method


# virtual methods
.method public e(Lq1/f;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    const-string p1, "Z"

    .line 1
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    .line 2
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void
.end method
