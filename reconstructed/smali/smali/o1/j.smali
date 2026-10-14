.class public Lo1/j;
.super Ln1/a;
.source "CharsetConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/j;->h(Ljava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/nio/charset/Charset;
    .locals 0

    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le2/g;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method
