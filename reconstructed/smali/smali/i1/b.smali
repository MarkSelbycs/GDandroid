.class public abstract Li1/b;
.super Ljava/lang/Object;
.source "AbsCopier.java"

# interfaces
.implements Lw1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw1/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Li1/i;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;",
            "Li1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li1/b;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Li1/b;->b:Ljava/lang/Object;

    .line 4
    sget-object p1, Li1/a;->a:Li1/a;

    invoke-static {p3, p1}, Le2/p;->d(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li1/i;

    iput-object p1, p0, Li1/b;->c:Li1/i;

    return-void
.end method
