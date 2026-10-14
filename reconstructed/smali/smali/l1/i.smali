.class public Ll1/i;
.super Ljava/lang/Object;
.source "SpliteratorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;+TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll1/p;

    invoke-direct {v0, p0, p1}, Ll1/p;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method
