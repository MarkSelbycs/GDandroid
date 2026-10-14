.class public final Lw0/b;
.super Lw0/c;
.source "ContraintControllers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Lx0/c;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lw0/c;-><init>(Lx0/g;)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lw0/b;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lw0/b;->b:I

    return v0
.end method

.method public c(Lz0/u;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lz0/u;->j:Lq0/d;

    invoke-virtual {p1}, Lq0/d;->f()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lw0/b;->g(Z)Z

    move-result p1

    return p1
.end method

.method public g(Z)Z
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
