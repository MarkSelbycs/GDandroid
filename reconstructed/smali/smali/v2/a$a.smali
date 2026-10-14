.class public final Lv2/a$a;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Ls2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/a;
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
    .locals 2
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

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-static {p2}, Lu2/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object v0

    .line 5
    new-instance v1, Lv2/a;

    .line 6
    invoke-static {p2}, Lu2/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lv2/a;-><init>(Ls2/e;Ls2/s;Ljava/lang/Class;)V

    return-object v1
.end method
