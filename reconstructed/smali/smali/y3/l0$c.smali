.class public final Ly3/l0$c;
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
        "Ly3/p0;",
        "Ld3/g$b;",
        "Ly3/p0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ly3/l0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly3/l0$c;

    invoke-direct {v0}, Ly3/l0$c;-><init>()V

    sput-object v0, Ly3/l0$c;->b:Ly3/l0$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ly3/p0;Ld3/g$b;)Ly3/p0;
    .locals 1

    .line 1
    instance-of v0, p2, Lt3/x1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lt3/x1;

    iget-object v0, p1, Ly3/p0;->a:Ld3/g;

    invoke-interface {p2, v0}, Lt3/x1;->I(Ld3/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ly3/p0;->a(Lt3/x1;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly3/p0;

    check-cast p2, Ld3/g$b;

    invoke-virtual {p0, p1, p2}, Ly3/l0$c;->b(Ly3/p0;Ld3/g$b;)Ly3/p0;

    move-result-object p1

    return-object p1
.end method
