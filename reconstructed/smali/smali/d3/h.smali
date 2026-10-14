.class public final Ld3/h;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ld3/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ld3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ld3/h;

    invoke-direct {v0}, Ld3/h;-><init>()V

    sput-object v0, Ld3/h;->a:Ld3/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ld3/g$c;)Ld3/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ld3/g$b;",
            ">(",
            "Ld3/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Ld3/g$c;)Ld3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g$c<",
            "*>;)",
            "Ld3/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public m0(Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "operation"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method

.method public x(Ld3/g;)Ld3/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
