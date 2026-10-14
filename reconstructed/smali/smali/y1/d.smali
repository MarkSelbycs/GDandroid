.class public Ly1/d;
.super Lv1/l;
.source "MutablePair.java"

# interfaces
.implements Ly1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/l<",
        "TK;TV;>;",
        "Ly1/a<",
        "Lv1/l<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lv1/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f()Lv1/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/l<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly1/d;->f()Lv1/l;

    move-result-object v0

    return-object v0
.end method
