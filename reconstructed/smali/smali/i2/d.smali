.class public abstract Li2/d;
.super Ljava/lang/Object;
.source "LogFactory.java"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Li2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li2/d;->a:Ljava/lang/String;

    .line 3
    new-instance p1, La2/u;

    invoke-direct {p1}, La2/u;-><init>()V

    iput-object p1, p0, Li2/d;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Li2/d;Ljava/lang/Object;)Li2/b;
    .locals 0

    invoke-direct {p0, p1}, Li2/d;->e(Ljava/lang/Object;)Li2/b;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Ljava/lang/Object;)Li2/b;
    .locals 0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Li2/d;->c(Ljava/lang/Class;)Li2/b;

    move-result-object p1

    return-object p1
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

    return-void
.end method

.method public abstract c(Ljava/lang/Class;)Li2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Li2/b;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Class;)Li2/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Li2/b;"
        }
    .end annotation

    iget-object v0, p0, Li2/d;->b:Ljava/util/Map;

    new-instance v1, Li2/c;

    invoke-direct {v1, p0}, Li2/c;-><init>(Li2/d;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/b;

    return-object p1
.end method
