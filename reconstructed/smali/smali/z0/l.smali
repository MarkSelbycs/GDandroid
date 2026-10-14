.class public final Lz0/l;
.super Ljava/lang/Object;
.source "SystemIdInfo.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lz0/m;I)Lz0/i;
    .locals 2

    const-string v0, "generationalId"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz0/i;

    invoke-virtual {p0}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lz0/m;->a()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Lz0/i;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
