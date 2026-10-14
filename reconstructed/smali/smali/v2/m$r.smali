.class public final Lv2/m$r;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Ls2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/e;",
            "Lx2/a<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Ls2/e;->f(Ljava/lang/Class;)Ls2/s;

    move-result-object p1

    .line 3
    new-instance p2, Lv2/m$r$a;

    invoke-direct {p2, p0, p1}, Lv2/m$r$a;-><init>(Lv2/m$r;Ls2/s;)V

    return-object p2
.end method
