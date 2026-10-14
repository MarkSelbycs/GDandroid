.class public Lp2/c;
.super Li2/a;
.source "TinyLog.java"


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


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

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lp2/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Li2/a;-><init>()V

    .line 3
    iput-object p1, p0, Lp2/c;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lorg/pmw/tinylog/Logger;->getLevel(Ljava/lang/String;)Lorg/pmw/tinylog/Level;

    move-result-object p1

    invoke-virtual {p1}, Lorg/pmw/tinylog/Level;->ordinal()I

    move-result p1

    iput p1, p0, Lp2/c;->b:I

    return-void
.end method
