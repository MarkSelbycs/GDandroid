.class public final Le4/a$a;
.super Lc4/b0;
.source "CacheInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc4/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()Lc4/t;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lokio/BufferedSource;
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    return-object v0
.end method
