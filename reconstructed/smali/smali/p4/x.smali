.class public Lp4/x;
.super Ljava/lang/Object;
.source "SecurityModels.java"


# static fields
.field public static b:Lp4/x;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr4/g;",
            "Lp4/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lp4/x;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a()Lp4/x;
    .locals 2

    const-class v0, Lp4/x;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lp4/x;->b:Lp4/x;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lp4/x;

    invoke-direct {v1}, Lp4/x;-><init>()V

    sput-object v1, Lp4/x;->b:Lp4/x;

    .line 3
    :cond_0
    sget-object v1, Lp4/x;->b:Lp4/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Lr4/g;)Lp4/w;
    .locals 1

    iget-object v0, p0, Lp4/x;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/w;

    return-object p1
.end method
