.class public abstract Lf3/k;
.super Lf3/d;
.source "ContinuationImpl.kt"

# interfaces
.implements Lm3/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf3/d;",
        "Lm3/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(ILd3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lf3/d;-><init>(Ld3/d;)V

    .line 2
    iput p1, p0, Lf3/k;->d:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lf3/k;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf3/a;->y()Ld3/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lm3/r;->e(Lm3/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lf3/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
