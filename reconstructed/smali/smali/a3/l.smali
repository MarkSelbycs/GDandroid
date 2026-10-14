.class public final La3/l;
.super Ljava/lang/Object;
.source "Tuples.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)La3/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "La3/h<",
            "TA;TB;>;"
        }
    .end annotation

    new-instance v0, La3/h;

    invoke-direct {v0, p0, p1}, La3/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
