.class public Lo1/d;
.super Ln1/a;
.source "AtomicLongArrayConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/d;->h(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    const-class v1, [J

    invoke-static {v1, p1}, Ln1/c;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    return-object v0
.end method
