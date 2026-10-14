.class public final Ly3/l0$b;
.super Lm3/l;
.source "ThreadContext.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly3/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/p<",
        "Lt3/x1<",
        "*>;",
        "Ld3/g$b;",
        "Lt3/x1<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Ly3/l0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly3/l0$b;

    invoke-direct {v0}, Ly3/l0$b;-><init>()V

    sput-object v0, Ly3/l0$b;->b:Ly3/l0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lt3/x1;Ld3/g$b;)Lt3/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/x1<",
            "*>;",
            "Ld3/g$b;",
            ")",
            "Lt3/x1<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p1, p2, Lt3/x1;

    if-eqz p1, :cond_1

    check-cast p2, Lt3/x1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/x1;

    check-cast p2, Ld3/g$b;

    invoke-virtual {p0, p1, p2}, Ly3/l0$b;->b(Lt3/x1;Ld3/g$b;)Lt3/x1;

    move-result-object p1

    return-object p1
.end method
