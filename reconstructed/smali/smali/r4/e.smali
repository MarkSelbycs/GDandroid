.class public Lr4/e;
.super Lr4/t;
.source "Gauge32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/t;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lr4/t;-><init>(J)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/e;

    iget-wide v1, p0, Lr4/t;->d:J

    invoke-direct {v0, v1, v2}, Lr4/e;-><init>(J)V

    return-object v0
.end method
