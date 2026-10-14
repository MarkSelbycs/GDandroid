.class public final Lv2/i$b;
.super Ls2/s;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.field public final a:Lu2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv2/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu2/h;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/h<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv2/i$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ls2/s;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/i$b;->a:Lu2/h;

    .line 3
    iput-object p2, p0, Lv2/i$b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Ly2/a;)Ljava/lang/Object;
    .locals 3
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
    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v0

    sget-object v1, Ly2/b;->i:Ly2/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ly2/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lv2/i$b;->a:Lu2/h;

    invoke-interface {v0}, Lu2/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ly2/a;->e()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ly2/a;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Ly2/a;->H()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lv2/i$b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/i$c;

    if-eqz v1, :cond_2

    .line 8
    iget-boolean v2, v1, Lv2/i$c;->c:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, p1, v0}, Lv2/i$c;->a(Ly2/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ly2/a;->m0()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Ly2/a;->l()V

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Ls2/q;

    invoke-direct {v0, p1}, Ls2/q;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d(Ly2/c;Ljava/lang/Object;)V
    .locals 3
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

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ly2/c;->u()Ly2/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ly2/c;->h()Ly2/c;

    .line 3
    :try_start_0
    iget-object v0, p0, Lv2/i$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/i$c;

    .line 4
    invoke-virtual {v1, p2}, Lv2/i$c;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v1, Lv2/i$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ly2/c;->r(Ljava/lang/String;)Ly2/c;

    .line 6
    invoke-virtual {v1, p1, p2}, Lv2/i$c;->b(Ly2/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ly2/c;->l()Ly2/c;

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
