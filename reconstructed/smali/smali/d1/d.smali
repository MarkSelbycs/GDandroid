.class public final Ld1/d;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.kt"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"ConstraintTrkngWrkr\")"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ld1/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld1/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lb1/c;)Z
    .locals 0

    invoke-static {p0}, Ld1/d;->d(Lb1/c;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lb1/c;)Z
    .locals 0

    invoke-static {p0}, Ld1/d;->e(Lb1/c;)Z

    move-result p0

    return p0
.end method

.method public static final d(Lb1/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/c<",
            "Landroidx/work/c$a;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Landroidx/work/c$a;->a()Landroidx/work/c$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb1/c;->p(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final e(Lb1/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/c<",
            "Landroidx/work/c$a;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Landroidx/work/c$a;->d()Landroidx/work/c$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb1/c;->p(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
