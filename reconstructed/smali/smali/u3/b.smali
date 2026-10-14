.class public final Lu3/b;
.super Ld3/a;
.source "AndroidExceptionPreHandler.kt"

# interfaces
.implements Lt3/c0;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lt3/c0;->l:Lt3/c0$a;

    invoke-direct {p0, v0}, Ld3/a;-><init>(Ld3/g$c;)V

    .line 2
    iput-object p0, p0, Lu3/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public u(Ld3/g;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
