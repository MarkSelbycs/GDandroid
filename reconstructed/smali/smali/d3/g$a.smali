.class public final Ld3/g$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/g;
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

.method public static a(Ld3/g;Ld3/g;)Ld3/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ld3/h;->a:Ld3/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ld3/g$a$a;->b:Ld3/g$a$a;

    invoke-interface {p1, p0, v0}, Ld3/g;->m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld3/g;

    :goto_0
    return-object p0
.end method
