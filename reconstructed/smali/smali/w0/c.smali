.class public abstract Lw0/c;
.super Ljava/lang/Object;
.source "ContraintControllers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx0/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/g<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw0/c;->a:Lx0/g;

    return-void
.end method

.method public static final synthetic a(Lw0/c;)Lx0/g;
    .locals 0

    iget-object p0, p0, Lw0/c;->a:Lx0/g;

    return-object p0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c(Lz0/u;)Z
.end method

.method public abstract d(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final e(Lz0/u;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lw0/c;->c(Lz0/u;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw0/c;->a:Lx0/g;

    invoke-virtual {p1}, Lx0/g;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/c;->d(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()Lw3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw3/d<",
            "Lv0/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw0/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/c$a;-><init>(Lw0/c;Ld3/d;)V

    invoke-static {v0}, Lw3/f;->a(Ll3/p;)Lw3/d;

    move-result-object v0

    return-object v0
.end method
