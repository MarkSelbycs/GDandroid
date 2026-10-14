.class public Lo2/a;
.super Li2/a;
.source "Slf4jLog.java"


# instance fields
.field public final transient b:Lorg/slf4j/Logger;

.field public final c:Z


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

    .line 4
    invoke-static {p1}, Lo2/a;->b(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    invoke-direct {p0, p1}, Lo2/a;-><init>(Lorg/slf4j/Logger;)V

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li2/a;-><init>()V

    .line 2
    iput-object p1, p0, Lo2/a;->b:Lorg/slf4j/Logger;

    .line 3
    instance-of p1, p1, Lorg/slf4j/spi/LocationAwareLogger;

    iput-boolean p1, p0, Lo2/a;->c:Z

    return-void
.end method

.method public static b(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/slf4j/Logger;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    :goto_0
    return-object p0
.end method
