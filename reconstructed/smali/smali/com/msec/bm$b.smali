.class public Lcom/msec/bm$b;
.super Ljava/util/WeakHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "Ljava/lang/Thread;",
        "Lcom/koushikdutta/async/AsyncServer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/msec/bm$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/msec/bm$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/AsyncServer;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/msec/bm;->a(Lcom/koushikdutta/async/AsyncServer;)V

    return-object p2
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Thread;

    check-cast p2, Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p0, p1, p2}, Lcom/msec/bm$b;->a(Ljava/lang/Thread;Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    return-object p1
.end method
