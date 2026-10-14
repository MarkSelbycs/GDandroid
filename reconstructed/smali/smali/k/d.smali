.class public Lk/d;
.super Lk/b;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Lk/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b;-><init>(Lk/c;)V

    return-void
.end method


# virtual methods
.method public c(Lk/i;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/b;->c(Lk/i;)V

    .line 2
    iget v0, p1, Lk/i;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lk/i;->j:I

    return-void
.end method
