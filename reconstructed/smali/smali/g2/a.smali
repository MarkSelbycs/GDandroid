.class public Lg2/a;
.super Ljava/lang/Object;
.source "GlobalSerializeMapping.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lg2/c<",
            "+",
            "Lf2/b;",
            "*>;>;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La2/u;

    invoke-direct {v0}, La2/u;-><init>()V

    sput-object v0, Lg2/a;->a:Ljava/util/Map;

    .line 2
    new-instance v0, La2/u;

    invoke-direct {v0}, La2/u;-><init>()V

    sput-object v0, Lg2/a;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lg2/e;

    const-class v1, Ljava/time/LocalDate;

    invoke-direct {v0, v1}, Lg2/e;-><init>(Ljava/lang/Class;)V

    .line 4
    sget-object v1, Lg2/a;->a:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDate;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lg2/a;->b:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDate;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lg2/e;

    const-class v1, Ljava/time/LocalDateTime;

    invoke-direct {v0, v1}, Lg2/e;-><init>(Ljava/lang/Class;)V

    .line 7
    sget-object v1, Lg2/a;->a:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDateTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lg2/a;->b:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDateTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lg2/e;

    const-class v1, Ljava/time/LocalTime;

    invoke-direct {v0, v1}, Lg2/e;-><init>(Ljava/lang/Class;)V

    .line 10
    sget-object v1, Lg2/a;->a:Ljava/util/Map;

    const-class v2, Ljava/time/LocalTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lg2/a;->b:Ljava/util/Map;

    const-class v2, Ljava/time/LocalTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;)Lg2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lg2/c<",
            "+",
            "Lf2/b;",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg2/a;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg2/c;

    return-object p0
.end method
