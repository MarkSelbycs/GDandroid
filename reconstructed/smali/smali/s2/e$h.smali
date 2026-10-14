.class public Ls2/e$h;
.super Ls2/s;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls2/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ls2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls2/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ly2/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e$h;->a:Ls2/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public d(Ly2/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e$h;->a:Ls2/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public e(Ls2/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/s<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e$h;->a:Ls2/s;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ls2/e$h;->a:Ls2/s;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
