.class public Lm2/a;
.super Li2/a;
.source "Log4j2Log.java"


# instance fields
.field public final transient b:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object p1

    invoke-direct {p0, p1}, Lm2/a;-><init>(Lorg/apache/logging/log4j/Logger;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li2/a;-><init>()V

    .line 2
    iput-object p1, p0, Lm2/a;->b:Lorg/apache/logging/log4j/Logger;

    return-void
.end method
