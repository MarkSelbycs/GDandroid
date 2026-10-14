.class public final Lv2/l;
.super Ls2/s;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
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
.field public final a:Ls2/e;

.field public final b:Ls2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ls2/e;Ls2/s;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/e;",
            "Ls2/s<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ls2/s;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/l;->a:Ls2/e;

    .line 3
    iput-object p2, p0, Lv2/l;->b:Ls2/s;

    .line 4
    iput-object p3, p0, Lv2/l;->c:Ljava/lang/reflect/Type;

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

    iget-object v0, p0, Lv2/l;->b:Ls2/s;

    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 1
    iget-object v0, p0, Lv2/l;->b:Ls2/s;

    .line 2
    iget-object v1, p0, Lv2/l;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, p2}, Lv2/l;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lv2/l;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v0, p0, Lv2/l;->a:Ls2/e;

    invoke-static {v1}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lv2/i$b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lv2/l;->b:Ls2/s;

    instance-of v2, v1, Lv2/i$b;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method
