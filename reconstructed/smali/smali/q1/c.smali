.class public interface abstract Lq1/c;
.super Ljava/lang/Object;
.source "DateParser.java"

# interfaces
.implements Lq1/b;


# virtual methods
.method public abstract b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public abstract h(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Lq1/c;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
