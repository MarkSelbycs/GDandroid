.class public final Lv2/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Ls2/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/b$a;
    }
.end annotation


# instance fields
.field public final a:Lu2/c;


# direct methods
.method public constructor <init>(Lu2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/b;->a:Lu2/c;

    return-void
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 3
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
    invoke-virtual {p2}, Lx2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lu2/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lv2/b;->a:Lu2/c;

    invoke-virtual {v2, p2}, Lu2/c;->a(Lx2/a;)Lu2/h;

    move-result-object p2

    .line 7
    new-instance v2, Lv2/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lv2/b$a;-><init>(Ls2/e;Ljava/lang/reflect/Type;Ls2/s;Lu2/h;)V

    return-object v2
.end method
