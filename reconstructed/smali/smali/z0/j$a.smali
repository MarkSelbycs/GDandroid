.class public final Lz0/j$a;
.super Ljava/lang/Object;
.source "SystemIdInfoDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lz0/j;Lz0/m;)Lz0/i;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lz0/j;->a(Lz0/j;Lz0/m;)Lz0/i;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lz0/j;Lz0/m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lz0/j;->d(Lz0/j;Lz0/m;)V

    return-void
.end method
