.class public Li1/c;
.super Ljava/lang/Object;
.source "BeanCopier.java"

# interfaces
.implements Lw1/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw1/a<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lw1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw1/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            "Li1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Source bean must be not null!"

    .line 2
    invoke-static {p1, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Target bean must be not null!"

    .line 3
    invoke-static {p2, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 5
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Li1/m;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, p4}, Li1/m;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Li1/i;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Li1/k;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, p4}, Li1/k;-><init>(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p1, Li1/n;

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Li1/p;

    check-cast p1, Li1/n;

    invoke-direct {v0, p1, p2, p3, p4}, Li1/p;-><init>(Li1/n;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Li1/g;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, p4}, Li1/g;-><init>(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/reflect/Type;Li1/i;)V

    goto :goto_0

    .line 12
    :cond_3
    new-instance v0, Li1/e;

    invoke-direct {v0, p1, p2, p3, p4}, Li1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V

    .line 13
    :goto_0
    iput-object v0, p0, Li1/c;->a:Lw1/a;

    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)Li1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;",
            "Li1/i;",
            ")",
            "Li1/c<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Li1/c;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)Li1/c;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)Li1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            "Li1/i;",
            ")",
            "Li1/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Li1/c;

    invoke-direct {v0, p0, p1, p2, p3}, Li1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Li1/c;->a:Lw1/a;

    invoke-interface {v0}, Lw1/a;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
