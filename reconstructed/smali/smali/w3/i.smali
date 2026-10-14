.class public final synthetic Lw3/i;
.super Ljava/lang/Object;
.source "Distinct.kt"


# static fields
.field public static final a:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ll3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lw3/i$b;->b:Lw3/i$b;

    sput-object v0, Lw3/i;->a:Ll3/l;

    .line 2
    sget-object v0, Lw3/i$a;->b:Lw3/i$a;

    sput-object v0, Lw3/i;->b:Ll3/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lw3/d;)Lw3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw3/d<",
            "+TT;>;)",
            "Lw3/d<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lw3/i;->a:Ll3/l;

    sget-object v1, Lw3/i;->b:Ll3/p;

    invoke-static {p0, v0, v1}, Lw3/i;->b(Lw3/d;Ll3/l;Ll3/p;)Lw3/d;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lw3/d;Ll3/l;Ll3/p;)Lw3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw3/d<",
            "+TT;>;",
            "Ll3/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll3/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lw3/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lw3/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lw3/c;

    iget-object v1, v0, Lw3/c;->b:Ll3/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lw3/c;->c:Ll3/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lw3/c;

    invoke-direct {v0, p0, p1, p2}, Lw3/c;-><init>(Lw3/d;Ll3/l;Ll3/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
