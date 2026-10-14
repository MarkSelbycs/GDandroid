.class public Lj2/b;
.super Li2/a;
.source "ApacheCommonsLog.java"


# instance fields
.field public final transient b:Lorg/apache/commons/logging/Log;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, p1}, Lj2/b;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li2/a;-><init>()V

    .line 2
    iput-object p1, p0, Lj2/b;->b:Lorg/apache/commons/logging/Log;

    .line 3
    iput-object p2, p0, Lj2/b;->c:Ljava/lang/String;

    return-void
.end method
