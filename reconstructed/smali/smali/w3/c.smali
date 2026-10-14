.class public final Lw3/c;
.super Ljava/lang/Object;
.source "Distinct.kt"

# interfaces
.implements Lw3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw3/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lw3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll3/p;
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
.method public constructor <init>(Lw3/d;Ll3/l;Ll3/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/c;->a:Lw3/d;

    .line 3
    iput-object p2, p0, Lw3/c;->b:Ll3/l;

    .line 4
    iput-object p3, p0, Lw3/c;->c:Ll3/p;

    return-void
.end method


# virtual methods
.method public a(Lw3/e;Ld3/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/e<",
            "-TT;>;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm3/q;

    invoke-direct {v0}, Lm3/q;-><init>()V

    sget-object v1, Lx3/e;->a:Ly3/h0;

    iput-object v1, v0, Lm3/q;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lw3/c;->a:Lw3/d;

    new-instance v2, Lw3/c$a;

    invoke-direct {v2, p0, v0, p1}, Lw3/c$a;-><init>(Lw3/c;Lm3/q;Lw3/e;)V

    invoke-interface {v1, v2, p2}, Lw3/d;->a(Lw3/e;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
