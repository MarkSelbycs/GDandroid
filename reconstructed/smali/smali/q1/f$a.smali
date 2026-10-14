.class public final Lq1/f$a;
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

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    invoke-static {p1, p2}, Lq1/f;->u(Lq1/f;I)I

    move-result p2

    :cond_0
    return p2
.end method
