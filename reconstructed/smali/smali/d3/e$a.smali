.class public final Ld3/e$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ld3/e;Ld3/g$c;)Ld3/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ld3/g$b;",
            ">(",
            "Ld3/e;",
            "Ld3/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ld3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ld3/b;

    invoke-interface {p0}, Ld3/g$b;->getKey()Ld3/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld3/b;->a(Ld3/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ld3/b;->b(Ld3/g$b;)Ld3/g$b;

    move-result-object p0

    instance-of p1, p0, Ld3/g$b;

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    sget-object v0, Ld3/e;->k:Ld3/e$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ld3/e;Ld3/g$c;)Ld3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/e;",
            "Ld3/g$c<",
            "*>;)",
            "Ld3/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ld3/b;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ld3/b;

    invoke-interface {p0}, Ld3/g$b;->getKey()Ld3/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld3/b;->a(Ld3/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ld3/b;->b(Ld3/g$b;)Ld3/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Ld3/h;->a:Ld3/h;

    :cond_0
    return-object p0

    .line 3
    :cond_1
    sget-object v0, Ld3/e;->k:Ld3/e$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Ld3/h;->a:Ld3/h;

    :cond_2
    return-object p0
.end method
