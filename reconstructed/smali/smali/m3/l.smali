.class public abstract Lm3/l;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Lm3/h;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm3/h<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm3/l;->a:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lm3/l;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lm3/r;->f(Lm3/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
