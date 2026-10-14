.class public final Ld3/f;
.super Ljava/lang/Object;
.source "Continuation.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ll3/p;Ljava/lang/Object;Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/p<",
            "-TR;-",
            "Ld3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ld3/d<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Le3/b;->a(Ll3/p;Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p0

    invoke-static {p0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object p0

    sget-object p1, La3/i;->a:La3/i$a;

    sget-object p1, La3/o;->a:La3/o;

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    return-void
.end method
