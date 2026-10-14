.class public abstract Ld3/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ld3/g$b;


# instance fields
.field public final a:Ld3/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3/g$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld3/a;->a:Ld3/g$c;

    return-void
.end method


# virtual methods
.method public c(Ld3/g$c;)Ld3/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ld3/g$b;",
            ">(",
            "Ld3/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld3/g$b$a;->b(Ld3/g$b;Ld3/g$c;)Ld3/g$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ld3/g$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/g$c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ld3/a;->a:Ld3/g$c;

    return-object v0
.end method

.method public j(Ld3/g$c;)Ld3/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g$c<",
            "*>;)",
            "Ld3/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld3/g$b$a;->c(Ld3/g$b;Ld3/g$c;)Ld3/g;

    move-result-object p1

    return-object p1
.end method

.method public m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ll3/p<",
            "-TR;-",
            "Ld3/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ld3/g$b$a;->a(Ld3/g$b;Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Ld3/g;)Ld3/g;
    .locals 0

    invoke-static {p0, p1}, Ld3/g$b$a;->d(Ld3/g$b;Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1
.end method
