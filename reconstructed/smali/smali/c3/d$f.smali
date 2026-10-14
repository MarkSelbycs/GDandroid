.class public final Lc3/d$f;
.super Lc3/d$d;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc3/d$d<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc3/d<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lc3/d$d;-><init>(Lc3/d;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc3/d$d;->a()I

    move-result v0

    invoke-virtual {p0}, Lc3/d$d;->c()Lc3/d;

    move-result-object v1

    invoke-static {v1}, Lc3/d;->e(Lc3/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lc3/d$d;->a()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lc3/d$d;->e(I)V

    invoke-virtual {p0, v0}, Lc3/d$d;->f(I)V

    .line 3
    invoke-virtual {p0}, Lc3/d$d;->c()Lc3/d;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->h(Lc3/d;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc3/d$d;->b()I

    move-result v1

    aget-object v0, v0, v1

    .line 4
    invoke-virtual {p0}, Lc3/d$d;->d()V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
