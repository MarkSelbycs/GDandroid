.class public Lo1/f;
.super Ln1/a;
.source "BeanConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln1/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Li1/i;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    .line 1
    invoke-static {}, Li1/i;->e()Li1/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li1/i;->x(Z)Li1/i;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo1/f;-><init>(Ljava/lang/reflect/Type;Li1/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Li1/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 3
    iput-object p1, p0, Lo1/f;->a:Ljava/lang/reflect/Type;

    .line 4
    invoke-static {p1}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo1/f;->b:Ljava/lang/Class;

    .line 5
    iput-object p2, p0, Lo1/f;->c:Li1/i;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_2

    instance-of v1, p1, Li1/n;

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lh1/h;->j(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, [B

    invoke-static {p1}, Le2/p;->e([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ln1/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unsupported source type: {}"

    invoke-direct {v0, p1, v1}, Ln1/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lo1/f;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, La2/h;->c(Ljava/util/Map;)La2/h;

    move-result-object p1

    iget-object v0, p0, Lo1/f;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, La2/h;->q(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    iget-object v0, p0, Lo1/f;->b:Ljava/lang/Class;

    invoke-static {v0}, Le2/x;->E(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo1/f;->a:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lo1/f;->c:Li1/i;

    invoke-static {p1, v0, v1, v2}, Li1/c;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)Li1/c;

    move-result-object p1

    invoke-virtual {p1}, Li1/c;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lo1/f;->b:Ljava/lang/Class;

    return-object v0
.end method
