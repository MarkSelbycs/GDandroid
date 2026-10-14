.class public Ll2/b;
.super Li2/d;
.source "Log4jLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Log4j"

    .line 1
    invoke-direct {p0, v0}, Li2/d;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v0, Lorg/apache/log4j/Logger;

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

    new-instance v0, Ll2/a;

    invoke-direct {v0, p1}, Ll2/a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
