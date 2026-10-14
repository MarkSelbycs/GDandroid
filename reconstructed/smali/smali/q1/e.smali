.class public Lq1/e;
.super Ljava/text/Format;
.source "FastDateFormat.java"

# interfaces
.implements Lq1/c;
.implements Lq1/d;


# static fields
.field public static final c:Lq1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq1/h<",
            "Lq1/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lq1/g;

.field public final b:Lq1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/e$a;

    invoke-direct {v0}, Lq1/e$a;-><init>()V

    sput-object v0, Lq1/e;->c:Lq1/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lq1/e;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 3
    new-instance v0, Lq1/g;

    invoke-direct {v0, p1, p2, p3}, Lq1/g;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lq1/e;->a:Lq1/g;

    .line 4
    new-instance v0, Lq1/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lq1/f;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v0, p0, Lq1/e;->b:Lq1/f;

    return-void
.end method

.method public static j(Ljava/lang/String;)Lq1/e;
    .locals 2

    sget-object v0, Lq1/e;->c:Lq1/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lq1/h;->b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lq1/e;

    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/util/Locale;)Lq1/e;
    .locals 2

    sget-object v0, Lq1/e;->c:Lq1/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lq1/h;->b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lq1/e;

    return-object p0
.end method

.method public static x(Ljava/lang/String;Ljava/util/TimeZone;)Lq1/e;
    .locals 2

    sget-object v0, Lq1/e;->c:Lq1/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lq1/h;->b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lq1/e;

    return-object p0
.end method

.method public static y(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lq1/e;
    .locals 1

    sget-object v0, Lq1/e;->c:Lq1/h;

    invoke-virtual {v0, p0, p1, p2}, Lq1/h;->b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lq1/e;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lq1/e;->b:Lq1/f;

    invoke-virtual {v0, p1, p2}, Lq1/f;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v0, p1}, Lq1/g;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq1/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lq1/e;

    .line 3
    iget-object v0, p0, Lq1/e;->a:Lq1/g;

    iget-object p1, p1, Lq1/e;->a:Lq1/g;

    invoke-virtual {v0, p1}, Lq1/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v0}, Lq1/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    iget-object p3, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {p3, p1}, Lq1/g;->H(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v0}, Lq1/a;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v0}, Lq1/a;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .locals 1

    iget-object v0, p0, Lq1/e;->b:Lq1/f;

    invoke-virtual {v0, p1, p2, p3}, Lq1/f;->h(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v0}, Lq1/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq1/e;->b:Lq1/f;

    invoke-interface {v0, p1, p2}, Lq1/c;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v1}, Lq1/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v2}, Lq1/a;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq1/e;->a:Lq1/g;

    invoke-virtual {v1}, Lq1/a;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
