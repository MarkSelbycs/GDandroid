.class public final Lz0/x;
.super Ljava/lang/Object;
.source "WorkSpec.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lz0/u;)Lz0/m;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz0/m;

    iget-object v1, p0, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lz0/u;->f()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lz0/m;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
