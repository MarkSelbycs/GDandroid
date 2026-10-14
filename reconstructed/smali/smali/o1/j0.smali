.class public Lo1/j0;
.super Ln1/a;
.source "ReferenceConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/lang/ref/Reference;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/ref/Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/ref/Reference;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/j0;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/j0;->h(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/j0;->a:Ljava/lang/Class;

    invoke-static {v0}, Le2/d0;->n(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ln1/g;->y()Ln1/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ln1/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 4
    :goto_1
    iget-object v0, p0, Lo1/j0;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_2

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_2
    const-class v1, Ljava/lang/ref/SoftReference;

    if-ne v0, v1, :cond_3

    .line 7
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo1/j0;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unsupport Reference type: {}"

    invoke-static {v1, v0}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
