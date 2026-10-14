.class public final enum Lh1/d;
.super Ljava/lang/Enum;
.source "BeanDescCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh1/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lh1/d;

.field public static final synthetic c:[Lh1/d;


# instance fields
.field public final a:La2/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/b0<",
            "Ljava/lang/Class<",
            "*>;",
            "Lh1/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lh1/d;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh1/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh1/d;->b:Lh1/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lh1/d;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lh1/d;->c:[Lh1/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, La2/b0;

    invoke-direct {p1}, La2/b0;-><init>()V

    iput-object p1, p0, Lh1/d;->a:La2/b0;

    return-void
.end method

.method public static synthetic b(Lx1/a;Ljava/lang/Class;)Lh1/b;
    .locals 0

    invoke-static {p0, p1}, Lh1/d;->f(Lx1/a;Ljava/lang/Class;)Lh1/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lx1/a;Ljava/lang/Class;)Lh1/b;
    .locals 0

    invoke-interface {p0}, Lx1/a;->t()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh1/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lh1/d;
    .locals 1

    const-class v0, Lh1/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh1/d;

    return-object p0
.end method

.method public static values()[Lh1/d;
    .locals 3

    sget-object v0, Lh1/d;->c:[Lh1/d;

    invoke-virtual {v0}, [Lh1/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh1/d;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/Class;Lx1/a;)Lh1/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lx1/a<",
            "Lh1/b;",
            ">;)",
            "Lh1/b;"
        }
    .end annotation

    iget-object v0, p0, Lh1/d;->a:La2/b0;

    new-instance v1, Lh1/c;

    invoke-direct {v1, p2}, Lh1/c;-><init>(Lx1/a;)V

    invoke-virtual {v0, p1, v1}, La2/t;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh1/b;

    return-object p1
.end method
