.class public Lp2/b;
.super Li2/d;
.source "TinyLog2Factory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TinyLog"

    .line 1
    invoke-direct {p0, v0}, Li2/d;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v0, Lorg/tinylog/Logger;

    invoke-virtual {p0, v0}, Li2/d;->b(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Li2/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Li2/b;"
        }
    .end annotation

    new-instance v0, Lp2/a;

    invoke-direct {v0, p1}, Lp2/a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
