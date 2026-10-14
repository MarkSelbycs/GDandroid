.class public abstract Ln3/a;
.super Ln3/c;
.source "PlatformRandom.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln3/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    invoke-virtual {p0}, Ln3/a;->e()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public abstract e()Ljava/util/Random;
.end method
