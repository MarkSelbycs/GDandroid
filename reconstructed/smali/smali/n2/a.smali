.class public Ln2/a;
.super Li2/a;
.source "LogTubeLog.java"


# instance fields
.field public final b:Lio/github/logtube/core/IEventLogger;


# direct methods
.method public constructor <init>(Lio/github/logtube/core/IEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li2/a;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/a;->b:Lio/github/logtube/core/IEventLogger;

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

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Ln2/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lio/github/logtube/Logtube;->getLogger(Ljava/lang/String;)Lio/github/logtube/core/IEventLogger;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/a;-><init>(Lio/github/logtube/core/IEventLogger;)V

    return-void
.end method
