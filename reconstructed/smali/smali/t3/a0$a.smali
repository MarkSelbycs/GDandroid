.class public final Lt3/a0$a;
.super Lm3/l;
.source "CoroutineContext.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/a0;->a(Ld3/g;Ld3/g;Z)Ld3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/p<",
        "Ld3/g;",
        "Ld3/g$b;",
        "Ld3/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lt3/a0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/a0$a;

    invoke-direct {v0}, Lt3/a0$a;-><init>()V

    sput-object v0, Lt3/a0$a;->b:Lt3/a0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ld3/g;Ld3/g$b;)Ld3/g;
    .locals 1

    .line 1
    instance-of v0, p2, Lt3/z;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lt3/z;

    invoke-interface {p2}, Lt3/z;->V()Lt3/z;

    move-result-object p2

    invoke-interface {p1, p2}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1, p2}, Ld3/g;->x(Ld3/g;)Ld3/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld3/g;

    check-cast p2, Ld3/g$b;

    invoke-virtual {p0, p1, p2}, Lt3/a0$a;->b(Ld3/g;Ld3/g$b;)Ld3/g;

    move-result-object p1

    return-object p1
.end method
