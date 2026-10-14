.class public final Lv2/g;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Ls2/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/g$a;
    }
.end annotation


# instance fields
.field public final a:Lu2/c;

.field public final b:Z


# direct methods
.method public constructor <init>(Lu2/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/g;->a:Lu2/c;

    .line 3
    iput-boolean p2, p0, Lv2/g;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 11
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
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0}, Lu2/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lu2/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lv2/g;->b(Ls2/e;Ljava/lang/reflect/Type;)Ls2/s;

    move-result-object v7

    const/4 v2, 0x1

    .line 7
    aget-object v3, v0, v2

    invoke-static {v3}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object v9

    .line 8
    iget-object v3, p0, Lv2/g;->a:Lu2/c;

    invoke-virtual {v3, p2}, Lu2/c;->a(Lx2/a;)Lu2/h;

    move-result-object v10

    .line 9
    new-instance p2, Lv2/g$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lv2/g$a;-><init>(Lv2/g;Ls2/e;Ljava/lang/reflect/Type;Ls2/s;Ljava/lang/reflect/Type;Ls2/s;Lu2/h;)V

    return-object p2
.end method

.method public final b(Ls2/e;Ljava/lang/reflect/Type;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/e;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ls2/s<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Lv2/m;->f:Ls2/s;

    :goto_1
    return-object p1
.end method
