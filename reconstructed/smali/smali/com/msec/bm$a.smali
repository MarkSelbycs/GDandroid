.class public Lcom/msec/bm$a;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/koushikdutta/async/AsyncServer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/msec/bm$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/msec/bm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/msec/bm;->a(Lcom/koushikdutta/async/AsyncServer;)V

    return-void
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p0, p1}, Lcom/msec/bm$a;->a(Lcom/koushikdutta/async/AsyncServer;)V

    return-void
.end method
