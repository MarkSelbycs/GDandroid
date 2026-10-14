.class public Lk4/f;
.super Ljava/lang/Object;
.source "DefaultTimeoutModel.java"

# interfaces
.implements Lk4/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)J
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    mul-long/2addr v0, p2

    return-wide v0
.end method

.method public b(IIJ)J
    .locals 0

    return-wide p3
.end method
