.class public final Lq1/f$c;
.super Lq1/f$i;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lq1/f$i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c(Lq1/f;I)I
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method
