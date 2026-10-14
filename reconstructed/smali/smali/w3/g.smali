.class public final synthetic Lw3/g;
.super Ljava/lang/Object;
.source "Builders.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ll3/p;)Lw3/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/p<",
            "-",
            "Lv3/q<",
            "-TT;>;-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lw3/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Lw3/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lw3/a;-><init>(Ll3/p;Ld3/g;ILv3/a;ILm3/g;)V

    return-object v7
.end method
