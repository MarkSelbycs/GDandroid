.class public Lj2/c;
.super Li2/d;
.source "ApacheCommonsLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Apache Common Logging"

    .line 1
    invoke-direct {p0, v0}, Li2/d;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {p0, v0}, Lj2/c;->b(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Li2/d;->b(Ljava/lang/Class;)V

    .line 2
    const-class p1, Lj2/c;

    invoke-virtual {p0, p1}, Li2/d;->d(Ljava/lang/Class;)Li2/b;

    return-void
.end method

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

    .line 1
    :try_start_0
    new-instance v0, Lj2/a;

    invoke-direct {v0, p1}, Lj2/a;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Lj2/b;

    invoke-direct {v0, p1}, Lj2/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
