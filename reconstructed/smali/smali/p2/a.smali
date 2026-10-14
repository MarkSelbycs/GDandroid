.class public Lp2/a;
.super Li2/a;
.source "TinyLog2.java"


# static fields
.field public static final d:Lorg/tinylog/provider/LoggingProvider;

.field public static final e:Lorg/tinylog/format/MessageFormatter;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/tinylog/provider/ProviderRegistry;->getLoggingProvider()Lorg/tinylog/provider/LoggingProvider;

    move-result-object v0

    sput-object v0, Lp2/a;->d:Lorg/tinylog/provider/LoggingProvider;

    .line 2
    new-instance v0, Lorg/tinylog/format/AdvancedMessageFormatter;

    .line 3
    invoke-static {}, Lorg/tinylog/configuration/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 4
    invoke-static {}, Lorg/tinylog/configuration/Configuration;->isEscapingEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/tinylog/format/AdvancedMessageFormatter;-><init>(Ljava/util/Locale;Z)V

    sput-object v0, Lp2/a;->e:Lorg/tinylog/format/MessageFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lp2/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Li2/a;-><init>()V

    .line 3
    iput-object p1, p0, Lp2/a;->c:Ljava/lang/String;

    .line 4
    sget-object p1, Lp2/a;->d:Lorg/tinylog/provider/LoggingProvider;

    invoke-interface {p1}, Lorg/tinylog/provider/LoggingProvider;->getMinimumLevel()Lorg/tinylog/Level;

    move-result-object p1

    invoke-virtual {p1}, Lorg/tinylog/Level;->ordinal()I

    move-result p1

    iput p1, p0, Lp2/a;->b:I

    return-void
.end method
