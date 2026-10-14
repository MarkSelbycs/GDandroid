.class public abstract Lb1/a$b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb1/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lb1/a;Lb1/a$e;Lb1/a$e;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "*>;",
            "Lb1/a$e;",
            "Lb1/a$e;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract b(Lb1/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract c(Lb1/a;Lb1/a$i;Lb1/a$i;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "*>;",
            "Lb1/a$i;",
            "Lb1/a$i;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract d(Lb1/a$i;Lb1/a$i;)V
.end method

.method public abstract e(Lb1/a$i;Ljava/lang/Thread;)V
.end method
