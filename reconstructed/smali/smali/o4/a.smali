.class public Lo4/a;
.super Ljava/lang/Object;
.source "CounterSupport.java"


# static fields
.field public static b:Lo4/a;


# instance fields
.field public transient a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lm4/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo4/a;
    .locals 1

    .line 1
    sget-object v0, Lo4/a;->b:Lo4/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lo4/a;

    invoke-direct {v0}, Lo4/a;-><init>()V

    sput-object v0, Lo4/a;->b:Lo4/a;

    .line 3
    :cond_0
    sget-object v0, Lo4/a;->b:Lo4/a;

    return-object v0
.end method


# virtual methods
.method public a(Lm4/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo4/a;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/d;

    .line 3
    invoke-interface {v1, p1}, Lm4/d;->b(Lm4/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
