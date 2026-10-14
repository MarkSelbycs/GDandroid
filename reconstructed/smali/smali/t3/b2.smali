.class public final Lt3/b2;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Ld3/g$b;
.implements Ld3/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/g$b;",
        "Ld3/g$c<",
        "Lt3/b2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lt3/b2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/b2;

    invoke-direct {v0}, Lt3/b2;-><init>()V

    sput-object v0, Lt3/b2;->a:Lt3/b2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/g$c<",
            "*>;"
        }
    .end annotation

    return-object p0
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
