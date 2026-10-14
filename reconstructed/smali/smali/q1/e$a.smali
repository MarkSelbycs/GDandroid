.class public final Lq1/e$a;
.super Lq1/h;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/h<",
        "Lq1/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lq1/e$a;->c(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lq1/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lq1/e;
    .locals 1

    new-instance v0, Lq1/e;

    invoke-direct {v0, p1, p2, p3}, Lq1/e;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method
